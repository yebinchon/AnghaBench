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
struct htc_target {struct htc_target* dev; } ;
struct htc_packet {struct htc_packet* dev; } ;

/* Variables and functions */
 struct htc_target* FUNC0 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC1 (struct htc_target*) ; 

__attribute__((used)) static void FUNC2(struct htc_target *target)
{
	struct htc_packet *packet;

	while (true) {
		packet = FUNC0(target);
		if (packet == NULL)
			break;
		FUNC1(packet);
	}

	FUNC1(target->dev);

	/* kfree our instance */
	FUNC1(target);
}