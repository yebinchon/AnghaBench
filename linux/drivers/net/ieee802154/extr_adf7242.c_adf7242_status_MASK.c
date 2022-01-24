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
struct adf7242_local {int /*<<< orphan*/  bmux; int /*<<< orphan*/  buf_stat_rx; int /*<<< orphan*/  stat_msg; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct adf7242_local *lp, u8 *stat)
{
	int status;

	FUNC0(&lp->bmux);
	status = FUNC2(lp->spi, &lp->stat_msg);
	*stat = lp->buf_stat_rx;
	FUNC1(&lp->bmux);

	return status;
}