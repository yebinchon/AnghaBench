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
struct TYPE_6__ {int /*<<< orphan*/  dma_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_addr; } ;
struct tw5864_h264_frame {TYPE_3__ mv; TYPE_1__ vlc; } ;
struct tw5864_dev {size_t h264_buf_r_index; size_t h264_buf_w_index; int /*<<< orphan*/  slock; TYPE_2__* pci; struct tw5864_h264_frame* h264_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int H264_BUF_CNT ; 
 int /*<<< orphan*/  H264_MV_BUF_SIZE ; 
 int /*<<< orphan*/  H264_VLC_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tw5864_h264_frame*) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct tw5864_dev *dev = (struct tw5864_dev *)data;
	unsigned long flags;
	int batch_size = H264_BUF_CNT;

	FUNC2(&dev->slock, flags);
	while (dev->h264_buf_r_index != dev->h264_buf_w_index && batch_size--) {
		struct tw5864_h264_frame *frame =
			&dev->h264_buf[dev->h264_buf_r_index];

		FUNC3(&dev->slock, flags);
		FUNC0(&dev->pci->dev, frame->vlc.dma_addr,
					H264_VLC_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC0(&dev->pci->dev, frame->mv.dma_addr,
					H264_MV_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC4(frame);
		FUNC1(&dev->pci->dev, frame->vlc.dma_addr,
					   H264_VLC_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC1(&dev->pci->dev, frame->mv.dma_addr,
					   H264_MV_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC2(&dev->slock, flags);

		dev->h264_buf_r_index++;
		dev->h264_buf_r_index %= H264_BUF_CNT;
	}
	FUNC3(&dev->slock, flags);
}