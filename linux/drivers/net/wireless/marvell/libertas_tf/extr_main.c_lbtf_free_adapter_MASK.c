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
struct lbtf_private {int /*<<< orphan*/  command_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBTF_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lbtf_private*) ; 

__attribute__((used)) static void FUNC4(struct lbtf_private *priv)
{
	FUNC1(LBTF_DEB_MAIN);
	FUNC3(priv);
	FUNC0(&priv->command_timer);
	FUNC2(LBTF_DEB_MAIN);
}