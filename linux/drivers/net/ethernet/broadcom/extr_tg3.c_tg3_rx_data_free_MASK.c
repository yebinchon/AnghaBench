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
typedef  int u32 ;
struct tg3 {int /*<<< orphan*/  pdev; } ;
struct skb_shared_info {int dummy; } ;
struct ring_info {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp, struct ring_info *ri, u32 map_sz)
{
	unsigned int skb_size = FUNC0(map_sz + FUNC1(tp)) +
		   FUNC0(sizeof(struct skb_shared_info));

	if (!ri->data)
		return;

	FUNC3(tp->pdev, FUNC2(ri, mapping),
			 map_sz, PCI_DMA_FROMDEVICE);
	FUNC4(skb_size <= PAGE_SIZE, ri->data);
	ri->data = NULL;
}