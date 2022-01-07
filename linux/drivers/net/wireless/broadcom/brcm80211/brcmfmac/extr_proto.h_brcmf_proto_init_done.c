
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
struct TYPE_2__ {int (* init_done ) (struct brcmf_pub*) ;} ;


 int stub1 (struct brcmf_pub*) ;

__attribute__((used)) static inline int
brcmf_proto_init_done(struct brcmf_pub *drvr)
{
 if (!drvr->proto->init_done)
  return 0;
 return drvr->proto->init_done(drvr);
}
