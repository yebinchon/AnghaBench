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
struct sk_buff {int len; char* data; } ;
struct ath10k {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI_PRINT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 

void FUNC4(struct ath10k *ar, struct sk_buff *skb)
{
	char buf[101], c;
	int i;

	for (i = 0; i < sizeof(buf) - 1; i++) {
		if (i >= skb->len)
			break;

		c = skb->data[i];

		if (c == '\0')
			break;

		if (FUNC2(c) && FUNC3(c))
			buf[i] = c;
		else
			buf[i] = '.';
	}

	if (i == sizeof(buf) - 1)
		FUNC1(ar, "wmi debug print truncated: %d\n", skb->len);

	/* for some reason the debug prints end with \n, remove that */
	if (skb->data[i - 1] == '\n')
		i--;

	/* the last byte is always reserved for the null character */
	buf[i] = '\0';

	FUNC0(ar, ATH10K_DBG_WMI_PRINT, "wmi print '%s'\n", buf);
}