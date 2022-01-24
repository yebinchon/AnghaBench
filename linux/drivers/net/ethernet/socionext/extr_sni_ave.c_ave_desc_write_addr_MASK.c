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
struct net_device {int dummy; } ;
struct ave_private {int dummy; } ;
typedef  enum desc_id { ____Placeholder_desc_id } desc_id ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESC_OFS_ADDRL ; 
 int /*<<< orphan*/  AVE_DESC_OFS_ADDRU ; 
 scalar_t__ FUNC0 (struct ave_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ave_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev, enum desc_id id,
				int entry, dma_addr_t paddr)
{
	struct ave_private *priv = FUNC3(ndev);

	FUNC1(ndev, id, entry, AVE_DESC_OFS_ADDRL,
		       FUNC2(paddr));
	if (FUNC0(priv))
		FUNC1(ndev, id,
			       entry, AVE_DESC_OFS_ADDRU,
			       FUNC4(paddr));
}