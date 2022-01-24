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
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  qid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_RELEASE_TX_QUEUE ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ar5523 *ar)
{
	__be32 qid = FUNC2(0);

	FUNC1(ar, "resetting Tx queue\n");
	return FUNC0(ar, WDCMSG_RELEASE_TX_QUEUE,
				 &qid, sizeof(qid), 0);
}