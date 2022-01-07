
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct list_head {int dummy; } ;
struct dpaa_fq {int fq_type; int fqid; int list; } ;
struct device {int dummy; } ;
typedef enum dpaa_fq_type { ____Placeholder_dpaa_fq_type } dpaa_fq_type ;


 int GFP_KERNEL ;
 struct dpaa_fq* devm_kcalloc (struct device*,int,int,int ) ;
 int dpaa_assign_wq (struct dpaa_fq*,int) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static struct dpaa_fq *dpaa_fq_alloc(struct device *dev,
         u32 start, u32 count,
         struct list_head *list,
         enum dpaa_fq_type fq_type)
{
 struct dpaa_fq *dpaa_fq;
 int i;

 dpaa_fq = devm_kcalloc(dev, count, sizeof(*dpaa_fq),
          GFP_KERNEL);
 if (!dpaa_fq)
  return ((void*)0);

 for (i = 0; i < count; i++) {
  dpaa_fq[i].fq_type = fq_type;
  dpaa_fq[i].fqid = start ? start + i : 0;
  list_add_tail(&dpaa_fq[i].list, list);
 }

 for (i = 0; i < count; i++)
  dpaa_assign_wq(dpaa_fq + i, i);

 return dpaa_fq;
}
