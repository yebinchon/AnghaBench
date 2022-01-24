#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct list_head {int dummy; } ;
struct dpaa_fq {int fq_type; int fqid; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;
typedef  enum dpaa_fq_type { ____Placeholder_dpaa_fq_type } dpaa_fq_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dpaa_fq* FUNC0 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa_fq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static struct dpaa_fq *FUNC3(struct device *dev,
				     u32 start, u32 count,
				     struct list_head *list,
				     enum dpaa_fq_type fq_type)
{
	struct dpaa_fq *dpaa_fq;
	int i;

	dpaa_fq = FUNC0(dev, count, sizeof(*dpaa_fq),
			       GFP_KERNEL);
	if (!dpaa_fq)
		return NULL;

	for (i = 0; i < count; i++) {
		dpaa_fq[i].fq_type = fq_type;
		dpaa_fq[i].fqid = start ? start + i : 0;
		FUNC2(&dpaa_fq[i].list, list);
	}

	for (i = 0; i < count; i++)
		FUNC1(dpaa_fq + i, i);

	return dpaa_fq;
}