#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; TYPE_7__* tbl; int /*<<< orphan*/  primary_key; TYPE_5__* ops; int /*<<< orphan*/  dev; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct TYPE_13__ {int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  family; int /*<<< orphan*/  dev; } ;
struct mlx5e_encap_entry {int encap_size; char* encap_header; struct net_device* out_dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  pkt_reformat; int /*<<< orphan*/  reformat_type; int /*<<< orphan*/  h_dest; struct net_device* route_dev; TYPE_6__ m_neigh; TYPE_4__* tunnel; TYPE_1__* tun_info; } ;
struct ipv6hdr {int hop_limit; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_10__ {TYPE_2__ ipv6; } ;
struct ip_tunnel_key {int ttl; int /*<<< orphan*/  tos; TYPE_3__ u; int /*<<< orphan*/  label; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowlabel; } ;
struct TYPE_14__ {int /*<<< orphan*/  key_len; } ;
struct TYPE_12__ {int /*<<< orphan*/  family; } ;
struct TYPE_11__ {int (* calc_hlen ) (struct mlx5e_encap_entry*) ;} ;
struct TYPE_8__ {struct ip_tunnel_key key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_ENCAP_ENTRY_VALID ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_FDB ; 
 int NUD_VALID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,struct net_device*,struct mlx5e_encap_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipv6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_encap_header_size ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,int /*<<< orphan*/ *,struct mlx5e_encap_entry*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct mlx5e_encap_entry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct mlx5e_encap_entry*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct mlx5e_priv*,struct net_device*,struct net_device**,struct net_device**,struct flowi6*,struct neighbour**,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (struct mlx5e_encap_entry*) ; 

int FUNC25(struct mlx5e_priv *priv,
				    struct net_device *mirred_dev,
				    struct mlx5e_encap_entry *e)
{
	int max_encap_size = FUNC1(priv->mdev, max_encap_header_size);
	const struct ip_tunnel_key *tun_key = &e->tun_info->key;
	struct net_device *out_dev, *route_dev;
	struct neighbour *n = NULL;
	struct flowi6 fl6 = {};
	struct ipv6hdr *ip6h;
	int ipv6_encap_size;
	char *encap_header;
	u8 nud_state, ttl;
	int err;

	ttl = tun_key->ttl;

	fl6.flowlabel = FUNC7(FUNC3(tun_key->tos), tun_key->label);
	fl6.daddr = tun_key->u.ipv6.dst;
	fl6.saddr = tun_key->u.ipv6.src;

	err = FUNC18(priv, mirred_dev, &out_dev, &route_dev,
				      &fl6, &n, &ttl);
	if (err)
		return err;

	ipv6_encap_size =
		(FUNC8(route_dev) ? VLAN_ETH_HLEN : ETH_HLEN) +
		sizeof(struct ipv6hdr) +
		e->tunnel->calc_hlen(e);

	if (max_encap_size < ipv6_encap_size) {
		FUNC12(priv->mdev, "encap size %d too big, max supported is %d\n",
			       ipv6_encap_size, max_encap_size);
		return -EOPNOTSUPP;
	}

	encap_header = FUNC10(ipv6_encap_size, GFP_KERNEL);
	if (!encap_header)
		return -ENOMEM;

	/* used by mlx5e_detach_encap to lookup a neigh hash table
	 * entry in the neigh hash table when a user deletes a rule
	 */
	e->m_neigh.dev = n->dev;
	e->m_neigh.family = n->ops->family;
	FUNC11(&e->m_neigh.dst_ip, n->primary_key, n->tbl->key_len);
	e->out_dev = out_dev;
	e->route_dev = route_dev;

	/* It's importent to add the neigh to the hash table before checking
	 * the neigh validity state. So if we'll get a notification, in case the
	 * neigh changes it's validity state, we would find the relevant neigh
	 * in the hash.
	 */
	err = FUNC15(FUNC21(out_dev), e);
	if (err)
		goto free_encap;

	FUNC22(&n->lock);
	nud_state = n->nud_state;
	FUNC4(e->h_dest, n->ha);
	FUNC23(&n->lock);

	/* add ethernet header */
	ip6h = (struct ipv6hdr *)FUNC5(encap_header, route_dev, e,
						 ETH_P_IPV6);

	/* add ip header */
	FUNC6(ip6h, tun_key->tos, 0);
	/* the HW fills up ipv6 payload len */
	ip6h->hop_limit   = ttl;
	ip6h->daddr	  = fl6.daddr;
	ip6h->saddr	  = fl6.saddr;

	/* add tunneling protocol header */
	err = FUNC14((char *)ip6h + sizeof(struct ipv6hdr),
					 &ip6h->nexthdr, e);
	if (err)
		goto destroy_neigh_entry;

	e->encap_size = ipv6_encap_size;
	e->encap_header = encap_header;

	if (!(nud_state & NUD_VALID)) {
		FUNC19(n, NULL);
		/* the encap entry will be made valid on neigh update event
		 * and not used before that.
		 */
		goto out;
	}

	e->pkt_reformat = FUNC13(priv->mdev,
						     e->reformat_type,
						     ipv6_encap_size, encap_header,
						     MLX5_FLOW_NAMESPACE_FDB);
	if (FUNC0(e->pkt_reformat)) {
		err = FUNC2(e->pkt_reformat);
		goto destroy_neigh_entry;
	}

	e->flags |= MLX5_ENCAP_ENTRY_VALID;
	FUNC17(FUNC21(out_dev));
	FUNC20(n);
	return err;

destroy_neigh_entry:
	FUNC16(FUNC21(e->out_dev), e);
free_encap:
	FUNC9(encap_header);
out:
	if (n)
		FUNC20(n);
	return err;
}