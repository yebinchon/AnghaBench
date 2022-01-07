
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct mtk_mdp_frame {int width; int height; TYPE_1__ crop; } ;



__attribute__((used)) static void mtk_mdp_set_frame_size(struct mtk_mdp_frame *frame, int width,
       int height)
{
 frame->width = width;
 frame->height = height;
 frame->crop.width = width;
 frame->crop.height = height;
 frame->crop.left = 0;
 frame->crop.top = 0;
}
