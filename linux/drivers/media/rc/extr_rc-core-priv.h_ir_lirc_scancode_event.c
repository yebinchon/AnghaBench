
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct lirc_scancode {int dummy; } ;



__attribute__((used)) static inline void ir_lirc_scancode_event(struct rc_dev *dev,
       struct lirc_scancode *lsc) { }
