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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct lan743x_tx {int ring_size; int ts_flags; int /*<<< orphan*/  ring_lock; TYPE_2__* adapter; struct sk_buff* overflow_skb; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  netdev; } ;
struct TYPE_3__ {int tx_flags; int nr_frags; int /*<<< orphan*/ * frags; int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int TX_TS_FLAG_ONE_STEP_SYNC ; 
 int TX_TS_FLAG_TIMESTAMPING_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct lan743x_tx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_tx*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_tx*,struct sk_buff*,int,int) ; 
 scalar_t__ FUNC5 (struct lan743x_tx*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int FUNC6 (struct lan743x_tx*) ; 
 int FUNC7 (struct lan743x_tx*,struct sk_buff*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct lan743x_tx *tx,
					 struct sk_buff *skb)
{
	int required_number_of_descriptors = 0;
	unsigned int start_frame_length = 0;
	unsigned int frame_length = 0;
	unsigned int head_length = 0;
	unsigned long irq_flags = 0;
	bool do_timestamp = false;
	bool ignore_sync = false;
	int nr_frags = 0;
	bool gso = false;
	int j;

	required_number_of_descriptors = FUNC7(tx, skb);

	FUNC14(&tx->ring_lock, irq_flags);
	if (required_number_of_descriptors >
		FUNC6(tx)) {
		if (required_number_of_descriptors > (tx->ring_size - 1)) {
			FUNC0(skb);
		} else {
			/* save to overflow buffer */
			tx->overflow_skb = skb;
			FUNC9(tx->adapter->netdev);
		}
		goto unlock;
	}

	/* space available, transmit skb  */
	if ((FUNC13(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
	    (tx->ts_flags & TX_TS_FLAG_TIMESTAMPING_ENABLED) &&
	    (FUNC1(tx->adapter))) {
		FUNC13(skb)->tx_flags |= SKBTX_IN_PROGRESS;
		do_timestamp = true;
		if (tx->ts_flags & TX_TS_FLAG_ONE_STEP_SYNC)
			ignore_sync = true;
	}
	head_length = FUNC10(skb);
	frame_length = FUNC12(skb);
	nr_frags = FUNC13(skb)->nr_frags;
	start_frame_length = frame_length;
	gso = FUNC11(skb);
	if (gso) {
		start_frame_length = FUNC8(FUNC13(skb)->gso_size,
					 (unsigned short)8);
	}

	if (FUNC5(tx,
				   skb->data, head_length,
				   start_frame_length,
				   do_timestamp,
				   skb->ip_summed == CHECKSUM_PARTIAL)) {
		FUNC0(skb);
		goto unlock;
	}

	if (gso)
		FUNC3(tx, frame_length, nr_frags);

	if (nr_frags <= 0)
		goto finish;

	for (j = 0; j < nr_frags; j++) {
		const skb_frag_t *frag = &(FUNC13(skb)->frags[j]);

		if (FUNC2(tx, frag, frame_length)) {
			/* upon error no need to call
			 *	lan743x_tx_frame_end
			 * frame assembler clean up was performed inside
			 *	lan743x_tx_frame_add_fragment
			 */
			FUNC0(skb);
			goto unlock;
		}
	}

finish:
	FUNC4(tx, skb, do_timestamp, ignore_sync);

unlock:
	FUNC15(&tx->ring_lock, irq_flags);
	return NETDEV_TX_OK;
}