
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int repeat_period; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* protocols ;

__attribute__((used)) static unsigned int repeat_period(int protocol)
{
 if (protocol >= ARRAY_SIZE(protocols))
  return 100;

 return protocols[protocol].repeat_period;
}
