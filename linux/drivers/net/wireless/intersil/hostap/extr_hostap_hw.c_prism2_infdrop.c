
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int DEBUG_EXTRA ;
 int HFA384X_CMDCODE_INQUIRE ;
 int HFA384X_INFO_COMMTALLIES ;
 scalar_t__ HZ ;
 int PDEBUG (int ,char*,int ) ;
 int hfa384x_cmd_callback (struct net_device*,int ,int ,int *,int ) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static void prism2_infdrop(struct net_device *dev)
{
 static unsigned long last_inquire = 0;

 PDEBUG(DEBUG_EXTRA, "%s: INFDROP event\n", dev->name);






 if (!last_inquire || time_after(jiffies, last_inquire + HZ)) {
  hfa384x_cmd_callback(dev, HFA384X_CMDCODE_INQUIRE,
         HFA384X_INFO_COMMTALLIES, ((void*)0), 0);
  last_inquire = jiffies;
 }
}
