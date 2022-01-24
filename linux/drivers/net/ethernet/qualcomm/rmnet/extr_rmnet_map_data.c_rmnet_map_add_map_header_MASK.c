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
struct rmnet_map_header {int pad_len; void* pkt_len; } ;
typedef  struct rmnet_map_header u8 ;
typedef  int u32 ;
struct sk_buff {int len; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int RMNET_MAP_NO_PAD_BYTES ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rmnet_map_header*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct sk_buff*) ; 

struct rmnet_map_header *FUNC6(struct sk_buff *skb,
						  int hdrlen, int pad)
{
	struct rmnet_map_header *map_header;
	u32 padding, map_datalen;
	u8 *padbytes;

	map_datalen = skb->len - hdrlen;
	map_header = (struct rmnet_map_header *)
			FUNC3(skb, sizeof(struct rmnet_map_header));
	FUNC2(map_header, 0, sizeof(struct rmnet_map_header));

	if (pad == RMNET_MAP_NO_PAD_BYTES) {
		map_header->pkt_len = FUNC1(map_datalen);
		return map_header;
	}

	padding = FUNC0(map_datalen, 4) - map_datalen;

	if (padding == 0)
		goto done;

	if (FUNC5(skb) < padding)
		return NULL;

	padbytes = (u8 *)FUNC4(skb, padding);
	FUNC2(padbytes, 0, padding);

done:
	map_header->pkt_len = FUNC1(map_datalen + padding);
	map_header->pad_len = padding & 0x3F;

	return map_header;
}