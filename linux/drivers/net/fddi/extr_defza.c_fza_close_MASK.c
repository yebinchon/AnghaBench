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
typedef  scalar_t__ uint ;
struct net_device {int dummy; } ;
struct fza_private {scalar_t__ state_chg_flag; int /*<<< orphan*/ ** rx_skbuff; scalar_t__* rx_dma; int /*<<< orphan*/  bdev; int /*<<< orphan*/  name; TYPE_1__* regs; int /*<<< orphan*/  state_chg_wait; int /*<<< orphan*/  lock; scalar_t__ state; int /*<<< orphan*/  reset_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  control_a; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  FZA_CONTROL_A_SHUT ; 
 int FZA_RING_RX_SIZE ; 
 int /*<<< orphan*/  FZA_RX_BUFFER_SIZE ; 
 scalar_t__ FZA_STATE_UNINITIALIZED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fza_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC11 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct fza_private *fp = FUNC4(dev);
	unsigned long flags;
	uint state;
	long t;
	int i;

	FUNC5(dev);
	FUNC6("%s: queue stopped\n", fp->name);

	FUNC1(&fp->reset_timer);
	FUNC9(&fp->lock, flags);
	fp->state = FZA_STATE_UNINITIALIZED;
	fp->state_chg_flag = 0;
	/* Shut the interface down. */
	FUNC12(FZA_CONTROL_A_SHUT, &fp->regs->control_a);
	FUNC8(&fp->regs->control_a);			/* Synchronize. */
	FUNC10(&fp->lock, flags);

	/* DEC says SHUT needs up to 10 seconds to complete. */
	t = FUNC11(fp->state_chg_wait, fp->state_chg_flag,
			       15 * HZ);
	state = FUNC0(FUNC8(&fp->regs->status));
	if (fp->state_chg_flag == 0) {
		FUNC7("%s: SHUT timed out!, state %x\n", fp->name, state);
		return -EIO;
	}
	if (state != FZA_STATE_UNINITIALIZED) {
		FUNC7("%s: SHUT failed!, state %x\n", fp->name, state);
		return -EIO;
	}
	FUNC6("%s: SHUT: %lums elapsed\n", fp->name,
		 (15 * HZ - t) * 1000 / HZ);

	for (i = 0; i < FZA_RING_RX_SIZE; i++)
		if (fp->rx_skbuff[i]) {
			FUNC3(fp->bdev, fp->rx_dma[i],
					 FZA_RX_BUFFER_SIZE, DMA_FROM_DEVICE);
			FUNC2(fp->rx_skbuff[i]);
			fp->rx_dma[i] = 0;
			fp->rx_skbuff[i] = NULL;
		}

	return 0;
}