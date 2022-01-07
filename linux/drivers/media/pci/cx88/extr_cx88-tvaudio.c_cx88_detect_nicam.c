
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int AUD_NICAM_STATUS2 ;
 int cx_read (int ) ;
 int dprintk (char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cx88_detect_nicam(struct cx88_core *core)
{
 int i, j = 0;

 dprintk("start nicam autodetect.\n");

 for (i = 0; i < 6; i++) {

  j += ((cx_read(AUD_NICAM_STATUS2) & 0x02) >> 1);

  if (j == 1) {
   dprintk("nicam is detected.\n");
   return 1;
  }


  usleep_range(10000, 20000);
 }

 dprintk("nicam is not detected.\n");
 return 0;
}
