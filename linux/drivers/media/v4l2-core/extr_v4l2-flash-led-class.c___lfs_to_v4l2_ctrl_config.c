
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_config {int def; int step; int max; int min; } ;
struct led_flash_setting {int val; int step; int max; int min; } ;



__attribute__((used)) static void __lfs_to_v4l2_ctrl_config(struct led_flash_setting *s,
    struct v4l2_ctrl_config *c)
{
 c->min = s->min;
 c->max = s->max;
 c->step = s->step;
 c->def = s->val;
}
