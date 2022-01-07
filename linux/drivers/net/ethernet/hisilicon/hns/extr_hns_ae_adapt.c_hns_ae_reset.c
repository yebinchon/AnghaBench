
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae_vf_cb {int dsaf_dev; TYPE_1__* mac_cb; } ;
struct hnae_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;


 scalar_t__ HNAE_PORT_DEBUG ;
 struct hnae_vf_cb* hns_ae_get_vf_cb (struct hnae_handle*) ;
 int hns_mac_reset (TYPE_1__*) ;
 int hns_ppe_reset_common (int ,int ) ;

__attribute__((used)) static void hns_ae_reset(struct hnae_handle *handle)
{
 struct hnae_vf_cb *vf_cb = hns_ae_get_vf_cb(handle);

 if (vf_cb->mac_cb->mac_type == HNAE_PORT_DEBUG) {
  hns_mac_reset(vf_cb->mac_cb);
  hns_ppe_reset_common(vf_cb->dsaf_dev, 0);
 }
}
