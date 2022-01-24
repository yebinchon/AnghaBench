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
typedef  char sci_t ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static sci_t FUNC1(u8 *addr, __be16 port)
{
	sci_t sci;

	FUNC0(&sci, addr, ETH_ALEN);
	FUNC0(((char *)&sci) + ETH_ALEN, &port, sizeof(port));

	return sci;
}