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
typedef  int /*<<< orphan*/  u8 ;
struct encx24j600_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFSCODE ; 
 int /*<<< orphan*/  BFSU ; 
 int FUNC0 (struct encx24j600_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct encx24j600_context *ctx,
					  u8 reg, u8 val)
{
	return FUNC0(ctx, reg, &val, 1, BFSU, BFSCODE);
}