
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;


 int MGMT_MSG_RSVD_FOR_DEV ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void prepare_mgmt_cmd(u8 *mgmt_cmd, u64 *header, u8 *msg, u16 msg_len)
{
 memset(mgmt_cmd, 0, MGMT_MSG_RSVD_FOR_DEV);

 mgmt_cmd += MGMT_MSG_RSVD_FOR_DEV;
 memcpy(mgmt_cmd, header, sizeof(*header));

 mgmt_cmd += sizeof(*header);
 memcpy(mgmt_cmd, msg, msg_len);
}
