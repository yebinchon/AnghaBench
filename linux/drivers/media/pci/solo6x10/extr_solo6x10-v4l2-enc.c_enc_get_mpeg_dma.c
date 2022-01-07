
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int EINVAL ;
 scalar_t__ SOLO_MP4E_EXT_ADDR (struct solo_dev*) ;
 unsigned int SOLO_MP4E_EXT_SIZE (struct solo_dev*) ;
 int solo_p2m_dma_t (struct solo_dev*,int ,scalar_t__,scalar_t__,unsigned int,int ,int ) ;

__attribute__((used)) static int enc_get_mpeg_dma(struct solo_dev *solo_dev, dma_addr_t dma,
         unsigned int off, unsigned int size)
{
 int ret;

 if (off > SOLO_MP4E_EXT_SIZE(solo_dev))
  return -EINVAL;


 if (off + size <= SOLO_MP4E_EXT_SIZE(solo_dev)) {
  return solo_p2m_dma_t(solo_dev, 0, dma,
          SOLO_MP4E_EXT_ADDR(solo_dev) + off, size,
          0, 0);
 }


 ret = solo_p2m_dma_t(solo_dev, 0, dma,
        SOLO_MP4E_EXT_ADDR(solo_dev) + off,
        SOLO_MP4E_EXT_SIZE(solo_dev) - off, 0, 0);

 if (!ret) {
  ret = solo_p2m_dma_t(solo_dev, 0,
        dma + SOLO_MP4E_EXT_SIZE(solo_dev) - off,
        SOLO_MP4E_EXT_ADDR(solo_dev),
        size + off - SOLO_MP4E_EXT_SIZE(solo_dev), 0, 0);
 }

 return ret;
}
