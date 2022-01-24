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
struct TYPE_6__ {int /*<<< orphan*/  virt; int /*<<< orphan*/  size; } ;
struct s5p_mfc_dev {TYPE_3__ ctx_buf; TYPE_2__* variant; } ;
struct s5p_mfc_buf_size_v6 {int /*<<< orphan*/  dev_ctx; } ;
struct TYPE_5__ {TYPE_1__* buf_size; } ;
struct TYPE_4__ {struct s5p_mfc_buf_size_v6* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_L_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct s5p_mfc_dev *dev)
{
	struct s5p_mfc_buf_size_v6 *buf_size = dev->variant->buf_size->priv;
	int ret;

	FUNC1();

	dev->ctx_buf.size = buf_size->dev_ctx;
	ret = FUNC4(dev, BANK_L_CTX, &dev->ctx_buf);
	if (ret) {
		FUNC3("Failed to allocate device context buffer\n");
		return ret;
	}

	FUNC0(dev->ctx_buf.virt, 0, buf_size->dev_ctx);
	FUNC5();

	FUNC2();

	return 0;
}