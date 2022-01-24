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
struct net_device {int dummy; } ;
struct ifi_canfd_priv {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 struct ifi_canfd_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev, const u32 id,
				 const u32 mask, const u32 ident)
{
	struct ifi_canfd_priv *priv = FUNC2(ndev);

	FUNC3(mask, priv->base + FUNC1(id));
	FUNC3(ident, priv->base + FUNC0(id));
}