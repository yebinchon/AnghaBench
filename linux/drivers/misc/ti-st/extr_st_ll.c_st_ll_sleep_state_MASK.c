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
struct st_data_s {int /*<<< orphan*/  ll_state; } ;

/* Variables and functions */
 unsigned long EINVAL ; 
#define  LL_SLEEP_ACK 131 
#define  LL_SLEEP_IND 130 
#define  LL_WAKE_UP_ACK 129 
#define  LL_WAKE_UP_IND 128 
 int /*<<< orphan*/  ST_LL_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (struct st_data_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_data_s*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

unsigned long FUNC4(struct st_data_s *st_data,
	unsigned char cmd)
{
	switch (cmd) {
	case LL_SLEEP_IND:	/* sleep ind */
		FUNC2("sleep indication recvd");
		FUNC0(st_data);
		break;
	case LL_SLEEP_ACK:	/* sleep ack */
		FUNC3("sleep ack rcvd: host shouldn't");
		break;
	case LL_WAKE_UP_IND:	/* wake ind */
		FUNC2("wake indication recvd");
		FUNC1(st_data);
		break;
	case LL_WAKE_UP_ACK:	/* wake ack */
		FUNC2("wake ack rcvd");
		st_data->ll_state = ST_LL_AWAKE;
		break;
	default:
		FUNC3(" unknown input/state ");
		return -EINVAL;
	}
	return 0;
}