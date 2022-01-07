
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_frame {int state; } ;
struct delta_ctx {int dummy; } ;


 int DELTA_FRAME_DEC ;

int delta_recycle_default(struct delta_ctx *pctx,
     struct delta_frame *frame)
{
 frame->state &= ~DELTA_FRAME_DEC;

 return 0;
}
