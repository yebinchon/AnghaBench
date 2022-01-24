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
struct bfa_msgq_rspq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSPQ_E_DB_READY ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_msgq_rspq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	struct bfa_msgq_rspq *rspq = (struct bfa_msgq_rspq *)arg;
	FUNC0(rspq, RSPQ_E_DB_READY);
}