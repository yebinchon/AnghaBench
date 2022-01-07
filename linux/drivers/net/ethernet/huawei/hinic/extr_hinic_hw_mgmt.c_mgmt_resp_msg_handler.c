
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_recv_msg {int recv_done; } ;
struct hinic_pf_to_mgmt {int dummy; } ;


 int complete (int *) ;
 int wmb () ;

__attribute__((used)) static void mgmt_resp_msg_handler(struct hinic_pf_to_mgmt *pf_to_mgmt,
      struct hinic_recv_msg *recv_msg)
{
 wmb();

 complete(&recv_msg->recv_done);
}
