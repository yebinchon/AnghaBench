
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int CX18_ADEC_CONTROL ;
 int CX18_DEBUG_INFO (char*) ;
 int CX18_PROC_SOFT_RESET ;
 int cx18_write_reg_expect (struct cx18*,int,int ,int,int) ;

void cx18_halt_firmware(struct cx18 *cx)
{
 CX18_DEBUG_INFO("Preparing for firmware halt.\n");
 cx18_write_reg_expect(cx, 0x000F000F, CX18_PROC_SOFT_RESET,
      0x0000000F, 0x000F000F);
 cx18_write_reg_expect(cx, 0x00020002, CX18_ADEC_CONTROL,
      0x00000002, 0x00020002);
}
