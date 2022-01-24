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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pererp ; 

__attribute__((used)) static inline void FUNC7(char *payload, u16 region_id,
					 bool ctcam_le, bool erpt_pointer_valid,
					 u8 erpt_bank_pointer, u8 erpt_pointer,
					 u8 master_rp_id)
{
	FUNC0(pererp, payload);
	FUNC6(payload, region_id);
	FUNC1(payload, ctcam_le);
	FUNC4(payload, erpt_pointer_valid);
	FUNC2(payload, erpt_bank_pointer);
	FUNC3(payload, erpt_pointer);
	FUNC5(payload, master_rp_id);
}