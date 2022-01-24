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
struct solo_p2m_dev {int desc_count; int desc_idx; int /*<<< orphan*/  mutex; scalar_t__ error; int /*<<< orphan*/  completion; struct solo_p2m_desc* descs; } ;
struct solo_p2m_desc {unsigned int dma_addr; unsigned int ext_addr; unsigned int cfg; unsigned int ctrl; } ;
struct solo_dev {scalar_t__ type; int /*<<< orphan*/  p2m_timeouts; int /*<<< orphan*/  p2m_jiffies; struct solo_p2m_dev* p2m_dev; int /*<<< orphan*/  p2m_count; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int EIO ; 
 scalar_t__ SOLO_DEV_6110 ; 
 unsigned int SOLO_NR_P2M ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int SOLO_P2M_DESC_MODE ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ desc_mode ; 
 scalar_t__ multi_p2m ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct solo_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC15(struct solo_dev *solo_dev,
		      struct solo_p2m_desc *desc, dma_addr_t desc_dma,
		      int desc_cnt)
{
	struct solo_p2m_dev *p2m_dev;
	unsigned int timeout;
	unsigned int config = 0;
	int ret = 0;
	unsigned int p2m_id = 0;

	/* Get next ID. According to Softlogic, 6110 has problems on !=0 P2M */
	if (solo_dev->type != SOLO_DEV_6110 && multi_p2m)
		p2m_id = FUNC8(&solo_dev->p2m_count) % SOLO_NR_P2M;

	p2m_dev = &solo_dev->p2m_dev[p2m_id];

	if (FUNC9(&p2m_dev->mutex))
		return -EINTR;

	FUNC11(&p2m_dev->completion);
	p2m_dev->error = 0;

	if (desc_cnt > 1 && solo_dev->type != SOLO_DEV_6110 && desc_mode) {
		/* For 6010 with more than one desc, we can do a one-shot */
		p2m_dev->desc_count = p2m_dev->desc_idx = 0;
		config = FUNC12(solo_dev, FUNC0(p2m_id));

		FUNC13(solo_dev, FUNC3(p2m_id), desc_dma);
		FUNC13(solo_dev, FUNC2(p2m_id), desc_cnt);
		FUNC13(solo_dev, FUNC0(p2m_id), config |
			       SOLO_P2M_DESC_MODE);
	} else {
		/* For single descriptors and 6110, we need to run each desc */
		p2m_dev->desc_count = desc_cnt;
		p2m_dev->desc_idx = 1;
		p2m_dev->descs = desc;

		FUNC13(solo_dev, FUNC6(p2m_id),
			       desc[1].dma_addr);
		FUNC13(solo_dev, FUNC4(p2m_id),
			       desc[1].ext_addr);
		FUNC13(solo_dev, FUNC5(p2m_id),
			       desc[1].cfg);
		FUNC13(solo_dev, FUNC1(p2m_id),
			       desc[1].ctrl);
	}

	timeout = FUNC14(&p2m_dev->completion,
					      solo_dev->p2m_jiffies);

	if (FUNC7(p2m_dev->error))
		ret = -EIO;
	else if (timeout == 0) {
		solo_dev->p2m_timeouts++;
		ret = -EAGAIN;
	}

	FUNC13(solo_dev, FUNC1(p2m_id), 0);

	/* Don't write here for the no_desc_mode case, because config is 0.
	 * We can't test no_desc_mode again, it might race. */
	if (desc_cnt > 1 && solo_dev->type != SOLO_DEV_6110 && config)
		FUNC13(solo_dev, FUNC0(p2m_id), config);

	FUNC10(&p2m_dev->mutex);

	return ret;
}