
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nfp_rtsym_table {scalar_t__ strtab; } ;
struct nfp_rtsym_entry {int target; int menum; int island; int size_lo; scalar_t__ size_hi; int addr_lo; scalar_t__ addr_hi; int name; int type; } ;
struct nfp_rtsym {int addr; int size; int target; int domain; scalar_t__ name; int type; } ;


 int NFP_RTSYM_TARGET_EMU_CACHE ;
 int NFP_RTSYM_TARGET_LMEM ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int nfp_meid (int,int) ;

__attribute__((used)) static void
nfp_rtsym_sw_entry_init(struct nfp_rtsym_table *cache, u32 strtab_size,
   struct nfp_rtsym *sw, struct nfp_rtsym_entry *fw)
{
 sw->type = fw->type;
 sw->name = cache->strtab + le16_to_cpu(fw->name) % strtab_size;
 sw->addr = ((u64)fw->addr_hi << 32) | le32_to_cpu(fw->addr_lo);
 sw->size = ((u64)fw->size_hi << 32) | le32_to_cpu(fw->size_lo);

 switch (fw->target) {
 case 128:
  sw->target = NFP_RTSYM_TARGET_LMEM;
  break;
 case 129:
  sw->target = NFP_RTSYM_TARGET_EMU_CACHE;
  break;
 default:
  sw->target = fw->target;
  break;
 }

 if (fw->menum != 0xff)
  sw->domain = nfp_meid(fw->island, fw->menum);
 else if (fw->island != 0xff)
  sw->domain = fw->island;
 else
  sw->domain = -1;
}
