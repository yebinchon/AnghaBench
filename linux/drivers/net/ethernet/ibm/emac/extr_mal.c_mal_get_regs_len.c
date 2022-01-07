
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mal_regs {int dummy; } ;
struct mal_instance {int dummy; } ;
struct emac_ethtool_regs_subhdr {int dummy; } ;



int mal_get_regs_len(struct mal_instance *mal)
{
 return sizeof(struct emac_ethtool_regs_subhdr) +
     sizeof(struct mal_regs);
}
