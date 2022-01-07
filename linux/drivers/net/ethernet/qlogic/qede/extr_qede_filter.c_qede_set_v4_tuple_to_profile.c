
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int stringify; int build_hdr; int ip_comp; int mode; scalar_t__ src_ipv4; scalar_t__ dst_ipv4; scalar_t__ dst_port; scalar_t__ src_port; } ;


 int DP_INFO (struct qede_dev*,char*) ;
 int EOPNOTSUPP ;
 int QED_FILTER_CONFIG_MODE_5_TUPLE ;
 int QED_FILTER_CONFIG_MODE_IP_DEST ;
 int QED_FILTER_CONFIG_MODE_IP_SRC ;
 int QED_FILTER_CONFIG_MODE_L4_PORT ;
 int qede_flow_build_ipv4_hdr ;
 int qede_flow_spec_ipv4_cmp ;
 int qede_flow_stringify_ipv4_hdr ;

__attribute__((used)) static int qede_set_v4_tuple_to_profile(struct qede_dev *edev,
     struct qede_arfs_tuple *t)
{



 if (t->src_port && t->dst_port && t->src_ipv4 && t->dst_ipv4) {
  t->mode = QED_FILTER_CONFIG_MODE_5_TUPLE;
 } else if (!t->src_port && t->dst_port &&
     !t->src_ipv4 && !t->dst_ipv4) {
  t->mode = QED_FILTER_CONFIG_MODE_L4_PORT;
 } else if (!t->src_port && !t->dst_port &&
     !t->dst_ipv4 && t->src_ipv4) {
  t->mode = QED_FILTER_CONFIG_MODE_IP_SRC;
 } else if (!t->src_port && !t->dst_port &&
     t->dst_ipv4 && !t->src_ipv4) {
  t->mode = QED_FILTER_CONFIG_MODE_IP_DEST;
 } else {
  DP_INFO(edev, "Invalid N-tuple\n");
  return -EOPNOTSUPP;
 }

 t->ip_comp = qede_flow_spec_ipv4_cmp;
 t->build_hdr = qede_flow_build_ipv4_hdr;
 t->stringify = qede_flow_stringify_ipv4_hdr;

 return 0;
}
