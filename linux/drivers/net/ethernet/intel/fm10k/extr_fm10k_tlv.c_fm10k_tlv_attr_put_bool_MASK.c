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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 size_t FUNC0 (int) ; 
 int FM10K_TLV_HDR_LEN ; 
 int FM10K_TLV_LEN_SHIFT ; 

s32 FUNC1(u32 *msg, u16 attr_id)
{
	/* verify pointers are not NULL */
	if (!msg)
		return FM10K_ERR_PARAM;

	/* record attribute header */
	msg[FUNC0(*msg)] = attr_id;

	/* add header length to length */
	*msg += FM10K_TLV_HDR_LEN << FM10K_TLV_LEN_SHIFT;

	return 0;
}