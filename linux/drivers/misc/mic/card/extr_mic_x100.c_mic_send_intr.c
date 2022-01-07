
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_mw {int dummy; } ;
struct mic_device {struct mic_mw mmio; } ;


 int MIC_X100_MAX_DOORBELL_IDX ;
 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ;
 scalar_t__ MIC_X100_SBOX_SDBIC0 ;
 int MIC_X100_SBOX_SDBIC0_DBREQ_BIT ;
 int mic_mmio_write (struct mic_mw*,int ,scalar_t__) ;
 int wmb () ;

void mic_send_intr(struct mic_device *mdev, int doorbell)
{
 struct mic_mw *mw = &mdev->mmio;

 if (doorbell > MIC_X100_MAX_DOORBELL_IDX)
  return;

 wmb();
 mic_mmio_write(mw, MIC_X100_SBOX_SDBIC0_DBREQ_BIT,
         MIC_X100_SBOX_BASE_ADDRESS +
         (MIC_X100_SBOX_SDBIC0 + (4 * doorbell)));
}
