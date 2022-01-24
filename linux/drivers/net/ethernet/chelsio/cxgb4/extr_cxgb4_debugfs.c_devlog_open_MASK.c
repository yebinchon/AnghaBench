#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct inode {struct adapter* i_private; } ;
struct fw_devlog_e {scalar_t__ timestamp; int /*<<< orphan*/  seqno; } ;
struct file {int dummy; } ;
struct devlog_params {scalar_t__ start; int size; int /*<<< orphan*/  memtype; } ;
struct devlog_info {int nentries; unsigned int first; struct fw_devlog_e* log; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_memwin; struct devlog_params devlog; } ;
struct adapter {int /*<<< orphan*/  win0_lock; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  T4_MEMORY_READ ; 
 struct devlog_info* FUNC0 (struct file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devlog_seq_ops ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct adapter *adap = inode->i_private;
	struct devlog_params *dparams = &adap->params.devlog;
	struct devlog_info *dinfo;
	unsigned int index;
	u32 fseqno;
	int ret;

	/* If we don't know where the log is we can't do anything.
	 */
	if (dparams->start == 0)
		return -ENXIO;

	/* Allocate the space to read in the firmware's device log and set up
	 * for the iterated call to our display function.
	 */
	dinfo = FUNC0(file, &devlog_seq_ops,
				   sizeof(*dinfo) + dparams->size);
	if (!dinfo)
		return -ENOMEM;

	/* Record the basic log buffer information and read in the raw log.
	 */
	dinfo->nentries = (dparams->size / sizeof(struct fw_devlog_e));
	dinfo->first = 0;
	FUNC3(&adap->win0_lock);
	ret = FUNC5(adap, adap->params.drv_memwin, dparams->memtype,
			   dparams->start, dparams->size, (__be32 *)dinfo->log,
			   T4_MEMORY_READ);
	FUNC4(&adap->win0_lock);
	if (ret) {
		FUNC2(inode, file);
		return ret;
	}

	/* Find the earliest (lowest Sequence Number) log entry in the
	 * circular Device Log.
	 */
	for (fseqno = ~((u32)0), index = 0; index < dinfo->nentries; index++) {
		struct fw_devlog_e *e = &dinfo->log[index];
		__u32 seqno;

		if (e->timestamp == 0)
			continue;

		seqno = FUNC1(e->seqno);
		if (seqno < fseqno) {
			fseqno = seqno;
			dinfo->first = index;
		}
	}
	return 0;
}