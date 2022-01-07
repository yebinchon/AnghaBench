
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_dev {int dev; } ;


 int dev_put (int ) ;

__attribute__((used)) static void tap_put_tap_dev(struct tap_dev *tap)
{
 dev_put(tap->dev);
}
