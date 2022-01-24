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
struct vf610_nfc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vf610_nfc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vf610_nfc*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct vf610_nfc *nfc, u32 reg,
				       u32 mask, u32 shift, u32 val)
{
	FUNC1(nfc, reg,
			(FUNC0(nfc, reg) & (~mask)) | val << shift);
}