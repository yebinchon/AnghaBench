
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mei_device {TYPE_1__* dr_dscr; } ;
struct TYPE_2__ {unsigned char* vaddr; } ;


 size_t DMA_DSCR_DEVICE ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static size_t mei_dma_copy_from(struct mei_device *dev, unsigned char *buf,
    u32 offset, u32 n)
{
 unsigned char *dbuf = dev->dr_dscr[DMA_DSCR_DEVICE].vaddr;

 size_t b_offset = offset << 2;
 size_t b_n = n << 2;

 memcpy(buf, dbuf + b_offset, b_n);

 return b_n;
}
