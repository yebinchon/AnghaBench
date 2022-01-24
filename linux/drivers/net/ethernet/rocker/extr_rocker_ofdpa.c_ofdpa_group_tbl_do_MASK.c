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
struct ofdpa_port {int dummy; } ;
struct ofdpa_group_tbl_entry {int dummy; } ;

/* Variables and functions */
 int OFDPA_OP_FLAG_REMOVE ; 
 int FUNC0 (struct ofdpa_port*,int,struct ofdpa_group_tbl_entry*) ; 
 int FUNC1 (struct ofdpa_port*,int,struct ofdpa_group_tbl_entry*) ; 

__attribute__((used)) static int FUNC2(struct ofdpa_port *ofdpa_port, int flags,
			      struct ofdpa_group_tbl_entry *entry)
{
	if (flags & OFDPA_OP_FLAG_REMOVE)
		return FUNC1(ofdpa_port, flags, entry);
	else
		return FUNC0(ofdpa_port, flags, entry);
}