
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hinic_pf_to_mgmt {int sync_msg_lock; } ;
typedef enum mgmt_direction_type { ____Placeholder_mgmt_direction_type } mgmt_direction_type ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;


 int MSG_NO_ACK ;
 int down (int *) ;
 int send_msg_to_mgmt (struct hinic_pf_to_mgmt*,int,int ,int *,int ,int ,int,int ) ;
 int up (int *) ;

__attribute__((used)) static int msg_to_mgmt_async(struct hinic_pf_to_mgmt *pf_to_mgmt,
        enum hinic_mod_type mod, u8 cmd,
        u8 *buf_in, u16 in_size,
        enum mgmt_direction_type direction,
        u16 resp_msg_id)
{
 int err;


 down(&pf_to_mgmt->sync_msg_lock);

 err = send_msg_to_mgmt(pf_to_mgmt, mod, cmd, buf_in, in_size,
          MSG_NO_ACK, direction, resp_msg_id);

 up(&pf_to_mgmt->sync_msg_lock);
 return err;
}
