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

/* Variables and functions */
 int FUNC0 (int) ; 
#define  MLX5_EVENT_QUEUE_TYPE_DCT 131 
#define  MLX5_EVENT_QUEUE_TYPE_QP 130 
#define  MLX5_EVENT_QUEUE_TYPE_RQ 129 
#define  MLX5_EVENT_QUEUE_TYPE_SQ 128 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static bool FUNC6(int rsc_type, int event_type)
{
	switch (rsc_type) {
	case MLX5_EVENT_QUEUE_TYPE_QP:
		return FUNC0(event_type) & FUNC3();
	case MLX5_EVENT_QUEUE_TYPE_RQ:
		return FUNC0(event_type) & FUNC4();
	case MLX5_EVENT_QUEUE_TYPE_SQ:
		return FUNC0(event_type) & FUNC5();
	case MLX5_EVENT_QUEUE_TYPE_DCT:
		return FUNC0(event_type) & FUNC2();
	default:
		FUNC1(1, "Event arrived for unknown resource type");
		return false;
	}
}