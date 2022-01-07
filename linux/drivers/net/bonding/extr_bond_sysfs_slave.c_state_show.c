
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
typedef int ssize_t ;




 int bond_slave_state (struct slave*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t state_show(struct slave *slave, char *buf)
{
 switch (bond_slave_state(slave)) {
 case 129:
  return sprintf(buf, "active\n");
 case 128:
  return sprintf(buf, "backup\n");
 default:
  return sprintf(buf, "UNKNOWN\n");
 }
}
