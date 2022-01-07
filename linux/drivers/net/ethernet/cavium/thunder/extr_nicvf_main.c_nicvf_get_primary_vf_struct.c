
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ nicvf; } ;
struct nicvf {int dummy; } ;


 int NIC_MBOX_MSG_PNICVF_PTR ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void nicvf_get_primary_vf_struct(struct nicvf *nic)
{
 union nic_mbx mbx = {};

 mbx.nicvf.msg = NIC_MBOX_MSG_PNICVF_PTR;
 nicvf_send_msg_to_pf(nic, &mbx);
}
