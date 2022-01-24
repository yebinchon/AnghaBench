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
struct timer_list {int dummy; } ;
struct img_ir_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  end_timer; } ;

/* Variables and functions */
 struct img_ir_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__ hw ; 
 int /*<<< orphan*/  FUNC1 (struct img_ir_priv*) ; 
 struct img_ir_priv* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct img_ir_priv *priv = FUNC0(priv, t, hw.end_timer);

	FUNC2(&priv->lock);
	FUNC1(priv);
	FUNC3(&priv->lock);
}