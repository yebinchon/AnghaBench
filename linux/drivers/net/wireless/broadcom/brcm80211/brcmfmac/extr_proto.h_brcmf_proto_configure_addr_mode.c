
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
typedef enum proto_addr_mode { ____Placeholder_proto_addr_mode } proto_addr_mode ;
struct TYPE_2__ {int (* configure_addr_mode ) (struct brcmf_pub*,int,int) ;} ;


 int stub1 (struct brcmf_pub*,int,int) ;

__attribute__((used)) static inline void
brcmf_proto_configure_addr_mode(struct brcmf_pub *drvr, int ifidx,
    enum proto_addr_mode addr_mode)
{
 drvr->proto->configure_addr_mode(drvr, ifidx, addr_mode);
}
