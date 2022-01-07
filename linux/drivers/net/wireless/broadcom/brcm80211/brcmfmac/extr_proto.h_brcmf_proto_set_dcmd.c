
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct TYPE_2__ {int (* set_dcmd ) (struct brcmf_pub*,int,int ,void*,int ,int*) ;} ;


 int stub1 (struct brcmf_pub*,int,int ,void*,int ,int*) ;

__attribute__((used)) static inline int brcmf_proto_set_dcmd(struct brcmf_pub *drvr, int ifidx,
           uint cmd, void *buf, uint len,
           int *fwerr)
{
 return drvr->proto->set_dcmd(drvr, ifidx, cmd, buf, len, fwerr);
}
