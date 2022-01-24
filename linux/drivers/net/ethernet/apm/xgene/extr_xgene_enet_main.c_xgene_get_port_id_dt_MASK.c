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
typedef  int u32 ;
struct xgene_enet_pdata {int port_id; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static void FUNC2(struct device *dev, struct xgene_enet_pdata *pdata)
{
	u32 id = 0;

	FUNC1(dev->of_node, "port-id", &id);

	pdata->port_id = id & FUNC0(0);

	return;
}