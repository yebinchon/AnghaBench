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
struct trace_params {int skip_ofst; int port; int skip_len; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * data; scalar_t__ invert; int /*<<< orphan*/  min_len; int /*<<< orphan*/  snap_len; } ;
struct seq_file {unsigned int private; } ;
struct adapter {int* chan_map; TYPE_1__** port; int /*<<< orphan*/  pdev_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_NPORTS ; 
 int TRACE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,struct trace_params*,unsigned int,int*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, void *v)
{
	int enabled, i;
	struct trace_params tp;
	unsigned int trcidx = (uintptr_t)seq->private & 3;
	struct adapter *adap = seq->private - trcidx;

	FUNC4(adap, &tp, trcidx, &enabled);
	if (!enabled) {
		FUNC3(seq, "tracer is disabled\n");
		return 0;
	}

	if (tp.skip_ofst * 8 >= TRACE_LEN) {
		FUNC0(adap->pdev_dev, "illegal trace pattern skip offset\n");
		return -EINVAL;
	}
	if (tp.port < 8) {
		i = adap->chan_map[tp.port & 3];
		if (i >= MAX_NPORTS) {
			FUNC0(adap->pdev_dev, "tracer %u is assigned "
				"to non-existing port\n", trcidx);
			return -EINVAL;
		}
		FUNC1(seq, "tracer is capturing %s %s, ",
			   adap->port[i]->name, tp.port < 4 ? "Rx" : "Tx");
	} else
		FUNC1(seq, "tracer is capturing loopback %d, ",
			   tp.port - 8);
	FUNC1(seq, "snap length: %u, min length: %u\n", tp.snap_len,
		   tp.min_len);
	FUNC1(seq, "packets captured %smatch filter\n",
		   tp.invert ? "do not " : "");

	if (tp.skip_ofst) {
		FUNC3(seq, "filter pattern: ");
		for (i = 0; i < tp.skip_ofst * 2; i += 2)
			FUNC1(seq, "%08x%08x", tp.data[i], tp.data[i + 1]);
		FUNC2(seq, '/');
		for (i = 0; i < tp.skip_ofst * 2; i += 2)
			FUNC1(seq, "%08x%08x", tp.mask[i], tp.mask[i + 1]);
		FUNC3(seq, "@0\n");
	}

	FUNC3(seq, "filter pattern: ");
	for (i = tp.skip_ofst * 2; i < TRACE_LEN / 4; i += 2)
		FUNC1(seq, "%08x%08x", tp.data[i], tp.data[i + 1]);
	FUNC2(seq, '/');
	for (i = tp.skip_ofst * 2; i < TRACE_LEN / 4; i += 2)
		FUNC1(seq, "%08x%08x", tp.mask[i], tp.mask[i + 1]);
	FUNC1(seq, "@%u\n", (tp.skip_ofst + tp.skip_len) * 8);
	return 0;
}