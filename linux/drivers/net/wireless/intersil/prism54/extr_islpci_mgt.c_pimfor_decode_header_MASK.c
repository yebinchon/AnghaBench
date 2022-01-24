#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; scalar_t__ oid; scalar_t__ length; } ;
typedef  TYPE_1__ pimfor_header_t ;

/* Variables and functions */
 scalar_t__ OID_INL_TUNNEL ; 
 int PIMFOR_FLAG_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

__attribute__((used)) static pimfor_header_t *
FUNC2(void *data, int len)
{
	pimfor_header_t *h = data;

	while ((void *) h < data + len) {
		if (h->flags & PIMFOR_FLAG_LITTLE_ENDIAN) {
			FUNC1(&h->oid);
			FUNC1(&h->length);
		} else {
			FUNC0(&h->oid);
			FUNC0(&h->length);
		}
		if (h->oid != OID_INL_TUNNEL)
			return h;
		h++;
	}
	return NULL;
}