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
struct arizona {int /*<<< orphan*/  core_supplies; int /*<<< orphan*/  num_core_supplies; int /*<<< orphan*/  dev; int /*<<< orphan*/  dcvdd; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_IRQ_CLKGEN_ERR ; 
 int /*<<< orphan*/  ARIZONA_IRQ_OVERCLOCKED ; 
 int /*<<< orphan*/  ARIZONA_IRQ_UNDERCLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona*,int /*<<< orphan*/ ,struct arizona*) ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct arizona *arizona)
{
	FUNC3(arizona->irq);
	FUNC5(arizona->dev);

	FUNC7(arizona->dcvdd);
	FUNC8(arizona->dcvdd);

	FUNC4(arizona->dev);
	FUNC1(arizona, ARIZONA_IRQ_UNDERCLOCKED, arizona);
	FUNC1(arizona, ARIZONA_IRQ_OVERCLOCKED, arizona);
	FUNC1(arizona, ARIZONA_IRQ_CLKGEN_ERR, arizona);
	FUNC2(arizona);
	FUNC0(arizona);

	FUNC6(arizona->num_core_supplies,
			       arizona->core_supplies);
	return 0;
}