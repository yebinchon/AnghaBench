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

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_EMAD_END_TLV_LEN ; 
 int /*<<< orphan*/  MLXSW_EMAD_TLV_TYPE_END ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char *end_tlv)
{
	FUNC1(end_tlv, MLXSW_EMAD_TLV_TYPE_END);
	FUNC0(end_tlv, MLXSW_EMAD_END_TLV_LEN);
}