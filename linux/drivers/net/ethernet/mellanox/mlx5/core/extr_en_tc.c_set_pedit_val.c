
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pedit_headers_action {int vals; int masks; } ;


 int EOPNOTSUPP ;
 int pedit_header (int *,int ) ;

__attribute__((used)) static int set_pedit_val(u8 hdr_type, u32 mask, u32 val, u32 offset,
    struct pedit_headers_action *hdrs)
{
 u32 *curr_pmask, *curr_pval;

 curr_pmask = (u32 *)(pedit_header(&hdrs->masks, hdr_type) + offset);
 curr_pval = (u32 *)(pedit_header(&hdrs->vals, hdr_type) + offset);

 if (*curr_pmask & mask)
  goto out_err;

 *curr_pmask |= mask;
 *curr_pval |= (val & mask);

 return 0;

out_err:
 return -EOPNOTSUPP;
}
