#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  intr_urb; } ;
typedef  TYPE_1__ pegasus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(pegasus_t *pegasus)
{
	FUNC0(pegasus->intr_urb);
	FUNC0(pegasus->tx_urb);
	FUNC0(pegasus->rx_urb);
}