
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct gsc_frame {int f_width; int f_height; TYPE_1__ crop; } ;



void gsc_set_frame_size(struct gsc_frame *frame, int width, int height)
{
 frame->f_width = width;
 frame->f_height = height;
 frame->crop.width = width;
 frame->crop.height = height;
 frame->crop.left = 0;
 frame->crop.top = 0;
}
