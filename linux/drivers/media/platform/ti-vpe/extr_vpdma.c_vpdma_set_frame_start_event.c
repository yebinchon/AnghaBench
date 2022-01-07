
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpdma_data {int dummy; } ;
typedef enum vpdma_frame_start_event { ____Placeholder_vpdma_frame_start_event } vpdma_frame_start_event ;
typedef enum vpdma_channel { ____Placeholder_vpdma_channel } vpdma_channel ;
struct TYPE_2__ {int cstat_offset; } ;


 int VPDMA_CSTAT_FRAME_START_MASK ;
 int VPDMA_CSTAT_FRAME_START_SHIFT ;
 TYPE_1__* chan_info ;
 int write_field_reg (struct vpdma_data*,int,int,int ,int ) ;

void vpdma_set_frame_start_event(struct vpdma_data *vpdma,
  enum vpdma_frame_start_event fs_event,
  enum vpdma_channel chan)
{
 int client_cstat = chan_info[chan].cstat_offset;

 write_field_reg(vpdma, client_cstat, fs_event,
  VPDMA_CSTAT_FRAME_START_MASK, VPDMA_CSTAT_FRAME_START_SHIFT);
}
