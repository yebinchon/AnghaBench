
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_2__ {int (* del_if ) (struct brcmf_if*) ;} ;


 int stub1 (struct brcmf_if*) ;

__attribute__((used)) static inline void
brcmf_proto_del_if(struct brcmf_pub *drvr, struct brcmf_if *ifp)
{
 if (!drvr->proto->del_if)
  return;
 drvr->proto->del_if(ifp);
}
