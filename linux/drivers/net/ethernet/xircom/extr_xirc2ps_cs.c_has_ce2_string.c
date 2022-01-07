
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__* prod_id; } ;


 scalar_t__ strstr (scalar_t__,char*) ;

__attribute__((used)) static int
has_ce2_string(struct pcmcia_device * p_dev)
{
 if (p_dev->prod_id[2] && strstr(p_dev->prod_id[2], "CE2"))
  return 1;
 return 0;
}
