#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* frame; } ;
struct s2255_vc {TYPE_2__ buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lpvbits; } ;

/* Variables and functions */
 unsigned long SYS_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct s2255_vc *vc)
{
	unsigned long i;
	for (i = 0; i < SYS_FRAMES; i++) {
		FUNC0(vc->buffer.frame[i].lpvbits);
		vc->buffer.frame[i].lpvbits = NULL;
	}
	return 0;
}