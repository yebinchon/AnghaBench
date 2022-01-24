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
typedef  int u8 ;
struct wil_rx_status_compressed {int /*<<< orphan*/  d1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline u8 FUNC1(void *msg)
{
	u8 val = FUNC0(((struct wil_rx_status_compressed *)msg)->d1,
			      24, 27);

	switch (val) {
	case 0: return 0;
	case 3: return 2;
	default: return 0xFF;
	}
}