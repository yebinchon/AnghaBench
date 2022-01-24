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
typedef  scalar_t__ u32 ;
struct vio_driver_state {int /*<<< orphan*/  _peer_sid; int /*<<< orphan*/  _local_sid; } ;
struct vnet_port {int napi_resume; int napi_stop_idx; struct vio_driver_state vio; } ;
struct vio_dring_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int ECONNRESET ; 
 int /*<<< orphan*/  VIO_DRING_ACTIVE ; 
 int /*<<< orphan*/  VIO_DRING_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct vio_dring_state*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct vio_dring_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct vnet_port*,struct vio_dring_state*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnet_port*,struct vio_dring_state*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC8(struct vnet_port *port, struct vio_dring_state *dr,
			u32 start, u32 end, int *npkts, int budget)
{
	struct vio_driver_state *vio = &port->vio;
	int ack_start = -1, ack_end = -1;
	bool send_ack = true;

	end = (end == (u32)-1) ? FUNC4(dr, start)
			       : FUNC3(dr, end);

	FUNC5(DATA, "vnet_walk_rx start[%08x] end[%08x]\n", start, end);

	while (start != end) {
		int ack = 0, err = FUNC7(port, dr, start, &ack);

		if (err == -ECONNRESET)
			return err;
		if (err != 0)
			break;
		(*npkts)++;
		if (ack_start == -1)
			ack_start = start;
		ack_end = start;
		start = FUNC3(dr, start);
		if (ack && start != end) {
			err = FUNC6(port, dr, ack_start, ack_end,
					    VIO_DRING_ACTIVE);
			if (err == -ECONNRESET)
				return err;
			ack_start = -1;
		}
		if ((*npkts) >= budget) {
			send_ack = false;
			break;
		}
	}
	if (FUNC2(ack_start == -1)) {
		ack_end = FUNC4(dr, start);
		ack_start = ack_end;
	}
	if (send_ack) {
		port->napi_resume = false;
		FUNC1(port->vio._local_sid,
					       port->vio._peer_sid,
					       ack_end, *npkts);
		return FUNC6(port, dr, ack_start, ack_end,
				     VIO_DRING_STOPPED);
	} else  {
		FUNC0(port->vio._local_sid,
						port->vio._peer_sid,
						ack_end, *npkts);
		port->napi_resume = true;
		port->napi_stop_idx = ack_end;
		return 1;
	}
}