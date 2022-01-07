
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int tcam_sz; int tcam_top; } ;
struct niu {TYPE_2__* parent; TYPE_1__ clas; } ;
struct TYPE_4__ {int num_ports; } ;



__attribute__((used)) static u16 tcam_get_index(struct niu *np, u16 idx)
{

 if (idx >= (np->clas.tcam_sz - 1))
  idx = 0;
 return np->clas.tcam_top + ((idx+1) * np->parent->num_ports);
}
