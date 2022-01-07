
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; int denominator; } ;
struct venus_inst {int fps; int opb_buftype; TYPE_1__ timeperframe; int out_height; void* out_width; int height; void* width; int * fmt_cap; int * fmt_out; int hfi_codec; } ;


 int ALIGN (int ,int) ;
 int HFI_BUFFER_OUTPUT ;
 int HFI_VIDEO_CODEC_H264 ;
 int frame_height_min (struct venus_inst*) ;
 void* frame_width_min (struct venus_inst*) ;
 int * vdec_formats ;

__attribute__((used)) static void vdec_inst_init(struct venus_inst *inst)
{
 inst->hfi_codec = HFI_VIDEO_CODEC_H264;
 inst->fmt_out = &vdec_formats[6];
 inst->fmt_cap = &vdec_formats[0];
 inst->width = frame_width_min(inst);
 inst->height = ALIGN(frame_height_min(inst), 32);
 inst->out_width = frame_width_min(inst);
 inst->out_height = frame_height_min(inst);
 inst->fps = 30;
 inst->timeperframe.numerator = 1;
 inst->timeperframe.denominator = 30;
 inst->opb_buftype = HFI_BUFFER_OUTPUT;
}
