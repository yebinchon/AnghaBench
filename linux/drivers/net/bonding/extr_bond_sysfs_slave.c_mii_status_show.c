
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int link; } ;
typedef int ssize_t ;


 char* bond_slave_link_status (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t mii_status_show(struct slave *slave, char *buf)
{
 return sprintf(buf, "%s\n", bond_slave_link_status(slave->link));
}
