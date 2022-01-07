
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ulp_iscsi_info {unsigned int llimit; unsigned int ulimit; unsigned int tagmask; unsigned int* pgsz_factor; unsigned int max_txsz; unsigned int max_rxsz; int pdev; } ;
struct TYPE_3__ {unsigned int tx_pg_size; unsigned int rx_pg_size; } ;
struct TYPE_4__ {TYPE_1__ tp; } ;
struct adapter {int name; TYPE_2__ params; int pdev; } ;


 int A_PM1_TX_CFG ;
 int A_TP_PARA_REG2 ;
 int A_TP_PARA_REG7 ;
 int A_ULPRX_ISCSI_LLIMIT ;
 int A_ULPRX_ISCSI_PSZ ;
 int A_ULPRX_ISCSI_TAGMASK ;
 int A_ULPRX_ISCSI_ULIMIT ;
 int EOPNOTSUPP ;
 unsigned int M_MAXRXDATA ;
 unsigned int M_PMMAXXFERLEN0 ;
 unsigned int M_PMMAXXFERLEN1 ;
 unsigned int M_RXCOALESCESIZE ;
 unsigned int S_MAXRXDATA ;
 unsigned int S_PMMAXXFERLEN0 ;
 unsigned int S_PMMAXXFERLEN1 ;
 unsigned int S_RXCOALESCESIZE ;


 unsigned int V_MAXRXDATA (int) ;
 void* min (unsigned int,unsigned int) ;
 int pr_info (char*,int ,unsigned int,...) ;
 unsigned int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

__attribute__((used)) static int cxgb_ulp_iscsi_ctl(struct adapter *adapter, unsigned int req,
         void *data)
{
 int i;
 int ret = 0;
 unsigned int val = 0;
 struct ulp_iscsi_info *uiip = data;

 switch (req) {
 case 129:
  uiip->pdev = adapter->pdev;
  uiip->llimit = t3_read_reg(adapter, A_ULPRX_ISCSI_LLIMIT);
  uiip->ulimit = t3_read_reg(adapter, A_ULPRX_ISCSI_ULIMIT);
  uiip->tagmask = t3_read_reg(adapter, A_ULPRX_ISCSI_TAGMASK);

  val = t3_read_reg(adapter, A_ULPRX_ISCSI_PSZ);
  for (i = 0; i < 4; i++, val >>= 8)
   uiip->pgsz_factor[i] = val & 0xFF;

  val = t3_read_reg(adapter, A_TP_PARA_REG7);
  uiip->max_txsz =
  uiip->max_rxsz = min((val >> S_PMMAXXFERLEN0)&M_PMMAXXFERLEN0,
         (val >> S_PMMAXXFERLEN1)&M_PMMAXXFERLEN1);




  val = min(adapter->params.tp.tx_pg_size,
     t3_read_reg(adapter, A_PM1_TX_CFG) >> 17);
  uiip->max_txsz = min(val, uiip->max_txsz);


  val = t3_read_reg(adapter, A_TP_PARA_REG2);
  if ((val >> S_MAXRXDATA) != 0x3f60) {
   val &= (M_RXCOALESCESIZE << S_RXCOALESCESIZE);
   val |= V_MAXRXDATA(0x3f60);
   pr_info("%s, iscsi set MaxRxData to 16224 (0x%x)\n",
    adapter->name, val);
   t3_write_reg(adapter, A_TP_PARA_REG2, val);
  }





  val = min(adapter->params.tp.rx_pg_size,
     ((t3_read_reg(adapter, A_TP_PARA_REG2)) >>
    S_MAXRXDATA) & M_MAXRXDATA);
  uiip->max_rxsz = min(val, uiip->max_rxsz);
  break;
 case 128:
  t3_write_reg(adapter, A_ULPRX_ISCSI_TAGMASK, uiip->tagmask);

  for (i = 0; i < 4; i++)
   val |= (uiip->pgsz_factor[i] & 0xF) << (8 * i);
  if (val && (val != t3_read_reg(adapter, A_ULPRX_ISCSI_PSZ))) {
   pr_info("%s, setting iscsi pgsz 0x%x, %u,%u,%u,%u\n",
    adapter->name, val, uiip->pgsz_factor[0],
    uiip->pgsz_factor[1], uiip->pgsz_factor[2],
    uiip->pgsz_factor[3]);
   t3_write_reg(adapter, A_ULPRX_ISCSI_PSZ, val);
  }
  break;
 default:
  ret = -EOPNOTSUPP;
 }
 return ret;
}
