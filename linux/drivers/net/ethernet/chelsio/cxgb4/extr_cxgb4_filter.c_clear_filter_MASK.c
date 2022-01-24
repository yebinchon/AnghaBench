#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct port_info {int /*<<< orphan*/  viid; } ;
struct TYPE_5__ {int ovlan; int /*<<< orphan*/  lip; scalar_t__ ovlan_vld; scalar_t__ encap_vld; } ;
struct TYPE_6__ {TYPE_2__ val; scalar_t__ type; scalar_t__ hash; } ;
struct filter_entry {TYPE_3__ fs; int /*<<< orphan*/  dev; scalar_t__ smt; scalar_t__ l2t; } ;
struct TYPE_4__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct filter_entry*,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC7(struct adapter *adap, struct filter_entry *f)
{
	struct port_info *pi = FUNC5(f->dev);

	/* If the new or old filter have loopback rewriteing rules then we'll
	 * need to free any existing L2T, SMT, CLIP entries of filter
	 * rule.
	 */
	if (f->l2t)
		FUNC1(f->l2t);

	if (f->smt)
		FUNC2(f->smt);

	if (f->fs.val.encap_vld && f->fs.val.ovlan_vld)
		FUNC6(adap, pi->viid,
				       f->fs.val.ovlan & 0x1ff, 0);

	if ((f->fs.hash || FUNC3(adap->params.chip)) && f->fs.type)
		FUNC0(f->dev, (const u32 *)&f->fs.val.lip, 1);

	/* The zeroing of the filter rule below clears the filter valid,
	 * pending, locked flags, l2t pointer, etc. so it's all we need for
	 * this operation.
	 */
	FUNC4(f, 0, sizeof(*f));
}