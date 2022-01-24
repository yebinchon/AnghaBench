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
struct b53_device {int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int) ; 

__attribute__((used)) static int FUNC2(struct b53_device *priv)
{
	/* disable switching */
	FUNC1(priv, 0);

	FUNC0(priv->ds);

	/* enable switching */
	FUNC1(priv, 1);

	return 0;
}