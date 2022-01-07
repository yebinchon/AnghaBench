
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct mic_mw {int dummy; } ;
struct mic_device {struct mic_mw mmio; } ;


 scalar_t__ MIC_X100_SBOX_APICICR0 ;
 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 int mic_mmio_read (struct mic_mw*,scalar_t__) ;
 int mic_mmio_write (struct mic_mw*,int,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void mic_x100_send_sbox_intr(struct mic_device *mdev,
        int doorbell)
{
 struct mic_mw *mw = &mdev->mmio;
 u64 apic_icr_offset = MIC_X100_SBOX_APICICR0 + doorbell * 8;
 u32 apicicr_low = mic_mmio_read(mw, MIC_X100_SBOX_BASE_ADDRESS +
     apic_icr_offset);


 apicicr_low = (apicicr_low | (1 << 13));


 wmb();
 mic_mmio_write(mw, apicicr_low,
         MIC_X100_SBOX_BASE_ADDRESS + apic_icr_offset);
}
