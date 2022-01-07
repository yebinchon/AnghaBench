
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int perm_hwaddr; TYPE_1__* dev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int addr_len; } ;


 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static ssize_t perm_hwaddr_show(struct slave *slave, char *buf)
{
 return sprintf(buf, "%*phC\n",
         slave->dev->addr_len,
         slave->perm_hwaddr);
}
