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
struct resource {int /*<<< orphan*/  start; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct ath10k_qmi {int /*<<< orphan*/  msa_va; int /*<<< orphan*/  msa_pa; int /*<<< orphan*/  msa_mem_size; struct ath10k* ar; } ;
struct ath10k {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMREMAP_WT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 

__attribute__((used)) static int FUNC11(struct ath10k_qmi *qmi, u32 msa_size)
{
	struct ath10k *ar = qmi->ar;
	struct device *dev = ar->dev;
	struct device_node *node;
	struct resource r;
	int ret;

	node = FUNC9(dev->of_node, "memory-region", 0);
	if (node) {
		ret = FUNC7(node, 0, &r);
		if (ret) {
			FUNC4(dev, "failed to resolve msa fixed region\n");
			return ret;
		}
		FUNC8(node);

		qmi->msa_pa = r.start;
		qmi->msa_mem_size = FUNC10(&r);
		qmi->msa_va = FUNC5(dev, qmi->msa_pa, qmi->msa_mem_size,
					    MEMREMAP_WT);
		if (FUNC0(qmi->msa_va)) {
			FUNC4(dev, "failed to map memory region: %pa\n", &r.start);
			return FUNC1(qmi->msa_va);
		}
	} else {
		qmi->msa_va = FUNC6(dev, msa_size,
						  &qmi->msa_pa, GFP_KERNEL);
		if (!qmi->msa_va) {
			FUNC3(ar, "failed to allocate dma memory for msa region\n");
			return -ENOMEM;
		}
		qmi->msa_mem_size = msa_size;
	}

	FUNC2(ar, ATH10K_DBG_QMI, "msa pa: %pad , msa va: 0x%p\n",
		   &qmi->msa_pa,
		   qmi->msa_va);

	return 0;
}