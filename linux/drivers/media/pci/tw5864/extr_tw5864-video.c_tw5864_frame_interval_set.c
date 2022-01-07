
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tw5864_input {scalar_t__ std; int nr; scalar_t__ frame_interval; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;


 scalar_t__ STD_NTSC ;
 int TW5864_H264EN_RATE_CNTL_HI_WORD (int ,int ) ;
 int TW5864_H264EN_RATE_CNTL_LO_WORD (int ,int ) ;
 int tw_writel (int ,int) ;

__attribute__((used)) static void tw5864_frame_interval_set(struct tw5864_input *input)
{
 struct tw5864_dev *dev = input->root;
 u32 unary_framerate = 0;
 int shift = 0;
 int std_max_fps = input->std == STD_NTSC ? 30 : 25;

 for (shift = 0; shift < std_max_fps; shift += input->frame_interval)
  unary_framerate |= 0x00000001 << shift;

 tw_writel(TW5864_H264EN_RATE_CNTL_LO_WORD(input->nr, 0),
    unary_framerate >> 16);
 tw_writel(TW5864_H264EN_RATE_CNTL_HI_WORD(input->nr, 0),
    unary_framerate & 0xffff);
}
