
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_mw {int dummy; } ;


 int MIC_X100_NUM_SBOX_IRQ ;
 int mic_x100_send_rdmasr_intr (struct mic_mw*,int) ;
 int mic_x100_send_sbox_intr (struct mic_mw*,int) ;

void mic_send_p2p_intr(int db, struct mic_mw *mw)
{
 int rdmasr_index;

 if (db < MIC_X100_NUM_SBOX_IRQ) {
  mic_x100_send_sbox_intr(mw, db);
 } else {
  rdmasr_index = db - MIC_X100_NUM_SBOX_IRQ;
  mic_x100_send_rdmasr_intr(mw, rdmasr_index);
 }
}
