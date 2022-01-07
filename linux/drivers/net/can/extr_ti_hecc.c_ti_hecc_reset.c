
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ti_hecc_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int HECC_CANES ;
 int HECC_CANES_CCE ;
 int HECC_CANGIF0 ;
 int HECC_CANGIF1 ;
 int HECC_CANMC ;
 int HECC_CANMC_CCR ;
 int HECC_CANMC_SCM ;
 int HECC_CANMC_SRES ;
 int HECC_CANMD ;
 int HECC_CANME ;
 int HECC_CANRIOC ;
 int HECC_CANRIOC_EN ;
 int HECC_CANRMP ;
 int HECC_CANTA ;
 int HECC_CANTIOC ;
 int HECC_CANTIOC_EN ;
 scalar_t__ HECC_CCE_WAIT_COUNT ;
 int HECC_SET_REG ;
 scalar_t__ hecc_get_bit (struct ti_hecc_priv*,int ,int ) ;
 int hecc_set_bit (struct ti_hecc_priv*,int ,int ) ;
 int hecc_write (struct ti_hecc_priv*,int ,int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 int ti_hecc_set_btc (struct ti_hecc_priv*) ;
 int udelay (int) ;

__attribute__((used)) static void ti_hecc_reset(struct net_device *ndev)
{
 u32 cnt;
 struct ti_hecc_priv *priv = netdev_priv(ndev);

 netdev_dbg(ndev, "resetting hecc ...\n");
 hecc_set_bit(priv, HECC_CANMC, HECC_CANMC_SRES);


 hecc_set_bit(priv, HECC_CANMC, HECC_CANMC_CCR);





 cnt = HECC_CCE_WAIT_COUNT;
 while (!hecc_get_bit(priv, HECC_CANES, HECC_CANES_CCE) && cnt != 0) {
  --cnt;
  udelay(10);
 }





 ti_hecc_set_btc(priv);


 hecc_write(priv, HECC_CANMC, 0);
 cnt = HECC_CCE_WAIT_COUNT;
 while (hecc_get_bit(priv, HECC_CANES, HECC_CANES_CCE) && cnt != 0) {
  --cnt;
  udelay(10);
 }


 hecc_write(priv, HECC_CANTIOC, HECC_CANTIOC_EN);
 hecc_write(priv, HECC_CANRIOC, HECC_CANRIOC_EN);


 hecc_write(priv, HECC_CANTA, HECC_SET_REG);
 hecc_write(priv, HECC_CANRMP, HECC_SET_REG);
 hecc_write(priv, HECC_CANGIF0, HECC_SET_REG);
 hecc_write(priv, HECC_CANGIF1, HECC_SET_REG);
 hecc_write(priv, HECC_CANME, 0);
 hecc_write(priv, HECC_CANMD, 0);


 hecc_set_bit(priv, HECC_CANMC, HECC_CANMC_SCM);
}
