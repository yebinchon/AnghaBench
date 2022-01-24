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
struct iwl_rss_config_cmd {int hash_mask; int* indirection_table; int /*<<< orphan*/  secret_key; int /*<<< orphan*/  flags; } ;
struct iwl_mvm {TYPE_1__* trans; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int num_rx_queues; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWL_RSS_ENABLE ; 
 int /*<<< orphan*/  IWL_RSS_HASH_TYPE_IPV4_PAYLOAD ; 
 int /*<<< orphan*/  IWL_RSS_HASH_TYPE_IPV4_TCP ; 
 int /*<<< orphan*/  IWL_RSS_HASH_TYPE_IPV4_UDP ; 
 int /*<<< orphan*/  IWL_RSS_HASH_TYPE_IPV6_PAYLOAD ; 
 int /*<<< orphan*/  IWL_RSS_HASH_TYPE_IPV6_TCP ; 
 int /*<<< orphan*/  IWL_RSS_HASH_TYPE_IPV6_UDP ; 
 int /*<<< orphan*/  RSS_CONFIG_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_rss_config_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm)
{
	int i;
	struct iwl_rss_config_cmd cmd = {
		.flags = FUNC2(IWL_RSS_ENABLE),
		.hash_mask = FUNC1(IWL_RSS_HASH_TYPE_IPV4_TCP) |
			     FUNC1(IWL_RSS_HASH_TYPE_IPV4_UDP) |
			     FUNC1(IWL_RSS_HASH_TYPE_IPV4_PAYLOAD) |
			     FUNC1(IWL_RSS_HASH_TYPE_IPV6_TCP) |
			     FUNC1(IWL_RSS_HASH_TYPE_IPV6_UDP) |
			     FUNC1(IWL_RSS_HASH_TYPE_IPV6_PAYLOAD),
	};

	if (mvm->trans->num_rx_queues == 1)
		return 0;

	/* Do not direct RSS traffic to Q 0 which is our fallback queue */
	for (i = 0; i < FUNC0(cmd.indirection_table); i++)
		cmd.indirection_table[i] =
			1 + (i % (mvm->trans->num_rx_queues - 1));
	FUNC4(cmd.secret_key, sizeof(cmd.secret_key));

	return FUNC3(mvm, RSS_CONFIG_CMD, 0, sizeof(cmd), &cmd);
}