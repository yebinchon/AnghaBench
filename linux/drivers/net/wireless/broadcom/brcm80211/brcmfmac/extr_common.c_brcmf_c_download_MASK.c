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
typedef  int u16 ;
struct brcmf_if {int dummy; } ;
struct brcmf_dload_data_le {void* crc; void* len; void* dload_type; void* flag; } ;
typedef  int s32 ;

/* Variables and functions */
 int DLOAD_FLAG_VER_SHIFT ; 
 int DLOAD_HANDLER_VER ; 
 int DL_TYPE_CLM ; 
 int FUNC0 (struct brcmf_if*,char*,struct brcmf_dload_data_le*,scalar_t__) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct brcmf_if *ifp, u16 flag,
			    struct brcmf_dload_data_le *dload_buf,
			    u32 len)
{
	s32 err;

	flag |= (DLOAD_HANDLER_VER << DLOAD_FLAG_VER_SHIFT);
	dload_buf->flag = FUNC1(flag);
	dload_buf->dload_type = FUNC1(DL_TYPE_CLM);
	dload_buf->len = FUNC2(len);
	dload_buf->crc = FUNC2(0);
	len = sizeof(*dload_buf) + len - 1;

	err = FUNC0(ifp, "clmload", dload_buf, len);

	return err;
}