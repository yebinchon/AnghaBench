
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fbd {int dma_ctrl; } ;



__attribute__((used)) static void set_dma_ctrl(struct fbd *fb_desc, u32 ctrl)
{
 fb_desc->dma_ctrl = ctrl;
}
