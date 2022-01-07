
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_data; int match_en; int af; int dma_ch_no; } ;
struct stmmac_tc_entry {int in_use; int is_last; int is_frag; int prio; TYPE_1__ val; scalar_t__ handle; } ;


 int memset (struct stmmac_tc_entry*,int ,int) ;

__attribute__((used)) static void tc_fill_all_pass_entry(struct stmmac_tc_entry *entry)
{
 memset(entry, 0, sizeof(*entry));
 entry->in_use = 1;
 entry->is_last = 1;
 entry->is_frag = 0;
 entry->prio = ~0x0;
 entry->handle = 0;
 entry->val.match_data = 0x0;
 entry->val.match_en = 0x0;
 entry->val.af = 1;
 entry->val.dma_ch_no = 0x0;
}
