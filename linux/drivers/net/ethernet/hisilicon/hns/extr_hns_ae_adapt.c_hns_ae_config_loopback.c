
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_mac_cb {struct dsaf_device* dsaf_dev; } ;
struct hnae_vf_cb {int mac_cb; } ;
struct hnae_handle {int dummy; } ;
struct dsaf_device {TYPE_1__* misc_op; } ;
typedef enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_2__ {int (* cfg_serdes_loopback ) (int ,int) ;} ;


 int EINVAL ;



 struct hnae_vf_cb* hns_ae_get_vf_cb (struct hnae_handle*) ;
 struct hns_mac_cb* hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_config_mac_loopback (int ,int,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int hns_ae_config_loopback(struct hnae_handle *handle,
      enum hnae_loop loop, int en)
{
 int ret;
 struct hnae_vf_cb *vf_cb = hns_ae_get_vf_cb(handle);
 struct hns_mac_cb *mac_cb = hns_get_mac_cb(handle);
 struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;

 switch (loop) {
 case 129:
  ret = 0;
  break;
 case 128:
  ret = dsaf_dev->misc_op->cfg_serdes_loopback(vf_cb->mac_cb,
            !!en);
  break;
 case 130:
  ret = hns_mac_config_mac_loopback(vf_cb->mac_cb, loop, en);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
