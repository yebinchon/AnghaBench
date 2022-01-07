
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_mw {int dummy; } ;


 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 int MIC_X100_SBOX_RDMASR0 ;
 int mic_mmio_write (struct mic_mw*,int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void mic_x100_send_rdmasr_intr(struct mic_mw *mw, int doorbell)
{
 int rdmasr_offset = MIC_X100_SBOX_RDMASR0 + (doorbell << 2);






 wmb();
 mic_mmio_write(mw, 0, MIC_X100_SBOX_BASE_ADDRESS + rdmasr_offset);
}
