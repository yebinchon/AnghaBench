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
struct solo_p2m_dev {size_t desc_count; size_t desc_idx; struct solo_p2m_desc* descs; int /*<<< orphan*/  completion; } ;
struct solo_p2m_desc {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  cfg; int /*<<< orphan*/  ext_addr; int /*<<< orphan*/  dma_addr; } ;
struct solo_dev {struct solo_p2m_dev* p2m_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct solo_dev *solo_dev, int id)
{
	struct solo_p2m_dev *p2m_dev = &solo_dev->p2m_dev[id];
	struct solo_p2m_desc *desc;

	if (p2m_dev->desc_count <= p2m_dev->desc_idx) {
		FUNC4(&p2m_dev->completion);
		return;
	}

	/* Setup next descriptor */
	p2m_dev->desc_idx++;
	desc = &p2m_dev->descs[p2m_dev->desc_idx];

	FUNC5(solo_dev, FUNC0(id), 0);
	FUNC5(solo_dev, FUNC3(id), desc->dma_addr);
	FUNC5(solo_dev, FUNC1(id), desc->ext_addr);
	FUNC5(solo_dev, FUNC2(id), desc->cfg);
	FUNC5(solo_dev, FUNC0(id), desc->ctrl);
}