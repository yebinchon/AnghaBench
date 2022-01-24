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
struct rockchip_rga {int /*<<< orphan*/  aclk; int /*<<< orphan*/  hclk; int /*<<< orphan*/  sclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rockchip_rga *rga)
{
	FUNC0(rga->sclk);
	FUNC0(rga->hclk);
	FUNC0(rga->aclk);
}