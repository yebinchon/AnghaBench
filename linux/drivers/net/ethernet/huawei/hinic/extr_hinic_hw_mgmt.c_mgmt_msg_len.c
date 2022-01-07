
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 scalar_t__ MGMT_MSG_LEN_MIN ;
 int MGMT_MSG_LEN_STEP ;
 scalar_t__ MGMT_MSG_RSVD_FOR_DEV ;

__attribute__((used)) static u16 mgmt_msg_len(u16 msg_data_len)
{

 u16 msg_len = MGMT_MSG_RSVD_FOR_DEV + sizeof(u64) + msg_data_len;

 if (msg_len > MGMT_MSG_LEN_MIN)
  msg_len = MGMT_MSG_LEN_MIN +
      ALIGN((msg_len - MGMT_MSG_LEN_MIN),
     MGMT_MSG_LEN_STEP);
 else
  msg_len = MGMT_MSG_LEN_MIN;

 return msg_len;
}
