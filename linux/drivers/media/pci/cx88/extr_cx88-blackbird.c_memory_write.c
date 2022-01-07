
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;


 int P1_MADDR0 ;
 int P1_MADDR1 ;
 int P1_MADDR2 ;
 int P1_MDATA0 ;
 int P1_MDATA1 ;
 int P1_MDATA2 ;
 int P1_MDATA3 ;
 int cx_read (int ) ;
 int cx_writeb (int ,unsigned int) ;
 int wait_ready_gpio0_bit1 (struct cx88_core*,int) ;

__attribute__((used)) static int memory_write(struct cx88_core *core, u32 address, u32 value)
{

 cx_writeb(P1_MDATA0, (unsigned int)value);
 cx_writeb(P1_MDATA1, (unsigned int)(value >> 8));
 cx_writeb(P1_MDATA2, (unsigned int)(value >> 16));
 cx_writeb(P1_MDATA3, (unsigned int)(value >> 24));
 cx_writeb(P1_MADDR2, (unsigned int)(address >> 16) | 0x40);
 cx_writeb(P1_MADDR1, (unsigned int)(address >> 8));
 cx_writeb(P1_MADDR0, (unsigned int)address);
 cx_read(P1_MDATA0);
 cx_read(P1_MADDR0);

 return wait_ready_gpio0_bit1(core, 1);
}
