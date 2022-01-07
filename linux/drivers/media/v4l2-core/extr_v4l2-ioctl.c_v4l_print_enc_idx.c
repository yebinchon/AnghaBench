
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_enc_idx {int entries_cap; int entries; } ;


 int pr_cont (char*,int ,int ) ;

__attribute__((used)) static void v4l_print_enc_idx(const void *arg, bool write_only)
{
 const struct v4l2_enc_idx *p = arg;

 pr_cont("entries=%d, entries_cap=%d\n",
   p->entries, p->entries_cap);
}
