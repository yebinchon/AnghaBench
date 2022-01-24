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
struct ushc_data {int /*<<< orphan*/  mmc; int /*<<< orphan*/  csw; int /*<<< orphan*/  cbw; int /*<<< orphan*/  int_data; int /*<<< orphan*/  cbw_urb; int /*<<< orphan*/  data_urb; int /*<<< orphan*/  csw_urb; int /*<<< orphan*/  int_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ushc_data *ushc)
{
	FUNC2(ushc->int_urb);
	FUNC2(ushc->csw_urb);
	FUNC2(ushc->data_urb);
	FUNC2(ushc->cbw_urb);

	FUNC0(ushc->int_data);
	FUNC0(ushc->cbw);
	FUNC0(ushc->csw);

	FUNC1(ushc->mmc);
}