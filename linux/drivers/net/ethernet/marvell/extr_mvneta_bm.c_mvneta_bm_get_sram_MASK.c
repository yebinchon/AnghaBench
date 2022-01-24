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
struct mvneta_bm {int /*<<< orphan*/  bppi_virt_addr; int /*<<< orphan*/  bppi_phys_addr; int /*<<< orphan*/  bppi_pool; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MVNETA_BM_BPPI_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device_node *dn,
			      struct mvneta_bm *priv)
{
	priv->bppi_pool = FUNC1(dn, "internal-mem", 0);
	if (!priv->bppi_pool)
		return -ENOMEM;

	priv->bppi_virt_addr = FUNC0(priv->bppi_pool,
						  MVNETA_BM_BPPI_SIZE,
						  &priv->bppi_phys_addr);
	if (!priv->bppi_virt_addr)
		return -ENOMEM;

	return 0;
}