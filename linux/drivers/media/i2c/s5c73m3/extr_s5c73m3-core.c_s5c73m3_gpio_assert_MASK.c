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
struct s5c73m3 {TYPE_1__* gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int FUNC0 (struct s5c73m3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct s5c73m3 *priv, int id)
{
	return FUNC0(priv, id, priv->gpio[id].level);
}