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
struct seq_file {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
#define  WMI_INVALID_TEMPERATURE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char const*,...) ; 

__attribute__((used)) static void FUNC2(struct seq_file *s, const char *prefix, s32 t)
{
	switch (t) {
	case 0:
	case WMI_INVALID_TEMPERATURE:
		FUNC1(s, "%s N/A\n", prefix);
	break;
	default:
		FUNC1(s, "%s %s%d.%03d\n", prefix, (t < 0 ? "-" : ""),
			   FUNC0(t / 1000), FUNC0(t % 1000));
		break;
	}
}