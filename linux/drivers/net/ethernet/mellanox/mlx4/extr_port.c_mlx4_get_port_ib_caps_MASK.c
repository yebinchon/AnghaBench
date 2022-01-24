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
typedef  int u8 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int* buf; int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_MAD_IFC ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_C ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC7(struct mlx4_dev *dev, u8 port, __be32 *caps)
{
	struct mlx4_cmd_mailbox *inmailbox, *outmailbox;
	u8 *inbuf, *outbuf;
	int err;

	inmailbox = FUNC4(dev);
	if (FUNC0(inmailbox))
		return FUNC1(inmailbox);

	outmailbox = FUNC4(dev);
	if (FUNC0(outmailbox)) {
		FUNC6(dev, inmailbox);
		return FUNC1(outmailbox);
	}

	inbuf = inmailbox->buf;
	outbuf = outmailbox->buf;
	inbuf[0] = 1;
	inbuf[1] = 1;
	inbuf[2] = 1;
	inbuf[3] = 1;
	*(__be16 *) (&inbuf[16]) = FUNC2(0x0015);
	*(__be32 *) (&inbuf[20]) = FUNC3(port);

	err = FUNC5(dev, inmailbox->dma, outmailbox->dma, port, 3,
			   MLX4_CMD_MAD_IFC, MLX4_CMD_TIME_CLASS_C,
			   MLX4_CMD_NATIVE);
	if (!err)
		*caps = *(__be32 *) (outbuf + 84);
	FUNC6(dev, inmailbox);
	FUNC6(dev, outmailbox);
	return err;
}