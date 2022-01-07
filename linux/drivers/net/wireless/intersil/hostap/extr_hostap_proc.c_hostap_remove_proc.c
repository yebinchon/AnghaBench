
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int proc; } ;
typedef TYPE_1__ local_info_t ;


 int proc_remove (int ) ;

void hostap_remove_proc(local_info_t *local)
{
 proc_remove(local->proc);
}
