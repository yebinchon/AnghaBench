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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nfp_app {int /*<<< orphan*/  ctrl; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC5(struct nfp_app *app, u8 mtype, u16 plen, void *pdata,
			 gfp_t flag)
{
	struct sk_buff *skb;
	unsigned char *msg;

	skb = FUNC2(app, plen, mtype, flag);
	if (!skb)
		return -ENOMEM;

	msg = FUNC3(skb);
	FUNC0(msg, pdata, FUNC4(skb));

	FUNC1(app->ctrl, skb);
	return 0;
}