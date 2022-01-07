
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dummy; } ;


 int MIC_X100_NUM_SBOX_IRQ ;
 int mic_x100_send_rdmasr_intr (struct mic_device*,int) ;
 int mic_x100_send_sbox_intr (struct mic_device*,int) ;

__attribute__((used)) static void mic_x100_send_intr(struct mic_device *mdev, int doorbell)
{
 int rdmasr_db;
 if (doorbell < MIC_X100_NUM_SBOX_IRQ) {
  mic_x100_send_sbox_intr(mdev, doorbell);
 } else {
  rdmasr_db = doorbell - MIC_X100_NUM_SBOX_IRQ;
  mic_x100_send_rdmasr_intr(mdev, rdmasr_db);
 }
}
