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
typedef  int /*<<< orphan*/  u_char ;
struct spi_nor {struct nxp_spifi* priv; } ;
struct nxp_spifi {scalar_t__ flash_base; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int FUNC1 (struct nxp_spifi*) ; 

__attribute__((used)) static ssize_t FUNC2(struct spi_nor *nor, loff_t from, size_t len,
			      u_char *buf)
{
	struct nxp_spifi *spifi = nor->priv;
	int ret;

	ret = FUNC1(spifi);
	if (ret)
		return ret;

	FUNC0(buf, spifi->flash_base + from, len);

	return len;
}