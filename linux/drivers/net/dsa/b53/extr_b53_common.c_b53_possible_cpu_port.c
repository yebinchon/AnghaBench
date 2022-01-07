
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;





__attribute__((used)) static bool b53_possible_cpu_port(struct dsa_switch *ds, int port)
{



 switch (port) {
 case 128:
 case 7:
 case 129:
  return 1;
 }

 return 0;
}
