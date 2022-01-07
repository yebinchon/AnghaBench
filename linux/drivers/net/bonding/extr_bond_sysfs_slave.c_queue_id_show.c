
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int queue_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t queue_id_show(struct slave *slave, char *buf)
{
 return sprintf(buf, "%d\n", slave->queue_id);
}
