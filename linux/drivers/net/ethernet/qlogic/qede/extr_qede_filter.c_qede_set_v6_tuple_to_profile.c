
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int build_hdr; int ip_comp; int mode; int src_ipv6; int dst_ipv6; scalar_t__ dst_port; scalar_t__ src_port; } ;
struct in6_addr {int dummy; } ;


 int DP_INFO (struct qede_dev*,char*) ;
 int EOPNOTSUPP ;
 int QED_FILTER_CONFIG_MODE_5_TUPLE ;
 int QED_FILTER_CONFIG_MODE_IP_DEST ;
 int QED_FILTER_CONFIG_MODE_IP_SRC ;
 int QED_FILTER_CONFIG_MODE_L4_PORT ;
 scalar_t__ memcmp (int *,struct in6_addr*,int) ;
 int qede_flow_build_ipv6_hdr ;
 int qede_flow_spec_ipv6_cmp ;

__attribute__((used)) static int qede_set_v6_tuple_to_profile(struct qede_dev *edev,
     struct qede_arfs_tuple *t,
     struct in6_addr *zaddr)
{



 if (t->src_port && t->dst_port &&
     memcmp(&t->src_ipv6, zaddr, sizeof(struct in6_addr)) &&
     memcmp(&t->dst_ipv6, zaddr, sizeof(struct in6_addr))) {
  t->mode = QED_FILTER_CONFIG_MODE_5_TUPLE;
 } else if (!t->src_port && t->dst_port &&
     !memcmp(&t->src_ipv6, zaddr, sizeof(struct in6_addr)) &&
     !memcmp(&t->dst_ipv6, zaddr, sizeof(struct in6_addr))) {
  t->mode = QED_FILTER_CONFIG_MODE_L4_PORT;
 } else if (!t->src_port && !t->dst_port &&
     !memcmp(&t->dst_ipv6, zaddr, sizeof(struct in6_addr)) &&
     memcmp(&t->src_ipv6, zaddr, sizeof(struct in6_addr))) {
  t->mode = QED_FILTER_CONFIG_MODE_IP_SRC;
 } else if (!t->src_port && !t->dst_port &&
     memcmp(&t->dst_ipv6, zaddr, sizeof(struct in6_addr)) &&
     !memcmp(&t->src_ipv6, zaddr, sizeof(struct in6_addr))) {
  t->mode = QED_FILTER_CONFIG_MODE_IP_DEST;
 } else {
  DP_INFO(edev, "Invalid N-tuple\n");
  return -EOPNOTSUPP;
 }

 t->ip_comp = qede_flow_spec_ipv6_cmp;
 t->build_hdr = qede_flow_build_ipv6_hdr;

 return 0;
}
