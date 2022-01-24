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
struct mtdswap_dev {int /*<<< orphan*/  page_buf; int /*<<< orphan*/  oob_buf; int /*<<< orphan*/  page_data; int /*<<< orphan*/  revmap; int /*<<< orphan*/  eb_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtdswap_dev *d)
{
	FUNC1(d->eb_data);
	FUNC1(d->revmap);
	FUNC1(d->page_data);
	FUNC0(d->oob_buf);
	FUNC0(d->page_buf);
}