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
struct sge_fl {scalar_t__ avail; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_RX_REFILL ; 
 scalar_t__ FUNC0 (struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sge_fl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct adapter *adapter, struct sge_fl *fl)
{
	FUNC2(adapter, fl,
		  FUNC1((unsigned int)MAX_RX_REFILL, FUNC0(fl) - fl->avail),
		  GFP_ATOMIC);
}