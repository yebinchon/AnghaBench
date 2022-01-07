
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIC_X100_IRQ_BASE ;

__attribute__((used)) static inline int mic_get_sbox_irq(int db)
{
 return MIC_X100_IRQ_BASE + db;
}
