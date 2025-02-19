
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_params {int mac_mode; } ;
struct mac_driver {int (* mac_free ) (int *) ;} ;
struct TYPE_2__ {int * mac; } ;
struct hns_mac_cb {TYPE_1__ priv; int mac_id; int half_duplex; int speed; } ;


 int ENOMEM ;
 scalar_t__ MAC_SPEED_10000 ;
 scalar_t__ MAC_SPEED_FROM_MODE (int ) ;
 int hns_dsaf_fix_mac_mode (struct hns_mac_cb*) ;
 scalar_t__ hns_gmac_config (struct hns_mac_cb*,struct mac_params*) ;
 int hns_mac_adjust_link (struct hns_mac_cb*,int ,int) ;
 int hns_mac_param_get (struct mac_params*,struct hns_mac_cb*) ;
 int hns_mac_port_config_bc_en (struct hns_mac_cb*,int ,int ,int) ;
 int hns_mac_reset (struct hns_mac_cb*) ;
 scalar_t__ hns_xgmac_config (struct hns_mac_cb*,struct mac_params*) ;
 int memset (struct mac_params*,int ,int) ;
 int stub1 (int *) ;

__attribute__((used)) static int hns_mac_init_ex(struct hns_mac_cb *mac_cb)
{
 int ret;
 struct mac_params param;
 struct mac_driver *drv;

 hns_dsaf_fix_mac_mode(mac_cb);

 memset(&param, 0, sizeof(struct mac_params));
 hns_mac_param_get(&param, mac_cb);

 if (MAC_SPEED_FROM_MODE(param.mac_mode) < MAC_SPEED_10000)
  drv = (struct mac_driver *)hns_gmac_config(mac_cb, &param);
 else
  drv = (struct mac_driver *)hns_xgmac_config(mac_cb, &param);

 if (!drv)
  return -ENOMEM;

 mac_cb->priv.mac = (void *)drv;
 hns_mac_reset(mac_cb);

 hns_mac_adjust_link(mac_cb, mac_cb->speed, !mac_cb->half_duplex);

 ret = hns_mac_port_config_bc_en(mac_cb, mac_cb->mac_id, 0, 1);
 if (ret)
  goto free_mac_drv;

 return 0;

free_mac_drv:
 drv->mac_free(mac_cb->priv.mac);
 mac_cb->priv.mac = ((void*)0);

 return ret;
}
