
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; int denominator; } ;
struct venus_inst {int width; int out_width; int out_height; int fps; int hfi_codec; TYPE_1__ timeperframe; int height; int * fmt_out; int * fmt_cap; } ;


 int ALIGN (int,int) ;
 int HFI_VIDEO_CODEC_H264 ;
 int * venc_formats ;

__attribute__((used)) static void venc_inst_init(struct venus_inst *inst)
{
 inst->fmt_cap = &venc_formats[2];
 inst->fmt_out = &venc_formats[0];
 inst->width = 1280;
 inst->height = ALIGN(720, 32);
 inst->out_width = 1280;
 inst->out_height = 720;
 inst->fps = 15;
 inst->timeperframe.numerator = 1;
 inst->timeperframe.denominator = 15;
 inst->hfi_codec = HFI_VIDEO_CODEC_H264;
}
