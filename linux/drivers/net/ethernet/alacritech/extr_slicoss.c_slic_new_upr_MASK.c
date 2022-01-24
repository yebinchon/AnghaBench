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
struct slic_upr {unsigned int type; int /*<<< orphan*/  paddr; } ;
struct slic_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct slic_upr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct slic_device*,struct slic_upr*) ; 

__attribute__((used)) static int FUNC2(struct slic_device *sdev, unsigned int type,
			dma_addr_t paddr)
{
	struct slic_upr *upr;

	upr = FUNC0(sizeof(*upr), GFP_ATOMIC);
	if (!upr)
		return -ENOMEM;
	upr->type = type;
	upr->paddr = paddr;

	FUNC1(sdev, upr);

	return 0;
}