
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gelic_card {TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device core; } ;



__attribute__((used)) static inline struct device *ctodev(struct gelic_card *card)
{
 return &card->dev->core;
}
