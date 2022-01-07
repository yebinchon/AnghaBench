
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ind_tbl_size; int msg; } ;
union nic_mbx {TYPE_1__ rss_size; } ;
struct nicpf {TYPE_2__* hw; } ;
struct TYPE_4__ {int rss_ind_tbl_size; } ;


 int NIC_MBOX_MSG_RSS_SIZE ;
 int nic_send_msg_to_vf (struct nicpf*,int,union nic_mbx*) ;

__attribute__((used)) static void nic_send_rss_size(struct nicpf *nic, int vf)
{
 union nic_mbx mbx = {};

 mbx.rss_size.msg = NIC_MBOX_MSG_RSS_SIZE;
 mbx.rss_size.ind_tbl_size = nic->hw->rss_ind_tbl_size;
 nic_send_msg_to_vf(nic, vf, &mbx);
}
