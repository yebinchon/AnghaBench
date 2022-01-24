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
struct rocker_tlv {int type; int len; } ;
struct rocker_desc_info {int data_size; int tlv_size; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker_tlv*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct rocker_tlv* FUNC5 (struct rocker_desc_info*) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct rocker_desc_info *desc_info,
		   int attrtype, int attrlen, const void *data)
{
	int tail_room = desc_info->data_size - desc_info->tlv_size;
	int total_size = FUNC6(attrlen);
	struct rocker_tlv *tlv;

	if (FUNC7(tail_room < total_size))
		return -EMSGSIZE;

	tlv = FUNC5(desc_info);
	desc_info->tlv_size += total_size;
	tlv->type = attrtype;
	tlv->len = FUNC2(attrlen);
	FUNC0(FUNC3(tlv), data, attrlen);
	FUNC1((char *) tlv + tlv->len, 0, FUNC4(attrlen));
	return 0;
}