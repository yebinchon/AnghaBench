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
struct inode {int dummy; } ;
struct file {struct channel_data* private_data; } ;
struct cosa_data {int nchannels; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; struct channel_data* chan; } ;
struct channel_data {scalar_t__ usage; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  setup_rx; int /*<<< orphan*/  tx_done; } ;

/* Variables and functions */
 int CARD_MINOR_BITS ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  chrdev_rx_done ; 
 int /*<<< orphan*/  chrdev_setup_rx ; 
 int /*<<< orphan*/  chrdev_tx_done ; 
 struct cosa_data* cosa_cards ; 
 int /*<<< orphan*/  cosa_chardev_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int nr_cards ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct cosa_data *cosa;
	struct channel_data *chan;
	unsigned long flags;
	int n;
	int ret = 0;

	FUNC2(&cosa_chardev_mutex);
	if ((n=FUNC1(FUNC0(file))>>CARD_MINOR_BITS)
		>= nr_cards) {
		ret = -ENODEV;
		goto out;
	}
	cosa = cosa_cards+n;

	if ((n=FUNC1(FUNC0(file))
		& ((1<<CARD_MINOR_BITS)-1)) >= cosa->nchannels) {
		ret = -ENODEV;
		goto out;
	}
	chan = cosa->chan + n;
	
	file->private_data = chan;

	FUNC4(&cosa->lock, flags);

	if (chan->usage < 0) { /* in netdev mode */
		FUNC5(&cosa->lock, flags);
		ret = -EBUSY;
		goto out;
	}
	cosa->usage++;
	chan->usage++;

	chan->tx_done = chrdev_tx_done;
	chan->setup_rx = chrdev_setup_rx;
	chan->rx_done = chrdev_rx_done;
	FUNC5(&cosa->lock, flags);
out:
	FUNC3(&cosa_chardev_mutex);
	return ret;
}