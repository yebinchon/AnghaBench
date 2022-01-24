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
struct ca8210_test {int /*<<< orphan*/  up_fifo; int /*<<< orphan*/  ca8210_dfs_spi_int; } ;
struct ca8210_priv {TYPE_1__* spi; struct ca8210_test test; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ca8210_priv *priv)
{
	struct ca8210_test *test = &priv->test;

	FUNC0(test->ca8210_dfs_spi_int);
	FUNC2(&test->up_fifo);
	FUNC1(&priv->spi->dev, "Test interface removed\n");
}