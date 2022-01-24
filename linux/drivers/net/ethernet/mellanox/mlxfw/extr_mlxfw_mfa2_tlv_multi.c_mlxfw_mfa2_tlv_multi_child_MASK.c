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
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 struct mlxfw_mfa2_tlv const* FUNC1 (struct mlxfw_mfa2_file const*,void*) ; 

const struct mlxfw_mfa2_tlv *
FUNC2(const struct mlxfw_mfa2_file *mfa2_file,
			   const struct mlxfw_mfa2_tlv_multi *multi)
{
	size_t multi_len;

	multi_len = FUNC0(sizeof(struct mlxfw_mfa2_tlv_multi));
	return FUNC1(mfa2_file, (void *) multi + multi_len);
}