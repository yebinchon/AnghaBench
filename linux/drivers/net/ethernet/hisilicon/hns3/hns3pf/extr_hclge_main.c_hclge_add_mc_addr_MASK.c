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
struct hnae3_handle {int dummy; } ;
struct hclge_vport {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_vport*,unsigned char const*) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC2(struct hnae3_handle *handle,
			     const unsigned char *addr)
{
	struct hclge_vport *vport = FUNC1(handle);

	return FUNC0(vport, addr);
}