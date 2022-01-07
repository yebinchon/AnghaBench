
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
struct TYPE_2__ {int (* debugfs_create ) (struct brcmf_pub*) ;} ;


 int stub1 (struct brcmf_pub*) ;

__attribute__((used)) static inline void
brcmf_proto_debugfs_create(struct brcmf_pub *drvr)
{
 drvr->proto->debugfs_create(drvr);
}
