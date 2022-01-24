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
struct seq_file {struct genwqe_dev* private; } ;
struct ddcb_queue {long long ddcb_max; struct ddcb* ddcb_vaddr; int /*<<< orphan*/  ddcb_next; int /*<<< orphan*/  ddcb_act; int /*<<< orphan*/  IO_QUEUE_LRW; int /*<<< orphan*/  IO_QUEUE_ERRCNTS; int /*<<< orphan*/  IO_QUEUE_WTIME; int /*<<< orphan*/  IO_QUEUE_OFFSET; int /*<<< orphan*/  IO_QUEUE_WRAP; int /*<<< orphan*/  IO_QUEUE_INITSQN; int /*<<< orphan*/  IO_QUEUE_SEGMENT; int /*<<< orphan*/  IO_QUEUE_STATUS; int /*<<< orphan*/  IO_QUEUE_CONFIG; int /*<<< orphan*/  wait_on_busy; int /*<<< orphan*/  return_on_busy; int /*<<< orphan*/  ddcbs_completed; int /*<<< orphan*/  ddcbs_max_in_flight; int /*<<< orphan*/  ddcbs_in_flight; scalar_t__ ddcb_daddr; } ;
struct genwqe_dev {int /*<<< orphan*/  irqs_processed; struct ddcb_queue queue; } ;
struct ddcb {int /*<<< orphan*/  cmd; int /*<<< orphan*/  priv_64; int /*<<< orphan*/  shi; int /*<<< orphan*/  hsi; int /*<<< orphan*/  seqnum_16; int /*<<< orphan*/  retc_16; } ;

/* Variables and functions */
 long long DDCB_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,long long,long long,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *unused)
{
	struct genwqe_dev *cd = s->private;
	unsigned int i;
	struct ddcb_queue *queue;
	struct ddcb *pddcb;

	queue = &cd->queue;
	FUNC4(s, "DDCB QUEUE:\n");
	FUNC3(s, "  ddcb_max:            %d\n"
		   "  ddcb_daddr:          %016llx - %016llx\n"
		   "  ddcb_vaddr:          %p\n"
		   "  ddcbs_in_flight:     %u\n"
		   "  ddcbs_max_in_flight: %u\n"
		   "  ddcbs_completed:     %u\n"
		   "  return_on_busy:      %u\n"
		   "  wait_on_busy:        %u\n"
		   "  irqs_processed:      %u\n",
		   queue->ddcb_max, (long long)queue->ddcb_daddr,
		   (long long)queue->ddcb_daddr +
		   (queue->ddcb_max * DDCB_LENGTH),
		   queue->ddcb_vaddr, queue->ddcbs_in_flight,
		   queue->ddcbs_max_in_flight, queue->ddcbs_completed,
		   queue->return_on_busy, queue->wait_on_busy,
		   cd->irqs_processed);

	/* Hardware State */
	FUNC3(s, "  0x%08x 0x%016llx IO_QUEUE_CONFIG\n"
		   "  0x%08x 0x%016llx IO_QUEUE_STATUS\n"
		   "  0x%08x 0x%016llx IO_QUEUE_SEGMENT\n"
		   "  0x%08x 0x%016llx IO_QUEUE_INITSQN\n"
		   "  0x%08x 0x%016llx IO_QUEUE_WRAP\n"
		   "  0x%08x 0x%016llx IO_QUEUE_OFFSET\n"
		   "  0x%08x 0x%016llx IO_QUEUE_WTIME\n"
		   "  0x%08x 0x%016llx IO_QUEUE_ERRCNTS\n"
		   "  0x%08x 0x%016llx IO_QUEUE_LRW\n",
		   queue->IO_QUEUE_CONFIG,
		   FUNC0(cd, queue->IO_QUEUE_CONFIG),
		   queue->IO_QUEUE_STATUS,
		   FUNC0(cd, queue->IO_QUEUE_STATUS),
		   queue->IO_QUEUE_SEGMENT,
		   FUNC0(cd, queue->IO_QUEUE_SEGMENT),
		   queue->IO_QUEUE_INITSQN,
		   FUNC0(cd, queue->IO_QUEUE_INITSQN),
		   queue->IO_QUEUE_WRAP,
		   FUNC0(cd, queue->IO_QUEUE_WRAP),
		   queue->IO_QUEUE_OFFSET,
		   FUNC0(cd, queue->IO_QUEUE_OFFSET),
		   queue->IO_QUEUE_WTIME,
		   FUNC0(cd, queue->IO_QUEUE_WTIME),
		   queue->IO_QUEUE_ERRCNTS,
		   FUNC0(cd, queue->IO_QUEUE_ERRCNTS),
		   queue->IO_QUEUE_LRW,
		   FUNC0(cd, queue->IO_QUEUE_LRW));

	FUNC3(s, "DDCB list (ddcb_act=%d/ddcb_next=%d):\n",
		   queue->ddcb_act, queue->ddcb_next);

	pddcb = queue->ddcb_vaddr;
	for (i = 0; i < queue->ddcb_max; i++) {
		FUNC3(s, "  %-3d: RETC=%03x SEQ=%04x HSI/SHI=%02x/%02x ",
			   i, FUNC1(pddcb->retc_16),
			   FUNC1(pddcb->seqnum_16),
			   pddcb->hsi, pddcb->shi);
		FUNC3(s, "PRIV=%06llx CMD=%02x\n",
			   FUNC2(pddcb->priv_64), pddcb->cmd);
		pddcb++;
	}
	return 0;
}