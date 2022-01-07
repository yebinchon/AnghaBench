
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int mac_id; scalar_t__ mac_type; scalar_t__ phy_if; struct dsaf_device* dsaf_dev; } ;
struct dsaf_device {int dummy; } ;
typedef enum dsaf_port_rate_mode { ____Placeholder_dsaf_port_rate_mode } dsaf_port_rate_mode ;


 int DSAF_PORT_RATE_1000 ;
 int DSAF_PORT_RATE_10000 ;
 scalar_t__ HNAE_PORT_SERVICE ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int hns_dsaf_port_work_rate_cfg (struct dsaf_device*,int,int) ;

void hns_dsaf_fix_mac_mode(struct hns_mac_cb *mac_cb)
{
 enum dsaf_port_rate_mode mode;
 struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
 int mac_id = mac_cb->mac_id;

 if (mac_cb->mac_type != HNAE_PORT_SERVICE)
  return;
 if (mac_cb->phy_if == PHY_INTERFACE_MODE_XGMII)
  mode = DSAF_PORT_RATE_10000;
 else
  mode = DSAF_PORT_RATE_1000;

 hns_dsaf_port_work_rate_cfg(dsaf_dev, mac_id, mode);
}
