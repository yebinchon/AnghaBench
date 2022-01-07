
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel_uv {int * cached_notify_gru_mq_desc; } ;
struct TYPE_2__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {TYPE_1__ sn; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int ) ;
 int xpc_cache_remote_gru_mq_desc_uv (int *,unsigned long) ;

__attribute__((used)) static enum xp_retval
xpc_save_remote_msgqueue_pa_uv(struct xpc_channel *ch,
          unsigned long gru_mq_desc_gpa)
{
 struct xpc_channel_uv *ch_uv = &ch->sn.uv;

 DBUG_ON(ch_uv->cached_notify_gru_mq_desc == ((void*)0));
 return xpc_cache_remote_gru_mq_desc_uv(ch_uv->cached_notify_gru_mq_desc,
            gru_mq_desc_gpa);
}
