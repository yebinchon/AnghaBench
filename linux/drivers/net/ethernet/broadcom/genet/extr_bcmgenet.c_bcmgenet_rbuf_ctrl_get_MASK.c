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
typedef  int /*<<< orphan*/  u32 ;
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  RBUF_FLUSH_CTRL_V1 ; 
 int /*<<< orphan*/  SYS_RBUF_FLUSH_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC3(struct bcmgenet_priv *priv)
{
	if (FUNC0(priv))
		return FUNC1(priv, RBUF_FLUSH_CTRL_V1);
	else
		return FUNC2(priv, SYS_RBUF_FLUSH_CTRL);
}