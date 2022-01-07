
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct asic_fixed_properties {int dram_size_for_default_page_mapping; int dram_page_size; } ;
struct hl_device {int dram_default_page_mapping; int dram_supports_virtual_memory; struct asic_fixed_properties asic_prop; } ;
struct hl_ctx {scalar_t__ asid; int* dram_default_hops; struct hl_device* hdev; } ;


 scalar_t__ HL_KERNEL_ASID_ID ;
 scalar_t__ HL_PTE_SIZE ;
 int PTE_ENTRIES_IN_HOP ;
 int clear_pte (struct hl_ctx*,int) ;
 int do_div (int,int) ;
 int flush (struct hl_ctx*) ;
 int get_hop0_addr (struct hl_ctx*) ;
 int kfree (int*) ;
 int put_pte (struct hl_ctx*,int) ;

__attribute__((used)) static void dram_default_mapping_fini(struct hl_ctx *ctx)
{
 struct hl_device *hdev = ctx->hdev;
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 u64 num_of_hop3, total_hops, hop0_addr, hop1_addr, hop2_addr,
  hop2_pte_addr, hop3_pte_addr;
 int i, j;

 if ((!hdev->dram_supports_virtual_memory) ||
   (!hdev->dram_default_page_mapping) ||
   (ctx->asid == HL_KERNEL_ASID_ID))
  return;

 num_of_hop3 = prop->dram_size_for_default_page_mapping;
 do_div(num_of_hop3, prop->dram_page_size);
 do_div(num_of_hop3, PTE_ENTRIES_IN_HOP);

 hop0_addr = get_hop0_addr(ctx);

 total_hops = num_of_hop3 + 2;
 hop1_addr = ctx->dram_default_hops[total_hops - 1];
 hop2_addr = ctx->dram_default_hops[total_hops - 2];

 for (i = 0 ; i < num_of_hop3 ; i++) {
  hop3_pte_addr = ctx->dram_default_hops[i];
  for (j = 0 ; j < PTE_ENTRIES_IN_HOP ; j++) {
   clear_pte(ctx, hop3_pte_addr);
   put_pte(ctx, ctx->dram_default_hops[i]);
   hop3_pte_addr += HL_PTE_SIZE;
  }
 }

 hop2_pte_addr = hop2_addr;
 hop2_pte_addr = hop2_addr;
 for (i = 0 ; i < num_of_hop3 ; i++) {
  clear_pte(ctx, hop2_pte_addr);
  put_pte(ctx, hop2_addr);
  hop2_pte_addr += HL_PTE_SIZE;
 }

 clear_pte(ctx, hop1_addr);
 put_pte(ctx, hop1_addr);
 clear_pte(ctx, hop0_addr);

 kfree(ctx->dram_default_hops);

 flush(ctx);
}
