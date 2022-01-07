
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct fman_mac {TYPE_1__* cfg; } ;
struct TYPE_2__ {int max_frame_length; } ;


 int EINVAL ;
 scalar_t__ is_init_done (TYPE_1__*) ;

int tgec_cfg_max_frame_len(struct fman_mac *tgec, u16 new_val)
{
 if (is_init_done(tgec->cfg))
  return -EINVAL;

 tgec->cfg->max_frame_length = new_val;

 return 0;
}
