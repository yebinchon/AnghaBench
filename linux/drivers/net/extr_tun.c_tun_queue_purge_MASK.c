#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/  sk_write_queue; } ;
struct tun_file {TYPE_1__ sk; int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct tun_file *tfile)
{
	void *ptr;

	while ((ptr = FUNC0(&tfile->tx_ring)) != NULL)
		FUNC2(ptr);

	FUNC1(&tfile->sk.sk_write_queue);
	FUNC1(&tfile->sk.sk_error_queue);
}