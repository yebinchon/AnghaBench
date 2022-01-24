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
struct gswip_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSWIP_MII_CFG0 ; 
 int /*<<< orphan*/  GSWIP_MII_CFG1 ; 
 int /*<<< orphan*/  GSWIP_MII_CFG5 ; 
 int /*<<< orphan*/  FUNC0 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gswip_priv *priv, u32 clear, u32 set,
			       int port)
{
	switch (port) {
	case 0:
		FUNC0(priv, clear, set, GSWIP_MII_CFG0);
		break;
	case 1:
		FUNC0(priv, clear, set, GSWIP_MII_CFG1);
		break;
	case 5:
		FUNC0(priv, clear, set, GSWIP_MII_CFG5);
		break;
	}
}