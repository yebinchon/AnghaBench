
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;


 int ksz9477_reset_switch (struct ksz_device*) ;

__attribute__((used)) static void ksz9477_switch_exit(struct ksz_device *dev)
{
 ksz9477_reset_switch(dev);
}
