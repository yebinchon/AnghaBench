
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct solo_dev {int dummy; } ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SOLO_MOTION_EXT_ADDR (struct solo_dev*) ;
 int cpu_to_le16 (int ) ;
 int kfree (int *) ;
 int * kmalloc (int const,int ) ;
 int solo_p2m_dma (struct solo_dev*,int,int *,scalar_t__,int const,int ,int ) ;

__attribute__((used)) static int solo_dma_vin_region(struct solo_dev *solo_dev, u32 off,
          u16 val, int reg_size)
{
 __le16 *buf;
 const int n = 64, size = n * sizeof(*buf);
 int i, ret = 0;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 for (i = 0; i < n; i++)
  buf[i] = cpu_to_le16(val);

 for (i = 0; i < reg_size; i += size) {
  ret = solo_p2m_dma(solo_dev, 1, buf,
       SOLO_MOTION_EXT_ADDR(solo_dev) + off + i,
       size, 0, 0);

  if (ret)
   break;
 }

 kfree(buf);
 return ret;
}
