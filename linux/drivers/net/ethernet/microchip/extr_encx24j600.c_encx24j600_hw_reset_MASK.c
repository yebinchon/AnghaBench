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
struct encx24j600_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct encx24j600_priv *priv)
{
	int ret;

	FUNC1(&priv->lock);
	ret = FUNC0(priv);
	FUNC2(&priv->lock);

	return ret;
}