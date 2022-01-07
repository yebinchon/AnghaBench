
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct hns_mac_cb {int mac_id; TYPE_3__* dsaf_dev; int dev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {int dsaf_mode; TYPE_2__ ae_dev; TYPE_1__** rcb_common; } ;
struct TYPE_4__ {int max_vfn; int max_q_per_vf; } ;


 scalar_t__ DSAF_BASE_INNER_PORT_NUM ;
 int DSAF_MAX_PORT_NUM ;
 int DSAF_MODE_ENABLE ;






 int DSAF_MODE_MAX ;
 int EINVAL ;
 int dev_err (int ,char*,int ,int,...) ;

int hns_mac_get_inner_port_num(struct hns_mac_cb *mac_cb, u8 vmid, u8 *port_num)
{
 int q_num_per_vf, vf_num_per_port;
 int vm_queue_id;
 u8 tmp_port;

 if (mac_cb->dsaf_dev->dsaf_mode <= DSAF_MODE_ENABLE) {
  if (mac_cb->mac_id != DSAF_MAX_PORT_NUM) {
   dev_err(mac_cb->dev,
    "input invalid, %s mac%d vmid%d !\n",
    mac_cb->dsaf_dev->ae_dev.name,
    mac_cb->mac_id, vmid);
   return -EINVAL;
  }
 } else if (mac_cb->dsaf_dev->dsaf_mode < DSAF_MODE_MAX) {
  if (mac_cb->mac_id >= DSAF_MAX_PORT_NUM) {
   dev_err(mac_cb->dev,
    "input invalid, %s mac%d vmid%d!\n",
    mac_cb->dsaf_dev->ae_dev.name,
    mac_cb->mac_id, vmid);
   return -EINVAL;
  }
 } else {
  dev_err(mac_cb->dev, "dsaf mode invalid, %s mac%d!\n",
   mac_cb->dsaf_dev->ae_dev.name, mac_cb->mac_id);
  return -EINVAL;
 }

 if (vmid >= mac_cb->dsaf_dev->rcb_common[0]->max_vfn) {
  dev_err(mac_cb->dev, "input invalid, %s mac%d vmid%d !\n",
   mac_cb->dsaf_dev->ae_dev.name, mac_cb->mac_id, vmid);
  return -EINVAL;
 }

 q_num_per_vf = mac_cb->dsaf_dev->rcb_common[0]->max_q_per_vf;
 vf_num_per_port = mac_cb->dsaf_dev->rcb_common[0]->max_vfn;

 vm_queue_id = vmid * q_num_per_vf +
   vf_num_per_port * q_num_per_vf * mac_cb->mac_id;

 switch (mac_cb->dsaf_dev->dsaf_mode) {
 case 128:
  tmp_port = 0;
  break;
 case 134:
  tmp_port = 0;
  break;
 case 133:
 case 129:
 case 131:
 case 130:
 case 132:
 case 139:
 case 141:
 case 140:
 case 138:
 case 136:
 case 135:
 case 137:
  tmp_port = vm_queue_id;
  break;
 default:
  dev_err(mac_cb->dev, "dsaf mode invalid, %s mac%d!\n",
   mac_cb->dsaf_dev->ae_dev.name, mac_cb->mac_id);
  return -EINVAL;
 }
 tmp_port += DSAF_BASE_INNER_PORT_NUM;

 *port_num = tmp_port;

 return 0;
}
