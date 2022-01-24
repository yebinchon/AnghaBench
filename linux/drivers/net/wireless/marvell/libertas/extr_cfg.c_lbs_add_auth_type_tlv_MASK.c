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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_auth_type {void* auth; TYPE_1__ header; } ;
typedef  enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;

/* Variables and functions */
 int TLV_TYPE_AUTH_TYPE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(u8 *tlv, enum nl80211_auth_type auth_type)
{
	struct mrvl_ie_auth_type *auth = (void *) tlv;

	/*
	 * 1f 01  TLV_TYPE_AUTH_TYPE
	 * 01 00  len
	 * 01     auth type
	 */
	auth->header.type = FUNC0(TLV_TYPE_AUTH_TYPE);
	auth->header.len = FUNC0(sizeof(*auth)-sizeof(auth->header));
	auth->auth = FUNC0(FUNC1(auth_type));
	return sizeof(*auth);
}