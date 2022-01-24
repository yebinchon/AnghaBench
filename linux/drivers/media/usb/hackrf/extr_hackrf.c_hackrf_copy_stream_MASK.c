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
struct hackrf_dev {unsigned int sample; unsigned int sample_measured; int /*<<< orphan*/  dev; scalar_t__ jiffies_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hackrf_dev *dev, void *dst, void *src,
			       unsigned int src_len)
{
	FUNC2(dst, src, src_len);

	/* calculate sample rate and output it in 10 seconds intervals */
	if (FUNC5(FUNC4(dev->jiffies_next))) {
		#define MSECS 10000UL
		unsigned int msecs = FUNC1(jiffies -
				dev->jiffies_next + FUNC3(MSECS));
		unsigned int samples = dev->sample - dev->sample_measured;

		dev->jiffies_next = jiffies + FUNC3(MSECS);
		dev->sample_measured = dev->sample;
		FUNC0(dev->dev, "slen=%u samples=%u msecs=%u sample rate=%lu\n",
				src_len, samples, msecs,
				samples * 1000UL / msecs);
	}

	/* total number of samples */
	dev->sample += src_len / 2;
}