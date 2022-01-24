#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {void* data_len; void* version; void* prog; void* req_id; } ;
struct as10x_cmd_t {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERVICE_PROG_ID ; 
 int /*<<< orphan*/  SERVICE_PROG_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct as10x_cmd_t *pcmd,
		     uint16_t xid, uint16_t cmd_len)
{
	pcmd->header.req_id = FUNC0(xid);
	pcmd->header.prog = FUNC0(SERVICE_PROG_ID);
	pcmd->header.version = FUNC0(SERVICE_PROG_VERSION);
	pcmd->header.data_len = FUNC0(cmd_len);
}