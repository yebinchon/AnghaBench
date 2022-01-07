
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union xpc_channel_ctl_flags {int* flags; } ;


 int XPC_MAX_NCHANNELS ;
 int XPC_MSG_CHCTL_FLAGS ;

__attribute__((used)) static inline int
xpc_any_msg_chctl_flags_set(union xpc_channel_ctl_flags *chctl)
{
 int ch_number;

 for (ch_number = 0; ch_number < XPC_MAX_NCHANNELS; ch_number++) {
  if (chctl->flags[ch_number] & XPC_MSG_CHCTL_FLAGS)
   return 1;
 }
 return 0;
}
