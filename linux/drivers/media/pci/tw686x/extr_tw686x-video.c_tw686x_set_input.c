
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tw686x_video_channel {unsigned int input; size_t ch; int dev; } ;


 int * VDMA_CHANNEL_CONFIG ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static void tw686x_set_input(struct tw686x_video_channel *vc, unsigned int i)
{
 u32 val;

 vc->input = i;

 val = reg_read(vc->dev, VDMA_CHANNEL_CONFIG[vc->ch]);
 val &= ~(0x3 << 30);
 val |= i << 30;
 reg_write(vc->dev, VDMA_CHANNEL_CONFIG[vc->ch], val);
}
