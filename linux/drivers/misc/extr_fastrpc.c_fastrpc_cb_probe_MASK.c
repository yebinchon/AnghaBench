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
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct fastrpc_session_ctx {int used; int valid; int sid; struct device* dev; } ;
struct fastrpc_channel_ctx {size_t sesscount; int /*<<< orphan*/  lock; struct fastrpc_session_ctx* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FASTRPC_MAX_SESSIONS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct fastrpc_channel_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct fastrpc_session_ctx*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fastrpc_session_ctx*,struct fastrpc_session_ctx*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct fastrpc_channel_ctx *cctx;
	struct fastrpc_session_ctx *sess;
	struct device *dev = &pdev->dev;
	int i, sessions = 0;
	unsigned long flags;
	int rc;

	cctx = FUNC2(dev->parent);
	if (!cctx)
		return -EINVAL;

	FUNC7(dev->of_node, "qcom,nsessions", &sessions);

	FUNC8(&cctx->lock, flags);
	sess = &cctx->session[cctx->sesscount];
	sess->used = false;
	sess->valid = true;
	sess->dev = dev;
	FUNC4(dev, sess);

	if (FUNC7(dev->of_node, "reg", &sess->sid))
		FUNC3(dev, "FastRPC Session ID not specified in DT\n");

	if (sessions > 0) {
		struct fastrpc_session_ctx *dup_sess;

		for (i = 1; i < sessions; i++) {
			if (cctx->sesscount++ >= FASTRPC_MAX_SESSIONS)
				break;
			dup_sess = &cctx->session[cctx->sesscount];
			FUNC6(dup_sess, sess, sizeof(*dup_sess));
		}
	}
	cctx->sesscount++;
	FUNC9(&cctx->lock, flags);
	rc = FUNC5(dev, FUNC0(32));
	if (rc) {
		FUNC1(dev, "32-bit DMA enable failed\n");
		return rc;
	}

	return 0;
}