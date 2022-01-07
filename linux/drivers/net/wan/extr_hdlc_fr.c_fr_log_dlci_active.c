
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ active; int exist; scalar_t__ new; } ;
struct pvc_device {TYPE_1__ state; TYPE_3__* ether; TYPE_2__* main; int dlci; int frad; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; } ;


 int netdev_info (int ,char*,int ,char*,char*,char*,char*,char*) ;

__attribute__((used)) static inline void fr_log_dlci_active(struct pvc_device *pvc)
{
 netdev_info(pvc->frad, "DLCI %d [%s%s%s]%s %s\n",
      pvc->dlci,
      pvc->main ? pvc->main->name : "",
      pvc->main && pvc->ether ? " " : "",
      pvc->ether ? pvc->ether->name : "",
      pvc->state.new ? " new" : "",
      !pvc->state.exist ? "deleted" :
      pvc->state.active ? "active" : "inactive");
}
