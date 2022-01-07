
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int MO_GPHST_HDSHK ;
 int MO_GPHST_MODE ;
 int MO_GPHST_MUX16 ;
 int MO_GPHST_SOFT_RST ;
 int MO_GPHST_WDTH ;
 int MO_GPHST_WSC ;
 int MO_GPHST_XFR ;
 int cx_write (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void host_setup(struct cx88_core *core)
{

 cx_write(MO_GPHST_SOFT_RST, 1);
 udelay(100);
 cx_write(MO_GPHST_SOFT_RST, 0);
 udelay(100);


 cx_write(MO_GPHST_WSC, 0x44444444U);
 cx_write(MO_GPHST_XFR, 0);
 cx_write(MO_GPHST_WDTH, 15);
 cx_write(MO_GPHST_HDSHK, 0);
 cx_write(MO_GPHST_MUX16, 0x44448888U);
 cx_write(MO_GPHST_MODE, 0);
}
