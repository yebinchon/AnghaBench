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
struct ionic_lif {int dummy; } ;
struct ionic {int /*<<< orphan*/  lifbits; int /*<<< orphan*/  lifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ionic_lif*) ; 
 struct ionic_lif* FUNC2 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct ionic *ionic)
{
	struct ionic_lif *lif;

	FUNC0(&ionic->lifs);

	/* only build the first lif, others are for later features */
	FUNC3(0, ionic->lifbits);
	lif = FUNC2(ionic, 0);

	return FUNC1(lif);
}