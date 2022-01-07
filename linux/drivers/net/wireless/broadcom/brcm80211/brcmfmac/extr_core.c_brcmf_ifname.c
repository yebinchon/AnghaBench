
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_if {TYPE_1__* ndev; } ;
struct TYPE_2__ {char* name; } ;



char *brcmf_ifname(struct brcmf_if *ifp)
{
 if (!ifp)
  return "<if_null>";

 if (ifp->ndev)
  return ifp->ndev->name;

 return "<if_none>";
}
