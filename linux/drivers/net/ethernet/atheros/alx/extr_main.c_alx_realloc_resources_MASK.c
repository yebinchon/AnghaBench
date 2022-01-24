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
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct alx_priv {TYPE_1__ hw; } ;

/* Variables and functions */
 int FUNC0 (struct alx_priv*) ; 
 int FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_priv*) ; 
 int FUNC4 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct alx_priv *alx)
{
	int err;

	FUNC3(alx);
	FUNC2(alx);
	FUNC5(alx->hw.pdev);

	err = FUNC4(alx);
	if (err)
		return err;

	err = FUNC0(alx);
	if (err)
		return err;

	err = FUNC1(alx);
	if (err)
		return err;

	return 0;
}