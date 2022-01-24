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
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {scalar_t__* data; } ;

/* Variables and functions */
 int DEBUG_RX ; 
 int de4x5_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct sk_buff *skb, int len)
{
    int i, j;

    if (de4x5_debug & DEBUG_RX) {
	FUNC0("R: %pM <- %pM len/SAP:%02x%02x [%d]\n",
	       skb->data, &skb->data[6],
	       (u_char)skb->data[12],
	       (u_char)skb->data[13],
	       len);
	for (j=0; len>0;j+=16, len-=16) {
	  FUNC0("    %03x: ",j);
	  for (i=0; i<16 && i<len; i++) {
	    FUNC0("%02x ",(u_char)skb->data[i+j]);
	  }
	  FUNC0("\n");
	}
    }
}