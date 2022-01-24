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
struct TYPE_2__ {int (* quad_enable ) (struct spi_nor*) ;} ;
struct spi_nor {TYPE_1__ params; int /*<<< orphan*/  write_proto; int /*<<< orphan*/  read_proto; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC2(struct spi_nor *nor)
{
	if (!nor->params.quad_enable)
		return 0;

	if (!(FUNC0(nor->read_proto) == 4 ||
	      FUNC0(nor->write_proto) == 4))
		return 0;

	return nor->params.quad_enable(nor);
}