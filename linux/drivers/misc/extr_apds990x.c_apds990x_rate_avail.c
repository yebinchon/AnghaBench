
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int*) ;
 int* arates_hz ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t apds990x_rate_avail(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 int i;
 int pos = 0;

 for (i = 0; i < ARRAY_SIZE(arates_hz); i++)
  pos += sprintf(buf + pos, "%d ", arates_hz[i]);
 sprintf(buf + pos - 1, "\n");
 return pos;
}
