#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tifm_ms {int use_dma; unsigned int mode_mask; TYPE_1__* req; scalar_t__ timeout_jiffies; int /*<<< orphan*/  timer; scalar_t__ cmd_flags; scalar_t__ io_word; scalar_t__ io_pos; scalar_t__ block_pos; struct tifm_dev* dev; } ;
struct tifm_dev {int /*<<< orphan*/  dev; scalar_t__ addr; } ;
struct TYPE_6__ {unsigned int length; } ;
struct TYPE_5__ {unsigned int data_len; scalar_t__ data_dir; int error; int tpc; TYPE_2__ sg; scalar_t__ long_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ READ ; 
 scalar_t__ SOCK_CONTROL ; 
 scalar_t__ SOCK_DMA_ADDRESS ; 
 scalar_t__ SOCK_DMA_CONTROL ; 
 scalar_t__ SOCK_DMA_FIFO_INT_ENABLE_CLEAR ; 
 scalar_t__ SOCK_DMA_FIFO_INT_ENABLE_SET ; 
 scalar_t__ SOCK_FIFO_CONTROL ; 
 scalar_t__ SOCK_FIFO_PAGE_SIZE ; 
 scalar_t__ SOCK_MS_COMMAND ; 
 scalar_t__ SOCK_MS_SYSTEM ; 
 unsigned int TIFM_CTRL_LED ; 
 int TIFM_DMA_EN ; 
 unsigned int TIFM_DMA_TX ; 
 unsigned int TIFM_FIFO_ENABLE ; 
 unsigned int TIFM_FIFO_INTMASK ; 
 unsigned int TIFM_FIFO_INT_SETALL ; 
 unsigned int TIFM_FIFO_MORE ; 
 unsigned int TIFM_MS_SYS_DMA ; 
 unsigned int TIFM_MS_SYS_FIFO ; 
 unsigned int TIFM_MS_SYS_INTCLR ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  no_dma ; 
 unsigned int FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (TYPE_2__*) ; 
 unsigned int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct tifm_dev*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct tifm_ms *host)
{
	struct tifm_dev *sock = host->dev;
	unsigned int data_len, cmd, sys_param;

	host->cmd_flags = 0;
	host->block_pos = 0;
	host->io_pos = 0;
	host->io_word = 0;
	host->cmd_flags = 0;

	host->use_dma = !no_dma;

	if (host->req->long_data) {
		data_len = host->req->sg.length;
		if (!FUNC2(data_len))
			host->use_dma = 0;
	} else {
		data_len = host->req->data_len;
		host->use_dma = 0;
	}

	FUNC8(TIFM_FIFO_INT_SETALL,
	       sock->addr + SOCK_DMA_FIFO_INT_ENABLE_CLEAR);
	FUNC8(TIFM_FIFO_ENABLE,
	       sock->addr + SOCK_FIFO_CONTROL);

	if (host->use_dma) {
		if (1 != FUNC7(sock, &host->req->sg, 1,
				     host->req->data_dir == READ
				     ? PCI_DMA_FROMDEVICE
				     : PCI_DMA_TODEVICE)) {
			host->req->error = -ENOMEM;
			return host->req->error;
		}
		data_len = FUNC6(&host->req->sg);

		FUNC8(FUNC1(data_len) - 2,
		       sock->addr + SOCK_FIFO_PAGE_SIZE);
		FUNC8(TIFM_FIFO_INTMASK,
		       sock->addr + SOCK_DMA_FIFO_INT_ENABLE_SET);
		sys_param = TIFM_DMA_EN | (1 << 8);
		if (host->req->data_dir == WRITE)
			sys_param |= TIFM_DMA_TX;

		FUNC8(TIFM_FIFO_INTMASK,
		       sock->addr + SOCK_DMA_FIFO_INT_ENABLE_SET);

		FUNC8(FUNC5(&host->req->sg),
		       sock->addr + SOCK_DMA_ADDRESS);
		FUNC8(sys_param, sock->addr + SOCK_DMA_CONTROL);
	} else {
		FUNC8(host->mode_mask | TIFM_MS_SYS_FIFO,
		       sock->addr + SOCK_MS_SYSTEM);

		FUNC8(TIFM_FIFO_MORE,
		       sock->addr + SOCK_DMA_FIFO_INT_ENABLE_SET);
	}

	FUNC3(&host->timer, jiffies + host->timeout_jiffies);
	FUNC8(TIFM_CTRL_LED | FUNC4(sock->addr + SOCK_CONTROL),
	       sock->addr + SOCK_CONTROL);
	host->req->error = 0;

	sys_param = FUNC4(sock->addr + SOCK_MS_SYSTEM);
	sys_param |= TIFM_MS_SYS_INTCLR;

	if (host->use_dma)
		sys_param |= TIFM_MS_SYS_DMA;
	else
		sys_param &= ~TIFM_MS_SYS_DMA;

	FUNC8(sys_param, sock->addr + SOCK_MS_SYSTEM);

	cmd = (host->req->tpc & 0xf) << 12;
	cmd |= data_len;
	FUNC8(cmd, sock->addr + SOCK_MS_COMMAND);

	FUNC0(&sock->dev, "executing TPC %x, %x\n", cmd, sys_param);
	return 0;
}