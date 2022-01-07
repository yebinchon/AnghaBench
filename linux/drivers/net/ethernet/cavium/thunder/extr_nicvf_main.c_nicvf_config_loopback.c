
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int vf_id; int msg; } ;
union nic_mbx {TYPE_1__ lbk; } ;
struct nicvf {int vf_id; } ;
typedef int netdev_features_t ;


 int NETIF_F_LOOPBACK ;
 int NIC_MBOX_MSG_LOOPBACK ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int nicvf_config_loopback(struct nicvf *nic,
     netdev_features_t features)
{
 union nic_mbx mbx = {};

 mbx.lbk.msg = NIC_MBOX_MSG_LOOPBACK;
 mbx.lbk.vf_id = nic->vf_id;
 mbx.lbk.enable = (features & NETIF_F_LOOPBACK) != 0;

 return nicvf_send_msg_to_pf(nic, &mbx);
}
