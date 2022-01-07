
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axienet_local {int dummy; } ;


 int XAE_MDIO_MCR_OFFSET ;
 int axienet_ior (struct axienet_local*,int ) ;

__attribute__((used)) static inline u32 axinet_ior_read_mcr(struct axienet_local *lp)
{
 return axienet_ior(lp, XAE_MDIO_MCR_OFFSET);
}
