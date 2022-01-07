
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int dummy; } ;


 int memset (struct v4l2_prio_state*,int ,int) ;

void v4l2_prio_init(struct v4l2_prio_state *global)
{
 memset(global, 0, sizeof(*global));
}
