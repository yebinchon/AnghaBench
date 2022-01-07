
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev; TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_4__ {int (* set_tim ) (int ,int,int) ;} ;


 int stub1 (int ,int,int) ;

__attribute__((used)) static void hostap_set_tim(local_info_t *local, int aid, int set)
{
 if (local->func->set_tim)
  local->func->set_tim(local->dev, aid, set);
}
