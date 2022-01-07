
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlb_client_info {int dummy; } ;


 int memset (struct rlb_client_info*,int ,int) ;
 int rlb_init_table_entry_dst (struct rlb_client_info*) ;
 int rlb_init_table_entry_src (struct rlb_client_info*) ;

__attribute__((used)) static void rlb_init_table_entry(struct rlb_client_info *entry)
{
 memset(entry, 0, sizeof(struct rlb_client_info));
 rlb_init_table_entry_dst(entry);
 rlb_init_table_entry_src(entry);
}
