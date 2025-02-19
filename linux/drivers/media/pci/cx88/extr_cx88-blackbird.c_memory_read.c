
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
 scalar_t__ cx_read (int ) ;
 int cx_writeb (int ,unsigned int) ;
 int wait_ready_gpio0_bit1 (struct cx88_core*,int) ;

__attribute__((used)) static int memory_read(struct cx88_core *core, u32 address, u32 *value)
{
 int retval;
 u32 val;


 cx_writeb(P1_MADDR2, (unsigned int)(address >> 16) & ~0xC0);
 cx_writeb(P1_MADDR1, (unsigned int)(address >> 8));
 cx_writeb(P1_MADDR0, (unsigned int)address);
 cx_read(P1_MADDR0);

 retval = wait_ready_gpio0_bit1(core, 1);

 cx_writeb(P1_MDATA3, 0);
 val = (unsigned char)cx_read(P1_MDATA3) << 24;
 cx_writeb(P1_MDATA2, 0);
 val |= (unsigned char)cx_read(P1_MDATA2) << 16;
 cx_writeb(P1_MDATA1, 0);
 val |= (unsigned char)cx_read(P1_MDATA1) << 8;
 cx_writeb(P1_MDATA0, 0);
 val |= (unsigned char)cx_read(P1_MDATA0);

 *value = val;
 return retval;
}
