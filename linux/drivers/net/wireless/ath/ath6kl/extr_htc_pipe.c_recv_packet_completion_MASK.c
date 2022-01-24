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
struct list_head {int dummy; } ;
struct htc_target {int dummy; } ;
struct htc_packet {int /*<<< orphan*/  list; } ;
struct htc_endpoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct htc_endpoint*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void FUNC3(struct htc_target *target,
				   struct htc_endpoint *ep,
				   struct htc_packet *packet)
{
	struct list_head container;
	FUNC0(&container);
	FUNC2(&packet->list, &container);

	/* do completion */
	FUNC1(ep, &container);
}