
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mic_mw {int dummy; } ;
struct TYPE_2__ {int num_vectors; } ;
struct mic_device {TYPE_1__ irq_info; struct mic_mw mmio; } ;


 int MIC_X100_SBOX_BASE_ADDRESS ;
 int MIC_X100_SBOX_DBR_BITS (int) ;
 int MIC_X100_SBOX_DMA_BITS (int) ;
 int MIC_X100_SBOX_SIAC0 ;
 int MIC_X100_SBOX_SICE0 ;
 int mic_mmio_read (struct mic_mw*,int) ;
 int mic_mmio_write (struct mic_mw*,int,int) ;

__attribute__((used)) static void mic_x100_enable_interrupts(struct mic_device *mdev)
{
 u32 reg;
 struct mic_mw *mw = &mdev->mmio;
 u32 sice0 = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_SICE0;
 u32 siac0 = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_SIAC0;

 reg = mic_mmio_read(mw, sice0);
 reg |= MIC_X100_SBOX_DBR_BITS(0xf) | MIC_X100_SBOX_DMA_BITS(0xff);
 mic_mmio_write(mw, reg, sice0);





 if (mdev->irq_info.num_vectors > 1) {
  reg = mic_mmio_read(mw, siac0);
  reg |= MIC_X100_SBOX_DBR_BITS(0xf) |
   MIC_X100_SBOX_DMA_BITS(0xff);
  mic_mmio_write(mw, reg, siac0);
 }
}
