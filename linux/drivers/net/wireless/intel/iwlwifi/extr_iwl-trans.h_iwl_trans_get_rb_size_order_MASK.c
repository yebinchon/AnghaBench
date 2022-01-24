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
typedef  enum iwl_amsdu_size { ____Placeholder_iwl_amsdu_size } iwl_amsdu_size ;

/* Variables and functions */
#define  IWL_AMSDU_12K 131 
#define  IWL_AMSDU_2K 130 
#define  IWL_AMSDU_4K 129 
#define  IWL_AMSDU_8K 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline int
FUNC2(enum iwl_amsdu_size rb_size)
{
	switch (rb_size) {
	case IWL_AMSDU_2K:
		return FUNC1(2 * 1024);
	case IWL_AMSDU_4K:
		return FUNC1(4 * 1024);
	case IWL_AMSDU_8K:
		return FUNC1(8 * 1024);
	case IWL_AMSDU_12K:
		return FUNC1(12 * 1024);
	default:
		FUNC0(1);
		return -1;
	}
}