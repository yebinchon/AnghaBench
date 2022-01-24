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
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long long,int) ; 

__attribute__((used)) static inline char *FUNC2(char *buf)
{
	struct timespec64 now;

	FUNC0(&now);
	FUNC1(buf, "%llu.%.08lu", (long long)now.tv_sec,
				now.tv_nsec / NSEC_PER_USEC);
	return buf;
}