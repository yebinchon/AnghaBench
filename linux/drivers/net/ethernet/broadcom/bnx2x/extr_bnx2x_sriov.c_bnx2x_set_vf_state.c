
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct set_vf_state_cookie {int state; TYPE_1__* vf; } ;
struct TYPE_2__ {int state; } ;



__attribute__((used)) static void bnx2x_set_vf_state(void *cookie)
{
 struct set_vf_state_cookie *p = (struct set_vf_state_cookie *)cookie;

 p->vf->state = p->state;
}
