
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int pr_debug (char*) ;

__attribute__((used)) static int pcmciamtd_resume(struct pcmcia_device *dev)
{
 pr_debug("EVENT_PM_SUSPEND\n");



 return 0;
}
