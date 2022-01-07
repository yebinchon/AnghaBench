
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_p2m_desc {int dummy; } ;
struct solo_dev {int dummy; } ;
typedef int dma_addr_t ;


 int solo_p2m_dma_desc (struct solo_dev*,struct solo_p2m_desc*,int ,int) ;
 int solo_p2m_fill_desc (struct solo_p2m_desc*,int,int ,int ,int ,int,int ) ;

int solo_p2m_dma_t(struct solo_dev *solo_dev, int wr,
     dma_addr_t dma_addr, u32 ext_addr, u32 size,
     int repeat, u32 ext_size)
{
 struct solo_p2m_desc desc[2];

 solo_p2m_fill_desc(&desc[1], wr, dma_addr, ext_addr, size, repeat,
      ext_size);


 return solo_p2m_dma_desc(solo_dev, desc, 0, 1);
}
