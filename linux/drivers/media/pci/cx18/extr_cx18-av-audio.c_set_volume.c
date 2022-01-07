
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_write (struct cx18*,int,int) ;

__attribute__((used)) static void set_volume(struct cx18 *cx, int volume)
{

 int vol = volume >> 9;



 if (vol <= 23)
  vol = 0;
 else
  vol -= 23;


 cx18_av_write(cx, 0x8d4, 228 - (vol * 2));
}
