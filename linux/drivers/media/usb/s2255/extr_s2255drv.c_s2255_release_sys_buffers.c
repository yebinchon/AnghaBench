
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* frame; } ;
struct s2255_vc {TYPE_2__ buffer; } ;
struct TYPE_3__ {int * lpvbits; } ;


 unsigned long SYS_FRAMES ;
 int vfree (int *) ;

__attribute__((used)) static int s2255_release_sys_buffers(struct s2255_vc *vc)
{
 unsigned long i;
 for (i = 0; i < SYS_FRAMES; i++) {
  vfree(vc->buffer.frame[i].lpvbits);
  vc->buffer.frame[i].lpvbits = ((void*)0);
 }
 return 0;
}
