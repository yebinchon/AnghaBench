
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int bitmap; } ;
struct mlx4_en_priv {int* tx_ring_num; int rx_ring_num; TYPE_4__* mdev; TYPE_1__ stats_bitmap; } ;
struct bitmap_iterator {int dummy; } ;
struct TYPE_8__ {TYPE_3__* dev; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_2__ caps; } ;


 int ARRAY_SIZE (int *) ;
 int ETH_GSTRING_LEN ;



 int MLX4_DEV_CAP_FLAG_UC_LOOPBACK ;
 int MLX4_EN_NUM_SELF_TEST ;
 int NUM_ALL_STATS ;
 int NUM_FLOW_STATS ;
 int NUM_MAIN_STATS ;
 int NUM_PF_STATS ;
 int NUM_PHY_STATS ;
 int NUM_PKT_STATS ;
 int NUM_PORT_STATS ;
 int NUM_XDP_STATS ;
 size_t TX ;
 int bitmap_iterator_inc (struct bitmap_iterator*) ;
 int bitmap_iterator_init (struct bitmap_iterator*,int ,int ) ;
 int bitmap_iterator_test (struct bitmap_iterator*) ;
 int * main_strings ;
 int * mlx4_en_priv_flags ;
 int * mlx4_en_test_names ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int) ;
 int strcpy (int *,int ) ;

__attribute__((used)) static void mlx4_en_get_strings(struct net_device *dev,
    uint32_t stringset, uint8_t *data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int index = 0;
 int i, strings = 0;
 struct bitmap_iterator it;

 bitmap_iterator_init(&it, priv->stats_bitmap.bitmap, NUM_ALL_STATS);

 switch (stringset) {
 case 128:
  for (i = 0; i < MLX4_EN_NUM_SELF_TEST - 2; i++)
   strcpy(data + i * ETH_GSTRING_LEN, mlx4_en_test_names[i]);
  if (priv->mdev->dev->caps.flags & MLX4_DEV_CAP_FLAG_UC_LOOPBACK)
   for (; i < MLX4_EN_NUM_SELF_TEST; i++)
    strcpy(data + i * ETH_GSTRING_LEN, mlx4_en_test_names[i]);
  break;

 case 129:

  for (i = 0; i < NUM_MAIN_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < NUM_PORT_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < NUM_PF_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < NUM_FLOW_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < NUM_PKT_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < NUM_XDP_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < NUM_PHY_STATS; i++, strings++,
       bitmap_iterator_inc(&it))
   if (bitmap_iterator_test(&it))
    strcpy(data + (index++) * ETH_GSTRING_LEN,
           main_strings[strings]);

  for (i = 0; i < priv->tx_ring_num[TX]; i++) {
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "tx%d_packets", i);
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "tx%d_bytes", i);
  }
  for (i = 0; i < priv->rx_ring_num; i++) {
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "rx%d_packets", i);
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "rx%d_bytes", i);
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "rx%d_dropped", i);
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "rx%d_xdp_drop", i);
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "rx%d_xdp_tx", i);
   sprintf(data + (index++) * ETH_GSTRING_LEN,
    "rx%d_xdp_tx_full", i);
  }
  break;
 case 130:
  for (i = 0; i < ARRAY_SIZE(mlx4_en_priv_flags); i++)
   strcpy(data + i * ETH_GSTRING_LEN,
          mlx4_en_priv_flags[i]);
  break;

 }
}
