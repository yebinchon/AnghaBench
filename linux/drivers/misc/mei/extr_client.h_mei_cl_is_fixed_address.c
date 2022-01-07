
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mei_cl {TYPE_2__* me_cl; } ;
struct TYPE_3__ {scalar_t__ fixed_address; } ;
struct TYPE_4__ {TYPE_1__ props; } ;



__attribute__((used)) static inline bool mei_cl_is_fixed_address(const struct mei_cl *cl)
{
 return cl->me_cl && cl->me_cl->props.fixed_address;
}
