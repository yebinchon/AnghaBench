
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct firedtv {int * channel_pid; int channel_active; } ;


 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void collect_channels(struct firedtv *fdtv, int *pidc, u16 pid[])
{
 int i, n;

 for (i = 0, n = 0; i < 16; i++)
  if (test_bit(i, &fdtv->channel_active))
   pid[n++] = fdtv->channel_pid[i];
 *pidc = n;
}
