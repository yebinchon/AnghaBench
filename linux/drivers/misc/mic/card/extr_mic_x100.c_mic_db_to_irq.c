
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_driver {int dummy; } ;


 int MIC_X100_NUM_SBOX_IRQ ;
 int mic_get_rdmasr_irq (int) ;
 int mic_get_sbox_irq (int) ;

int mic_db_to_irq(struct mic_driver *mdrv, int db)
{
 int rdmasr_index;





 if (db < MIC_X100_NUM_SBOX_IRQ) {
  return mic_get_sbox_irq(db);
 } else {
  rdmasr_index = db - MIC_X100_NUM_SBOX_IRQ;
  return mic_get_rdmasr_irq(rdmasr_index);
 }
}
