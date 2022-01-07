
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct niu_classifier {int tcam_sz; int h1_init; int h2_init; scalar_t__ tcam_top; } ;
struct niu {TYPE_1__* parent; scalar_t__ port; struct niu_classifier clas; } ;
struct TYPE_2__ {int tcam_num_entries; int num_ports; } ;


 int fflp_early_init (struct niu*) ;

__attribute__((used)) static int niu_classifier_swstate_init(struct niu *np)
{
 struct niu_classifier *cp = &np->clas;

 cp->tcam_top = (u16) np->port;
 cp->tcam_sz = np->parent->tcam_num_entries / np->parent->num_ports;
 cp->h1_init = 0xffffffff;
 cp->h2_init = 0xffff;

 return fflp_early_init(np);
}
