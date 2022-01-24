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
typedef  scalar_t__ u8 ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u8 restart)
{
	FUNC0("AGC restart callback: %d", restart);
	if (restart == 0) /* before AGC startup */
		FUNC1(fe, 1);
	return 0;
}