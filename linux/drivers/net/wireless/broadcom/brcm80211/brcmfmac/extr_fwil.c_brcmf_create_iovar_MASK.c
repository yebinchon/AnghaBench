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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static u32
FUNC2(char *name, const char *data, u32 datalen,
		   char *buf, u32 buflen)
{
	u32 len;

	len = FUNC1(name) + 1;

	if ((len + datalen) > buflen)
		return 0;

	FUNC0(buf, name, len);

	/* append data onto the end of the name string */
	if (data && datalen)
		FUNC0(&buf[len], data, datalen);

	return len + datalen;
}