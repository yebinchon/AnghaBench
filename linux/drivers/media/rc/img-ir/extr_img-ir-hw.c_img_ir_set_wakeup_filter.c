
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_scancode_filter {int dummy; } ;
struct rc_dev {int dummy; } ;


 int RC_FILTER_WAKEUP ;
 int img_ir_set_filter (struct rc_dev*,int ,struct rc_scancode_filter*) ;

__attribute__((used)) static int img_ir_set_wakeup_filter(struct rc_dev *dev,
        struct rc_scancode_filter *sc_filter)
{
 return img_ir_set_filter(dev, RC_FILTER_WAKEUP, sc_filter);
}
