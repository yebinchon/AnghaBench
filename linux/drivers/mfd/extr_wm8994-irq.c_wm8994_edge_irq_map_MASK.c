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
struct wm8994 {int dummy; } ;
struct irq_domain {struct wm8994* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct wm8994*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  wm8994_edge_irq_chip ; 

__attribute__((used)) static int FUNC4(struct irq_domain *h, unsigned int virq,
			       irq_hw_number_t hw)
{
	struct wm8994 *wm8994 = h->host_data;

	FUNC1(virq, wm8994);
	FUNC0(virq, &wm8994_edge_irq_chip, handle_edge_irq);
	FUNC2(virq, 1);
	FUNC3(virq);

	return 0;
}