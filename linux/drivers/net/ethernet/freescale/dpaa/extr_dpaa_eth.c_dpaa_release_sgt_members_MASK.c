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
struct qm_sg_entry {scalar_t__ bpid; } ;
struct dpaa_bp {int dummy; } ;
struct bm_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  bmb ;

/* Variables and functions */
 int FUNC0 (struct bm_buffer*) ; 
 int DPAA_BUFF_RELEASE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bm_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa_bp*,struct bm_buffer*,int) ; 
 struct dpaa_bp* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bm_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qm_sg_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct qm_sg_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct qm_sg_entry*) ; 

__attribute__((used)) static void FUNC9(struct qm_sg_entry *sgt)
{
	struct bm_buffer bmb[DPAA_BUFF_RELEASE_MAX];
	struct dpaa_bp *dpaa_bp;
	int i = 0, j;

	FUNC5(bmb, 0, sizeof(bmb));

	do {
		dpaa_bp = FUNC4(sgt[i].bpid);
		if (!dpaa_bp)
			return;

		j = 0;
		do {
			FUNC1(FUNC7(&sgt[i]));

			FUNC2(&bmb[j], FUNC6(&sgt[i]));

			j++; i++;
		} while (j < FUNC0(bmb) &&
				!FUNC8(&sgt[i - 1]) &&
				sgt[i - 1].bpid == sgt[i].bpid);

		FUNC3(dpaa_bp, bmb, j);
	} while (!FUNC8(&sgt[i - 1]));
}