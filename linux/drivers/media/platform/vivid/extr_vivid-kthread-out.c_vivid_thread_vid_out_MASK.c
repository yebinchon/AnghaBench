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
typedef  unsigned int u64 ;
struct TYPE_2__ {unsigned int numerator; unsigned int denominator; } ;
struct vivid_dev {int out_seq_offset; int out_seq_count; unsigned long jiffies_vid_out; int out_seq_resync; scalar_t__ field_out; int /*<<< orphan*/  mutex; scalar_t__ vbi_out_seq_start; scalar_t__ vbi_out_seq_count; scalar_t__ vid_out_seq_start; scalar_t__ vid_out_seq_count; TYPE_1__ timeperframe_vid_out; scalar_t__ seq_wrap; } ;

/* Variables and functions */
 unsigned int HZ ; 
 unsigned long JIFFIES_RESYNC ; 
 scalar_t__ V4L2_FIELD_ALTERNATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vivid_dev*,int,char*) ; 
 void* jiffies ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct vivid_dev*) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct vivid_dev *dev = data;
	u64 numerators_since_start;
	u64 buffers_since_start;
	u64 next_jiffies_since_start;
	unsigned long jiffies_since_start;
	unsigned long cur_jiffies;
	unsigned wait_jiffies;
	unsigned numerator;
	unsigned denominator;

	FUNC1(dev, 1, "Video Output Thread Start\n");

	FUNC6();

	/* Resets frame counters */
	dev->out_seq_offset = 0;
	if (dev->seq_wrap)
		dev->out_seq_count = 0xffffff80U;
	dev->jiffies_vid_out = jiffies;
	dev->vid_out_seq_start = dev->vbi_out_seq_start = 0;
	dev->out_seq_resync = false;

	for (;;) {
		FUNC7();
		if (FUNC2())
			break;

		FUNC3(&dev->mutex);
		cur_jiffies = jiffies;
		if (dev->out_seq_resync) {
			dev->jiffies_vid_out = cur_jiffies;
			dev->out_seq_offset = dev->out_seq_count + 1;
			dev->out_seq_count = 0;
			dev->out_seq_resync = false;
		}
		numerator = dev->timeperframe_vid_out.numerator;
		denominator = dev->timeperframe_vid_out.denominator;

		if (dev->field_out == V4L2_FIELD_ALTERNATE)
			denominator *= 2;

		/* Calculate the number of jiffies since we started streaming */
		jiffies_since_start = cur_jiffies - dev->jiffies_vid_out;
		/* Get the number of buffers streamed since the start */
		buffers_since_start = (u64)jiffies_since_start * denominator +
				      (HZ * numerator) / 2;
		FUNC0(buffers_since_start, HZ * numerator);

		/*
		 * After more than 0xf0000000 (rounded down to a multiple of
		 * 'jiffies-per-day' to ease jiffies_to_msecs calculation)
		 * jiffies have passed since we started streaming reset the
		 * counters and keep track of the sequence offset.
		 */
		if (jiffies_since_start > JIFFIES_RESYNC) {
			dev->jiffies_vid_out = cur_jiffies;
			dev->out_seq_offset = buffers_since_start;
			buffers_since_start = 0;
		}
		dev->out_seq_count = buffers_since_start + dev->out_seq_offset;
		dev->vid_out_seq_count = dev->out_seq_count - dev->vid_out_seq_start;
		dev->vbi_out_seq_count = dev->out_seq_count - dev->vbi_out_seq_start;

		FUNC8(dev);
		FUNC4(&dev->mutex);

		/*
		 * Calculate the number of 'numerators' streamed since we started,
		 * not including the current buffer.
		 */
		numerators_since_start = buffers_since_start * numerator;

		/* And the number of jiffies since we started */
		jiffies_since_start = jiffies - dev->jiffies_vid_out;

		/* Increase by the 'numerator' of one buffer */
		numerators_since_start += numerator;
		/*
		 * Calculate when that next buffer is supposed to start
		 * in jiffies since we started streaming.
		 */
		next_jiffies_since_start = numerators_since_start * HZ +
					   denominator / 2;
		FUNC0(next_jiffies_since_start, denominator);
		/* If it is in the past, then just schedule asap */
		if (next_jiffies_since_start < jiffies_since_start)
			next_jiffies_since_start = jiffies_since_start;

		wait_jiffies = next_jiffies_since_start - jiffies_since_start;
		FUNC5(wait_jiffies ? wait_jiffies : 1);
	}
	FUNC1(dev, 1, "Video Output Thread End\n");
	return 0;
}