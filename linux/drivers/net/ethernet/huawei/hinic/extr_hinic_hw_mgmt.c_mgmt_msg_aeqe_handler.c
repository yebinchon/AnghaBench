
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct hinic_recv_msg {int dummy; } ;
struct hinic_pf_to_mgmt {struct hinic_recv_msg recv_resp_msg_from_mgmt; struct hinic_recv_msg recv_msg_from_mgmt; } ;


 int DIRECTION ;
 scalar_t__ HINIC_MSG_HEADER_GET (int ,int ) ;
 scalar_t__ MGMT_DIRECT_SEND ;
 int recv_mgmt_msg_handler (struct hinic_pf_to_mgmt*,int *,struct hinic_recv_msg*) ;

__attribute__((used)) static void mgmt_msg_aeqe_handler(void *handle, void *data, u8 size)
{
 struct hinic_pf_to_mgmt *pf_to_mgmt = handle;
 struct hinic_recv_msg *recv_msg;
 u64 *header = (u64 *)data;

 recv_msg = HINIC_MSG_HEADER_GET(*header, DIRECTION) ==
     MGMT_DIRECT_SEND ?
     &pf_to_mgmt->recv_msg_from_mgmt :
     &pf_to_mgmt->recv_resp_msg_from_mgmt;

 recv_mgmt_msg_handler(pf_to_mgmt, header, recv_msg);
}
