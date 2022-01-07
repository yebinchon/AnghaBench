
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_and_or (struct cx18*,int,int,int) ;

__attribute__((used)) static void set_treble(struct cx18 *cx, int treble)
{

 cx18_av_and_or(cx, 0x8db, ~0x3f, 48 - (treble * 48 / 0xffff));
}
