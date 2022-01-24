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
struct sk_buff {int dummy; } ;
struct fmdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fmdev*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 (struct fmdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct fmdev *fmdev, u8 stage)
{
	struct sk_buff *skb;

	if (!FUNC0(fmdev, &skb))
		FUNC1(fmdev, stage);
}