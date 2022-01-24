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
typedef  int u32 ;
typedef  int u16 ;
struct tun_struct {int /*<<< orphan*/  steering_prog; int /*<<< orphan*/  numqueues; } ;
struct tun_prog {int /*<<< orphan*/  prog; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct tun_prog* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct tun_struct *tun, struct sk_buff *skb)
{
	struct tun_prog *prog;
	u32 numqueues;
	u16 ret = 0;

	numqueues = FUNC0(tun->numqueues);
	if (!numqueues)
		return 0;

	prog = FUNC2(tun->steering_prog);
	if (prog)
		ret = FUNC1(prog->prog, skb);

	return ret % numqueues;
}