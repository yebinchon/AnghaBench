
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int tap; } ;
struct tap_dev {int dev; } ;


 int ASSERT_RTNL () ;
 int dev_hold (int ) ;
 struct tap_dev* rtnl_dereference (int ) ;

__attribute__((used)) static struct tap_dev *tap_get_tap_dev(struct tap_queue *q)
{
 struct tap_dev *tap;

 ASSERT_RTNL();
 tap = rtnl_dereference(q->tap);
 if (tap)
  dev_hold(tap->dev);

 return tap;
}
