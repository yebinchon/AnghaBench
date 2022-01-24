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
struct napi_struct {int dummy; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_frame_release {int /*<<< orphan*/  nssn; int /*<<< orphan*/  baid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct napi_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC2 (struct iwl_rx_cmd_buffer*) ; 

void FUNC3(struct iwl_mvm *mvm, struct napi_struct *napi,
			      struct iwl_rx_cmd_buffer *rxb, int queue)
{
	struct iwl_rx_packet *pkt = FUNC2(rxb);
	struct iwl_frame_release *release = (void *)pkt->data;

	FUNC0(mvm, napi, release->baid,
					  FUNC1(release->nssn),
					  queue, 0);
}