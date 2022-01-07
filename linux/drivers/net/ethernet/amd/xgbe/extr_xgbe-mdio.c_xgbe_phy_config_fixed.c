
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ duplex; int speed; } ;
struct TYPE_4__ {int (* get_mode ) (struct xgbe_prv_data*,int ) ;} ;
struct TYPE_5__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {TYPE_3__ phy; TYPE_2__ phy_if; int netdev; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int stub1 (struct xgbe_prv_data*,int ) ;
 int xgbe_an_disable (struct xgbe_prv_data*) ;
 int xgbe_set_mode (struct xgbe_prv_data*,int) ;

__attribute__((used)) static int xgbe_phy_config_fixed(struct xgbe_prv_data *pdata)
{
 enum xgbe_mode mode;

 netif_dbg(pdata, link, pdata->netdev, "fixed PHY configuration\n");


 xgbe_an_disable(pdata);


 mode = pdata->phy_if.phy_impl.get_mode(pdata, pdata->phy.speed);
 switch (mode) {
 case 134:
 case 133:
 case 135:
 case 131:
 case 130:
 case 128:
 case 132:
  break;
 case 129:
 default:
  return -EINVAL;
 }


 if (pdata->phy.duplex != DUPLEX_FULL)
  return -EINVAL;

 xgbe_set_mode(pdata, mode);

 return 0;
}
