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
struct adf7242_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_SPI_READY ; 
 int FUNC0 (struct adf7242_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct adf7242_local *lp, int line)
{
	return FUNC0(lp, STAT_SPI_READY,
				   STAT_SPI_READY, line);
}