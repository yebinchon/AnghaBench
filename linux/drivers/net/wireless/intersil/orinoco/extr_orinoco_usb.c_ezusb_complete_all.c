
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static inline void ezusb_complete_all(struct completion *comp)
{
 complete(comp);
 complete(comp);
 complete(comp);
 complete(comp);
}
