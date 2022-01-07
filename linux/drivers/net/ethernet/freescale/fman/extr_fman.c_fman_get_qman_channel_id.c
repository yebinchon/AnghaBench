
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fman {TYPE_2__* state; } ;
struct TYPE_3__ {int major; } ;
struct TYPE_4__ {int num_of_qman_channels; int qman_channel_base; TYPE_1__ rev_info; } ;



u32 fman_get_qman_channel_id(struct fman *fman, u32 port_id)
{
 int i;

 if (fman->state->rev_info.major >= 6) {
  static const u32 port_ids[] = {
   0x30, 0x31, 0x28, 0x29, 0x2a, 0x2b,
   0x2c, 0x2d, 0x2, 0x3, 0x4, 0x5, 0x7, 0x7
  };

  for (i = 0; i < fman->state->num_of_qman_channels; i++) {
   if (port_ids[i] == port_id)
    break;
  }
 } else {
  static const u32 port_ids[] = {
   0x30, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x1,
   0x2, 0x3, 0x4, 0x5, 0x7, 0x7
  };

  for (i = 0; i < fman->state->num_of_qman_channels; i++) {
   if (port_ids[i] == port_id)
    break;
  }
 }

 if (i == fman->state->num_of_qman_channels)
  return 0;

 return fman->state->qman_channel_base + i;
}
