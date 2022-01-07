
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mic_mw {int dummy; } ;
struct mic_device {struct mic_mw mmio; } ;


 int MIC_X100_SBOX_BASE_ADDRESS ;
 int MIC_X100_SBOX_RGCR ;
 int mb () ;
 int mic_mmio_read (struct mic_mw*,int) ;
 int mic_mmio_write (struct mic_mw*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void mic_x100_hw_reset(struct mic_device *mdev)
{
 u32 reset_reg;
 u32 rgcr = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_RGCR;
 struct mic_mw *mw = &mdev->mmio;


 mb();

 reset_reg = mic_mmio_read(mw, rgcr);
 reset_reg |= 0x1;
 mic_mmio_write(mw, reset_reg, rgcr);




 msleep(1000);
}
