
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mute; int * ops; struct bttv* private_data; } ;
struct TYPE_3__ {int nr; } ;
struct bttv {scalar_t__ has_radio; scalar_t__ has_tea575x; TYPE_2__ tea; TYPE_1__ c; } ;


 int ENODEV ;
 int bttv_tea_ops ;
 int pr_info (char*,int ) ;
 int snd_tea575x_hw_init (TYPE_2__*) ;

__attribute__((used)) static int tea575x_init(struct bttv *btv)
{
 btv->tea.private_data = btv;
 btv->tea.ops = &bttv_tea_ops;
 if (!snd_tea575x_hw_init(&btv->tea)) {
  pr_info("%d: detected TEA575x radio\n", btv->c.nr);
  btv->tea.mute = 0;
  return 0;
 }

 btv->has_tea575x = 0;
 btv->has_radio = 0;

 return -ENODEV;
}
