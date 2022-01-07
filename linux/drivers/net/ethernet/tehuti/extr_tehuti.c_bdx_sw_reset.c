
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdx_priv {int ndev; } ;


 int DBG (char*,int,int) ;
 int ENTER ;
 int READ_REG (struct bdx_priv*,int) ;
 int RET (int ) ;
 int TXF_WPTR_WR_PTR ;
 int WRITE_REG (struct bdx_priv*,int,int) ;
 int mdelay (int) ;
 int netdev_err (int ,char*) ;
 int regDIS_PORT ;
 int regDIS_QU ;
 int regGMAC_RXF_A ;
 int regIMR ;
 int regISR ;
 int regRDINTCM0 ;
 int regRST_PORT ;
 int regRST_QU ;
 int regTDINTCM0 ;
 int regTXD_WPTR_0 ;
 int regTXF_RPTR_3 ;

__attribute__((used)) static int bdx_sw_reset(struct bdx_priv *priv)
{
 int i;

 ENTER;


 WRITE_REG(priv, regGMAC_RXF_A, 0);
 mdelay(100);

 WRITE_REG(priv, regDIS_PORT, 1);

 WRITE_REG(priv, regDIS_QU, 1);

 for (i = 0; i < 50; i++) {
  if (READ_REG(priv, regRST_PORT) & 1)
   break;
  mdelay(10);
 }
 if (i == 50)
  netdev_err(priv->ndev, "SW reset timeout. continuing anyway\n");


 WRITE_REG(priv, regRDINTCM0, 0);
 WRITE_REG(priv, regTDINTCM0, 0);
 WRITE_REG(priv, regIMR, 0);
 READ_REG(priv, regISR);


 WRITE_REG(priv, regRST_QU, 1);

 WRITE_REG(priv, regRST_PORT, 1);

 for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
  DBG("%x = %x\n", i, READ_REG(priv, i) & TXF_WPTR_WR_PTR);
 for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
  WRITE_REG(priv, i, 0);

 WRITE_REG(priv, regDIS_PORT, 0);

 WRITE_REG(priv, regDIS_QU, 0);

 WRITE_REG(priv, regRST_QU, 0);

 WRITE_REG(priv, regRST_PORT, 0);



 for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
  DBG("%x = %x\n", i, READ_REG(priv, i) & TXF_WPTR_WR_PTR);

 RET(0);
}
