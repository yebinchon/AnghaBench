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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath6kl*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct ath6kl*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct ath6kl *ar, u32 addr, u8 *buf, u32 len)
{
	int ret;
	u32 last_word = 0;
	u32 last_word_offset = len & ~0x3;
	u32 unaligned_bytes = len & 0x3;

	ret = FUNC1(ar, addr);
	if (ret)
		return ret;

	if (unaligned_bytes) {
		/* copy the last word into a zero padded buffer */
		FUNC2(&last_word, &buf[last_word_offset], unaligned_bytes);
	}

	ret = FUNC0(ar, buf, last_word_offset);
	if (ret)
		return ret;

	if (unaligned_bytes)
		ret = FUNC0(ar, (u8 *)&last_word, 4);

	if (!ret) {
		/* Close compressed stream and open a new (fake) one.
		 * This serves mainly to flush Target caches. */
		ret = FUNC1(ar, 0x00);
	}
	return ret;
}