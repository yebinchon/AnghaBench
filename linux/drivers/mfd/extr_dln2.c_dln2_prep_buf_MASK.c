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
typedef  int u16 ;
struct dln2_header {void* handle; void* echo; void* size; void* id; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int) ; 

__attribute__((used)) static void *FUNC3(u16 handle, u16 cmd, u16 echo, const void *obuf,
			   int *obuf_len, gfp_t gfp)
{
	int len;
	void *buf;
	struct dln2_header *hdr;

	len = *obuf_len + sizeof(*hdr);
	buf = FUNC1(len, gfp);
	if (!buf)
		return NULL;

	hdr = (struct dln2_header *)buf;
	hdr->id = FUNC0(cmd);
	hdr->size = FUNC0(len);
	hdr->echo = FUNC0(echo);
	hdr->handle = FUNC0(handle);

	FUNC2(buf + sizeof(*hdr), obuf, *obuf_len);

	*obuf_len = len;

	return buf;
}