
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int last_change; int audiomode_manual; } ;


 int UNSET ;
 int jiffies ;

void cx88_newstation(struct cx88_core *core)
{
 core->audiomode_manual = UNSET;
 core->last_change = jiffies;
}
