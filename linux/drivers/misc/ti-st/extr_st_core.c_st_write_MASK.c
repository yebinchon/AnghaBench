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
struct st_data_s {int /*<<< orphan*/ * tty; } ;
struct sk_buff {long len; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_data_s*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct st_data_s**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct st_data_s*) ; 
 scalar_t__ FUNC5 (int) ; 

long FUNC6(struct sk_buff *skb)
{
	struct st_data_s *st_gdata;
	long len;

	FUNC3(&st_gdata, 0);
	if (FUNC5(skb == NULL || st_gdata == NULL
		|| st_gdata->tty == NULL)) {
		FUNC1("data/tty unavailable to perform write");
		return -EINVAL;
	}

	FUNC0("%d to be written", skb->len);
	len = skb->len;

	/* st_ll to decide where to enqueue the skb */
	FUNC2(st_gdata, skb);
	/* wake up */
	FUNC4(st_gdata);

	/* return number of bytes written */
	return len;
}