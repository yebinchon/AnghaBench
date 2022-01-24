#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {char const* nodename; int /*<<< orphan*/  dev; } ;
struct netfront_queue {int dummy; } ;
struct netfront_info {struct netfront_queue* queues; TYPE_2__* xbdev; TYPE_1__* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  otherend; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; scalar_t__ irq; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_queue*) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct xenbus_device*,struct netfront_queue*,unsigned int) ; 
 int FUNC6 (struct netfront_queue*,struct xenbus_transaction*,int) ; 
 int FUNC7 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xenbus_device*,int,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct xenbus_transaction,char const*,char*,char*,int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC12 (struct xenbus_transaction,int) ; 
 int FUNC13 (struct xenbus_transaction*) ; 
 int FUNC14 (struct xenbus_transaction,char const*,char*,char*) ; 
 int FUNC15 (struct netfront_info*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC16 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct netfront_info*) ; 
 int /*<<< orphan*/  xennet_max_queues ; 

__attribute__((used)) static int FUNC18(struct xenbus_device *dev,
			   struct netfront_info *info)
{
	const char *message;
	struct xenbus_transaction xbt;
	int err;
	unsigned int feature_split_evtchn;
	unsigned int i = 0;
	unsigned int max_queues = 0;
	struct netfront_queue *queue = NULL;
	unsigned int num_queues = 1;

	info->netdev->irq = 0;

	/* Check if backend supports multiple queues */
	max_queues = FUNC11(info->xbdev->otherend,
					  "multi-queue-max-queues", 1);
	num_queues = FUNC2(max_queues, xennet_max_queues);

	/* Check feature-split-event-channels */
	feature_split_evtchn = FUNC11(info->xbdev->otherend,
					"feature-split-event-channels", 0);

	/* Read mac addr. */
	err = FUNC7(dev, info->netdev->dev_addr);
	if (err) {
		FUNC8(dev, err, "parsing %s/mac", dev->nodename);
		goto out_unlocked;
	}

	FUNC3();
	if (info->queues)
		FUNC16(info);

	err = FUNC15(info, &num_queues);
	if (err < 0) {
		FUNC8(dev, err, "creating queues");
		FUNC1(info->queues);
		info->queues = NULL;
		goto out;
	}
	FUNC4();

	/* Create shared ring, alloc event channel -- for each queue */
	for (i = 0; i < num_queues; ++i) {
		queue = &info->queues[i];
		err = FUNC5(dev, queue, feature_split_evtchn);
		if (err)
			goto destroy_ring;
	}

again:
	err = FUNC13(&xbt);
	if (err) {
		FUNC8(dev, err, "starting transaction");
		goto destroy_ring;
	}

	if (FUNC9(XBT_NIL,
			  info->xbdev->otherend, "multi-queue-max-queues")) {
		/* Write the number of queues */
		err = FUNC10(xbt, dev->nodename,
				    "multi-queue-num-queues", "%u", num_queues);
		if (err) {
			message = "writing multi-queue-num-queues";
			goto abort_transaction_no_dev_fatal;
		}
	}

	if (num_queues == 1) {
		err = FUNC6(&info->queues[0], &xbt, 0); /* flat */
		if (err)
			goto abort_transaction_no_dev_fatal;
	} else {
		/* Write the keys for each queue */
		for (i = 0; i < num_queues; ++i) {
			queue = &info->queues[i];
			err = FUNC6(queue, &xbt, 1); /* hierarchical */
			if (err)
				goto abort_transaction_no_dev_fatal;
		}
	}

	/* The remaining keys are not queue-specific */
	err = FUNC10(xbt, dev->nodename, "request-rx-copy", "%u",
			    1);
	if (err) {
		message = "writing request-rx-copy";
		goto abort_transaction;
	}

	err = FUNC10(xbt, dev->nodename, "feature-rx-notify", "%d", 1);
	if (err) {
		message = "writing feature-rx-notify";
		goto abort_transaction;
	}

	err = FUNC10(xbt, dev->nodename, "feature-sg", "%d", 1);
	if (err) {
		message = "writing feature-sg";
		goto abort_transaction;
	}

	err = FUNC10(xbt, dev->nodename, "feature-gso-tcpv4", "%d", 1);
	if (err) {
		message = "writing feature-gso-tcpv4";
		goto abort_transaction;
	}

	err = FUNC14(xbt, dev->nodename, "feature-gso-tcpv6", "1");
	if (err) {
		message = "writing feature-gso-tcpv6";
		goto abort_transaction;
	}

	err = FUNC14(xbt, dev->nodename, "feature-ipv6-csum-offload",
			   "1");
	if (err) {
		message = "writing feature-ipv6-csum-offload";
		goto abort_transaction;
	}

	err = FUNC12(xbt, 0);
	if (err) {
		if (err == -EAGAIN)
			goto again;
		FUNC8(dev, err, "completing transaction");
		goto destroy_ring;
	}

	return 0;

 abort_transaction:
	FUNC8(dev, err, "%s", message);
abort_transaction_no_dev_fatal:
	FUNC12(xbt, 1);
 destroy_ring:
	FUNC17(info);
	FUNC3();
	FUNC16(info);
 out:
	FUNC4();
out_unlocked:
	FUNC0(&dev->dev);
	return err;
}