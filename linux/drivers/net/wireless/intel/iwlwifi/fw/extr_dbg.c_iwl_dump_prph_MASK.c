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
typedef  size_t u32 ;
struct iwl_trans {int dummy; } ;
struct iwl_prph_range {int end; int start; } ;
struct iwl_fw_runtime {struct iwl_trans* trans; } ;
struct iwl_fw_error_dump_prph {scalar_t__ data; void* prph_start; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int IWL_FW_ERROR_DUMP_PRPH ; 
 void* FUNC1 (int) ; 
 struct iwl_fw_error_dump_data* FUNC2 (struct iwl_fw_error_dump_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,unsigned long*) ; 

__attribute__((used)) static void FUNC6(struct iwl_fw_runtime *fwrt,
			  const struct iwl_prph_range *iwl_prph_dump_addr,
			  u32 range_len, void *ptr)
{
	struct iwl_fw_error_dump_prph *prph;
	struct iwl_trans *trans = fwrt->trans;
	struct iwl_fw_error_dump_data **data =
		(struct iwl_fw_error_dump_data **)ptr;
	unsigned long flags;
	u32 i;

	if (!data)
		return;

	FUNC0(trans, "WRT PRPH dump\n");

	if (!FUNC4(trans, &flags))
		return;

	for (i = 0; i < range_len; i++) {
		/* The range includes both boundaries */
		int num_bytes_in_chunk = iwl_prph_dump_addr[i].end -
			 iwl_prph_dump_addr[i].start + 4;

		(*data)->type = FUNC1(IWL_FW_ERROR_DUMP_PRPH);
		(*data)->len = FUNC1(sizeof(*prph) +
					num_bytes_in_chunk);
		prph = (void *)(*data)->data;
		prph->prph_start = FUNC1(iwl_prph_dump_addr[i].start);

		FUNC3(trans, iwl_prph_dump_addr[i].start,
				    /* our range is inclusive, hence + 4 */
				    iwl_prph_dump_addr[i].end -
				    iwl_prph_dump_addr[i].start + 4,
				    (void *)prph->data);

		*data = FUNC2(*data);
	}

	FUNC5(trans, &flags);
}