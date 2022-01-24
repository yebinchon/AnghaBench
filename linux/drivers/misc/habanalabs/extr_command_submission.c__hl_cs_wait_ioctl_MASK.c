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
typedef  unsigned long u64 ;
struct hl_device {int dummy; } ;
struct hl_ctx {int dummy; } ;
struct dma_fence {long error; } ;

/* Variables and functions */
 long EIO ; 
 long ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 long FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 long FUNC3 (struct dma_fence*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*,struct hl_ctx*) ; 
 struct dma_fence* FUNC5 (struct hl_ctx*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_ctx*) ; 
 unsigned long FUNC7 (unsigned long) ; 

__attribute__((used)) static long FUNC8(struct hl_device *hdev,
		struct hl_ctx *ctx, u64 timeout_us, u64 seq)
{
	struct dma_fence *fence;
	unsigned long timeout;
	long rc;

	if (timeout_us == MAX_SCHEDULE_TIMEOUT)
		timeout = timeout_us;
	else
		timeout = FUNC7(timeout_us);

	FUNC4(hdev, ctx);

	fence = FUNC5(ctx, seq);
	if (FUNC0(fence)) {
		rc = FUNC1(fence);
	} else if (fence) {
		rc = FUNC3(fence, true, timeout);
		if (fence->error == -ETIMEDOUT)
			rc = -ETIMEDOUT;
		else if (fence->error == -EIO)
			rc = -EIO;
		FUNC2(fence);
	} else
		rc = 1;

	FUNC6(ctx);

	return rc;
}