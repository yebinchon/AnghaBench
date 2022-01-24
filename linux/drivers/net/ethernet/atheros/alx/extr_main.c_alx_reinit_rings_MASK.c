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
struct alx_priv {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct alx_priv *alx)
{
	FUNC0(alx);

	FUNC1(alx);

	if (!FUNC2(alx, GFP_KERNEL))
		return -ENOMEM;

	return 0;
}