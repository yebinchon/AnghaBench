#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_rss_config {int /*<<< orphan*/  hash; int /*<<< orphan*/  cpu_table; TYPE_1__ hdr; void* cpu_table_size_log2; void* enable_rss; int /*<<< orphan*/  if_id; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  if_handle; } ;

/* Variables and functions */
 int BE_IF_FLAGS_RSS ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_ETH_RSS_CONFIG ; 
 int /*<<< orphan*/  RSS_HASH_KEY_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_rss_config* FUNC7 (struct be_mcc_wrb*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC12 (struct be_adapter*) ; 

int FUNC13(struct be_adapter *adapter, u8 *rsstable,
		      u32 rss_hash_opts, u16 table_size, const u8 *rss_hkey)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_rss_config *req;
	int status;

	if (!(FUNC2(adapter) & BE_IF_FLAGS_RSS))
		return 0;

	FUNC10(&adapter->mcc_lock);

	wrb = FUNC12(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC7(wrb);

	FUNC4(&req->hdr, CMD_SUBSYSTEM_ETH,
			       OPCODE_ETH_RSS_CONFIG, sizeof(*req), wrb, NULL);

	req->if_id = FUNC6(adapter->if_handle);
	req->enable_rss = FUNC5(rss_hash_opts);
	req->cpu_table_size_log2 = FUNC5(FUNC8(table_size) - 1);

	if (!FUNC0(adapter))
		req->hdr.version = 1;

	FUNC9(req->cpu_table, rsstable, table_size);
	FUNC9(req->hash, rss_hkey, RSS_HASH_KEY_LEN);
	FUNC1(req->hash, sizeof(req->hash));

	status = FUNC3(adapter);
err:
	FUNC11(&adapter->mcc_lock);
	return status;
}