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
struct rvu {int dummy; } ;
struct msg_rsp {int dummy; } ;
struct hwctx_disable_req {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rvu*,struct hwctx_disable_req*) ; 

int FUNC1(struct rvu *rvu,
				       struct hwctx_disable_req *req,
				       struct msg_rsp *rsp)
{
	return FUNC0(rvu, req);
}