
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ainf_volume {int data_pad; int last_data_size; int used_ebs; int vol_type; int compat; int leb_count; int highest_lnum; int vol_id; } ;


 int pr_err (char*,...) ;

void ubi_dump_av(const struct ubi_ainf_volume *av)
{
 pr_err("Volume attaching information dump:\n");
 pr_err("\tvol_id         %d\n", av->vol_id);
 pr_err("\thighest_lnum   %d\n", av->highest_lnum);
 pr_err("\tleb_count      %d\n", av->leb_count);
 pr_err("\tcompat         %d\n", av->compat);
 pr_err("\tvol_type       %d\n", av->vol_type);
 pr_err("\tused_ebs       %d\n", av->used_ebs);
 pr_err("\tlast_data_size %d\n", av->last_data_size);
 pr_err("\tdata_pad       %d\n", av->data_pad);
}
