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
struct vb2_queue {scalar_t__ type; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct hackrf_dev {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  flags; scalar_t__ sequence; struct usb_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_TRANSCEIVER_MODE ; 
 int EBUSY ; 
 int /*<<< orphan*/  RX_ON ; 
 int /*<<< orphan*/  TX_ON ; 
 scalar_t__ V4L2_BUF_TYPE_SDR_CAPTURE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hackrf_dev*) ; 
 int FUNC3 (struct hackrf_dev*,int) ; 
 int FUNC4 (struct hackrf_dev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hackrf_dev*) ; 
 int FUNC10 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hackrf_dev* FUNC15 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC16(struct vb2_queue *vq, unsigned int count)
{
	struct hackrf_dev *dev = FUNC15(vq);
	struct usb_interface *intf = dev->intf;
	int ret;
	unsigned int mode;

	FUNC1(&intf->dev, "count=%i\n", count);

	FUNC11(&dev->v4l2_lock);

	/* Allow only RX or TX, not both same time */
	if (vq->type == V4L2_BUF_TYPE_SDR_CAPTURE) {
		if (FUNC14(TX_ON, &dev->flags)) {
			ret = -EBUSY;
			goto err_hackrf_return_all_buffers;
		}

		mode = 1;
		FUNC13(RX_ON, &dev->flags);
	} else {
		if (FUNC14(RX_ON, &dev->flags)) {
			ret = -EBUSY;
			goto err_hackrf_return_all_buffers;
		}

		mode = 2;
		FUNC13(TX_ON, &dev->flags);
	}

	dev->sequence = 0;

	ret = FUNC2(dev);
	if (ret)
		goto err;

	ret = FUNC3(dev, (mode == 1));
	if (ret)
		goto err;

	ret = FUNC10(dev);
	if (ret)
		goto err;

	ret = FUNC9(dev);
	if (ret)
		goto err;

	/* start hardware streaming */
	ret = FUNC4(dev, CMD_SET_TRANSCEIVER_MODE, mode, 0, NULL, 0);
	if (ret)
		goto err;

	FUNC12(&dev->v4l2_lock);

	return 0;
err:
	FUNC7(dev);
	FUNC6(dev);
	FUNC5(dev);
	FUNC0(RX_ON, &dev->flags);
	FUNC0(TX_ON, &dev->flags);
err_hackrf_return_all_buffers:
	FUNC8(vq, VB2_BUF_STATE_QUEUED);
	FUNC12(&dev->v4l2_lock);
	FUNC1(&intf->dev, "failed=%d\n", ret);
	return ret;
}