
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fw_rss_ind_tbl_cmd {void* startidx; void* niqid; int iq0_to_iq2; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int cmd ;
typedef int __be32 ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_rss_ind_tbl_cmd) ;
 int FW_RSS_IND_TBL_CMD ;
 int FW_RSS_IND_TBL_CMD_IQ0_V (scalar_t__) ;
 int FW_RSS_IND_TBL_CMD_IQ1_V (scalar_t__) ;
 int FW_RSS_IND_TBL_CMD_IQ2_V (scalar_t__) ;
 int FW_RSS_IND_TBL_CMD_VIID_V (unsigned int) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_rss_ind_tbl_cmd*,int ,int) ;
 int min (int,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_rss_ind_tbl_cmd*,int,int *) ;

int t4vf_config_rss_range(struct adapter *adapter, unsigned int viid,
     int start, int n, const u16 *rspq, int nrspq)
{
 const u16 *rsp = rspq;
 const u16 *rsp_end = rspq+nrspq;
 struct fw_rss_ind_tbl_cmd cmd;




 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_RSS_IND_TBL_CMD) |
         FW_CMD_REQUEST_F |
         FW_CMD_WRITE_F |
         FW_RSS_IND_TBL_CMD_VIID_V(viid));
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));







 while (n > 0) {
  __be32 *qp = &cmd.iq0_to_iq2;
  int nq = min(n, 32);
  int ret;





  cmd.niqid = cpu_to_be16(nq);
  cmd.startidx = cpu_to_be16(start);




  start += nq;
  n -= nq;






  while (nq > 0) {






   u16 qbuf[3];
   u16 *qbp = qbuf;
   int nqbuf = min(3, nq);

   nq -= nqbuf;
   qbuf[0] = qbuf[1] = qbuf[2] = 0;
   while (nqbuf) {
    nqbuf--;
    *qbp++ = *rsp++;
    if (rsp >= rsp_end)
     rsp = rspq;
   }
   *qp++ = cpu_to_be32(FW_RSS_IND_TBL_CMD_IQ0_V(qbuf[0]) |
         FW_RSS_IND_TBL_CMD_IQ1_V(qbuf[1]) |
         FW_RSS_IND_TBL_CMD_IQ2_V(qbuf[2]));
  }





  ret = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), ((void*)0));
  if (ret)
   return ret;
 }
 return 0;
}
