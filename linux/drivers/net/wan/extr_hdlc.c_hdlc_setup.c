
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int carrier; int state_lock; scalar_t__ open; } ;
typedef TYPE_1__ hdlc_device ;


 TYPE_1__* dev_to_hdlc (struct net_device*) ;
 int hdlc_setup_dev (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void hdlc_setup(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);

 hdlc_setup_dev(dev);
 hdlc->carrier = 1;
 hdlc->open = 0;
 spin_lock_init(&hdlc->state_lock);
}
