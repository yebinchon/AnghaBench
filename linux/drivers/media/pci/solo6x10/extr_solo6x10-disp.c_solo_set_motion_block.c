
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct solo_dev {int dummy; } ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SOLO_MOTION_EXT_ADDR (struct solo_dev*) ;
 int SOLO_MOTION_SZ ;
 scalar_t__ SOLO_MOT_FLAG_AREA ;
 int SOLO_MOT_THRESH_SIZE ;
 int cpu_to_le16 (int const) ;
 int kfree (int *) ;
 int * kzalloc (unsigned int const,int ) ;
 int solo_p2m_dma (struct solo_dev*,int,int *,scalar_t__,unsigned int const,int ,int ) ;

int solo_set_motion_block(struct solo_dev *solo_dev, u8 ch,
  const u16 *thresholds)
{
 const unsigned size = sizeof(u16) * 64;
 u32 off = SOLO_MOT_FLAG_AREA + ch * SOLO_MOT_THRESH_SIZE * 2;
 __le16 *buf;
 int x, y;
 int ret = 0;

 buf = kzalloc(size, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;
 for (y = 0; y < SOLO_MOTION_SZ; y++) {
  for (x = 0; x < SOLO_MOTION_SZ; x++)
   buf[x] = cpu_to_le16(thresholds[y * SOLO_MOTION_SZ + x]);
  ret |= solo_p2m_dma(solo_dev, 1, buf,
   SOLO_MOTION_EXT_ADDR(solo_dev) + off + y * size,
   size, 0, 0);
 }
 kfree(buf);
 return ret;
}
