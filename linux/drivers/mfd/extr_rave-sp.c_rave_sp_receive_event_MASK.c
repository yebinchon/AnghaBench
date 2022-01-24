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
typedef  int u8 ;
struct rave_sp {int /*<<< orphan*/  event_notifier_list; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const,unsigned char const) ; 
 int FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (struct rave_sp*,int*,int) ; 

__attribute__((used)) static void FUNC4(struct rave_sp *sp,
				  const unsigned char *data, size_t length)
{
	u8 cmd[] = {
		[0] = FUNC2(data[0]),
		[1] = data[1],
	};

	FUNC3(sp, cmd, sizeof(cmd));

	FUNC0(&sp->event_notifier_list,
				     FUNC1(data[0], data[2]),
				     NULL);
}