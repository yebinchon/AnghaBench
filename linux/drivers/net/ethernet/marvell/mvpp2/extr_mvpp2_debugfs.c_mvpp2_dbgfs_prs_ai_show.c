
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_prs_entry* private; } ;
struct mvpp2_prs_entry {int* tcam; } ;
struct mvpp2_dbgfs_prs_entry {int tid; int priv; } ;


 int MVPP2_PRS_AI_MASK ;
 size_t MVPP2_PRS_TCAM_AI_WORD ;
 int mvpp2_prs_init_from_hw (int ,struct mvpp2_prs_entry*,int ) ;
 int seq_printf (struct seq_file*,char*,unsigned char,unsigned char) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_ai_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_prs_entry *entry = s->private;
 struct mvpp2_prs_entry pe;
 unsigned char ai, ai_mask;

 mvpp2_prs_init_from_hw(entry->priv, &pe, entry->tid);

 ai = pe.tcam[MVPP2_PRS_TCAM_AI_WORD] & MVPP2_PRS_AI_MASK;
 ai_mask = (pe.tcam[MVPP2_PRS_TCAM_AI_WORD] >> 16) & MVPP2_PRS_AI_MASK;

 seq_printf(s, "%02x %02x\n", ai, ai_mask);

 return 0;
}
