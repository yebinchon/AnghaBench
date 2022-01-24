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
struct ubi_mkvol_req {char* vol_id; char* alignment; char* vol_type; char* name_len; int /*<<< orphan*/  name; scalar_t__ bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(const struct ubi_mkvol_req *req)
{
	char nm[17];

	FUNC1("Volume creation request dump:\n");
	FUNC1("\tvol_id    %d\n",   req->vol_id);
	FUNC1("\talignment %d\n",   req->alignment);
	FUNC1("\tbytes     %lld\n", (long long)req->bytes);
	FUNC1("\tvol_type  %d\n",   req->vol_type);
	FUNC1("\tname_len  %d\n",   req->name_len);

	FUNC0(nm, req->name, 16);
	nm[16] = 0;
	FUNC1("\t1st 16 characters of name: %s\n", nm);
}