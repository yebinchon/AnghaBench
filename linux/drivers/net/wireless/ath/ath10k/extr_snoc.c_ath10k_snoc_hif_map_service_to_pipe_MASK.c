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
typedef  int u8 ;
typedef  int u16 ;
struct service_to_pipe {int /*<<< orphan*/  pipenum; int /*<<< orphan*/  pipedir; int /*<<< orphan*/  service_id; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct service_to_pipe*) ; 
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int ENOENT ; 
#define  PIPEDIR_IN 131 
#define  PIPEDIR_INOUT 130 
#define  PIPEDIR_NONE 129 
#define  PIPEDIR_OUT 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct service_to_pipe* target_service_to_ce_map_wlan ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar,
					       u16 service_id,
					       u8 *ul_pipe, u8 *dl_pipe)
{
	const struct service_to_pipe *entry;
	bool ul_set = false, dl_set = false;
	int i;

	FUNC3(ar, ATH10K_DBG_SNOC, "snoc hif map service\n");

	for (i = 0; i < FUNC0(target_service_to_ce_map_wlan); i++) {
		entry = &target_service_to_ce_map_wlan[i];

		if (FUNC2(entry->service_id) != service_id)
			continue;

		switch (FUNC2(entry->pipedir)) {
		case PIPEDIR_NONE:
			break;
		case PIPEDIR_IN:
			FUNC1(dl_set);
			*dl_pipe = FUNC2(entry->pipenum);
			dl_set = true;
			break;
		case PIPEDIR_OUT:
			FUNC1(ul_set);
			*ul_pipe = FUNC2(entry->pipenum);
			ul_set = true;
			break;
		case PIPEDIR_INOUT:
			FUNC1(dl_set);
			FUNC1(ul_set);
			*dl_pipe = FUNC2(entry->pipenum);
			*ul_pipe = FUNC2(entry->pipenum);
			dl_set = true;
			ul_set = true;
			break;
		}
	}

	if (!ul_set || !dl_set)
		return -ENOENT;

	return 0;
}