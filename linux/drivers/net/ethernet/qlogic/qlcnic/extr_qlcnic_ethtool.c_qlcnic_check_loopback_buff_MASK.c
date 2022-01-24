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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int QLCNIC_ILB_PKT_SIZE ; 
 int FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 

int FUNC2(unsigned char *data, u8 mac[])
{
	unsigned char buff[QLCNIC_ILB_PKT_SIZE];
	FUNC1(buff, mac);
	return FUNC0(data, buff, QLCNIC_ILB_PKT_SIZE);
}