
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct mic_mw {int dummy; } ;
struct mic_device {struct mic_mw mmio; } ;


 int MIC_X100_BSP_INTERRUPT_VECTOR ;
 scalar_t__ MIC_X100_SBOX_APICICR7 ;
 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 int mic_mmio_write (struct mic_mw*,int,scalar_t__) ;
 int mic_x100_get_apic_id (struct mic_device*) ;
 int wmb () ;

__attribute__((used)) static void mic_x100_send_firmware_intr(struct mic_device *mdev)
{
 u32 apicicr_low;
 u64 apic_icr_offset = MIC_X100_SBOX_APICICR7;
 int vector = MIC_X100_BSP_INTERRUPT_VECTOR;
 struct mic_mw *mw = &mdev->mmio;





 apicicr_low = (vector | (1 << 13));

 mic_mmio_write(mw, mic_x100_get_apic_id(mdev),
         MIC_X100_SBOX_BASE_ADDRESS + apic_icr_offset + 4);


 wmb();
 mic_mmio_write(mw, apicicr_low,
         MIC_X100_SBOX_BASE_ADDRESS + apic_icr_offset);
}
