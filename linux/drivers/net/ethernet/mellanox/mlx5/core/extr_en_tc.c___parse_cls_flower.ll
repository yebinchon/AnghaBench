; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c___parse_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c___parse_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { %struct.TYPE_29__, %struct.TYPE_50__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_30__, %struct.TYPE_26__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.mlx5e_priv = type { i32, i32 }
%struct.mlx5_flow_spec = type { i8*, i8* }
%struct.flow_cls_offload = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_rule = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_49__*, %struct.TYPE_48__* }
%struct.TYPE_49__ = type { i32, i64 }
%struct.TYPE_48__ = type { i64, i64 }
%struct.flow_dissector_key_vlan = type { i32, i64, i32 }
%struct.flow_match_vlan = type { %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan* }
%struct.flow_match_eth_addrs = type { %struct.TYPE_45__*, %struct.TYPE_44__* }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.flow_match_control = type { %struct.TYPE_47__*, %struct.TYPE_46__* }
%struct.TYPE_47__ = type { i64, i32 }
%struct.TYPE_46__ = type { i32 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_32__*, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_31__ = type { i64, i64 }
%struct.flow_match_ip = type { %struct.TYPE_34__*, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.flow_match_ports = type { %struct.TYPE_37__*, %struct.TYPE_35__* }
%struct.TYPE_37__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64, i64 }
%struct.flow_match_tcp = type { %struct.TYPE_39__*, %struct.TYPE_38__* }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { i64 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_META = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_CVLAN = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_CONTROL = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_TCP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_IP = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_ENC_OPTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Unsupported key\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported key used: 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECAP = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@MLX5_MATCH_L2 = common dso_local global i64 0, align 8
@ETH_P_8021AD = common dso_local global i32 0, align 4
@svlan_tag = common dso_local global i32 0, align 4
@cvlan_tag = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@MLX5_MATCH_NONE = common dso_local global i64 0, align 8
@fte_match_set_misc = common dso_local global i32 0, align 4
@outer_second_svlan_tag = common dso_local global i32 0, align 4
@outer_second_cvlan_tag = common dso_local global i32 0, align 4
@outer_second_vid = common dso_local global i32 0, align 4
@outer_second_prio = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@smac_47_16 = common dso_local global i32 0, align 4
@FLOW_DIS_FIRST_FRAG = common dso_local global i32 0, align 4
@FLOW_DIS_IS_FRAGMENT = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@MLX5_MATCH_L3 = common dso_local global i64 0, align 8
@ip_protocol = common dso_local global i32 0, align 4
@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@IPV6_ADDR_ANY = common dso_local global i64 0, align 8
@ip_ecn = common dso_local global i32 0, align 4
@ip_dscp = common dso_local global i32 0, align 4
@ttl_hoplimit = common dso_local global i32 0, align 4
@ft_field_support = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Matching on TTL is not supported\00", align 1
@tcp_sport = common dso_local global i32 0, align 4
@tcp_dport = common dso_local global i32 0, align 4
@udp_sport = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Only UDP and TCP transports are supported for L4 matching\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Only UDP and TCP transport are supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_MATCH_L4 = common dso_local global i64 0, align 8
@tcp_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, %struct.net_device*, i64*, i64*)* @__parse_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_cls_flower(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2, %struct.net_device* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5_flow_spec*, align 8
  %10 = alloca %struct.flow_cls_offload*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.netlink_ext_ack*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.flow_rule*, align 8
  %20 = alloca %struct.flow_dissector*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca %struct.flow_match_basic, align 8
  %25 = alloca %struct.flow_dissector_key_vlan, align 8
  %26 = alloca %struct.flow_dissector_key_vlan, align 8
  %27 = alloca %struct.flow_match_vlan, align 8
  %28 = alloca %struct.flow_match_vlan, align 8
  %29 = alloca %struct.flow_match_eth_addrs, align 8
  %30 = alloca %struct.flow_match_control, align 8
  %31 = alloca %struct.flow_match_basic, align 8
  %32 = alloca %struct.flow_match_ipv4_addrs, align 8
  %33 = alloca %struct.flow_match_ipv6_addrs, align 8
  %34 = alloca %struct.flow_match_ip, align 8
  %35 = alloca %struct.flow_match_ports, align 8
  %36 = alloca %struct.flow_match_tcp, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %8, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %9, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %37 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %38 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %39, align 8
  store %struct.netlink_ext_ack* %40, %struct.netlink_ext_ack** %14, align 8
  %41 = load i32, i32* @fte_match_param, align 4
  %42 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @outer_headers, align 4
  %46 = call i8* @MLX5_ADDR_OF(i32 %41, i8* %44, i32 %45)
  store i8* %46, i8** %15, align 8
  %47 = load i32, i32* @fte_match_param, align 4
  %48 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @outer_headers, align 4
  %52 = call i8* @MLX5_ADDR_OF(i32 %47, i8* %50, i32 %51)
  store i8* %52, i8** %16, align 8
  %53 = load i32, i32* @fte_match_param, align 4
  %54 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @misc_parameters, align 4
  %58 = call i8* @MLX5_ADDR_OF(i32 %53, i8* %56, i32 %57)
  store i8* %58, i8** %17, align 8
  %59 = load i32, i32* @fte_match_param, align 4
  %60 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @misc_parameters, align 4
  %64 = call i8* @MLX5_ADDR_OF(i32 %59, i8* %62, i32 %63)
  store i8* %64, i8** %18, align 8
  %65 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %66 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %65)
  store %struct.flow_rule* %66, %struct.flow_rule** %19, align 8
  %67 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %68 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %68, i32 0, i32 0
  %70 = load %struct.flow_dissector*, %struct.flow_dissector** %69, align 8
  store %struct.flow_dissector* %70, %struct.flow_dissector** %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %71 = load i64*, i64** %13, align 8
  store i64* %71, i64** %23, align 8
  %72 = load %struct.flow_dissector*, %struct.flow_dissector** %20, align 8
  %73 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @FLOW_DISSECTOR_KEY_META, align 8
  %76 = call i32 @BIT(i64 %75)
  %77 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %78 = call i32 @BIT(i64 %77)
  %79 = or i32 %76, %78
  %80 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %81 = call i32 @BIT(i64 %80)
  %82 = or i32 %79, %81
  %83 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %84 = call i32 @BIT(i64 %83)
  %85 = or i32 %82, %84
  %86 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %87 = call i32 @BIT(i64 %86)
  %88 = or i32 %85, %87
  %89 = load i64, i64* @FLOW_DISSECTOR_KEY_CVLAN, align 8
  %90 = call i32 @BIT(i64 %89)
  %91 = or i32 %88, %90
  %92 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %93 = call i32 @BIT(i64 %92)
  %94 = or i32 %91, %93
  %95 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %96 = call i32 @BIT(i64 %95)
  %97 = or i32 %94, %96
  %98 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %99 = call i32 @BIT(i64 %98)
  %100 = or i32 %97, %99
  %101 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 8
  %102 = call i32 @BIT(i64 %101)
  %103 = or i32 %100, %102
  %104 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, align 8
  %105 = call i32 @BIT(i64 %104)
  %106 = or i32 %103, %105
  %107 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, align 8
  %108 = call i32 @BIT(i64 %107)
  %109 = or i32 %106, %108
  %110 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 8
  %111 = call i32 @BIT(i64 %110)
  %112 = or i32 %109, %111
  %113 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_CONTROL, align 8
  %114 = call i32 @BIT(i64 %113)
  %115 = or i32 %112, %114
  %116 = load i64, i64* @FLOW_DISSECTOR_KEY_TCP, align 8
  %117 = call i32 @BIT(i64 %116)
  %118 = or i32 %115, %117
  %119 = load i64, i64* @FLOW_DISSECTOR_KEY_IP, align 8
  %120 = call i32 @BIT(i64 %119)
  %121 = or i32 %118, %120
  %122 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_IP, align 8
  %123 = call i32 @BIT(i64 %122)
  %124 = or i32 %121, %123
  %125 = load i64, i64* @FLOW_DISSECTOR_KEY_ENC_OPTS, align 8
  %126 = call i32 @BIT(i64 %125)
  %127 = or i32 %124, %126
  %128 = xor i32 %127, -1
  %129 = and i32 %74, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %6
  %132 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %133 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %135 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.flow_dissector*, %struct.flow_dissector** %20, align 8
  %138 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @netdev_warn(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EOPNOTSUPP, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %925

143:                                              ; preds = %6
  %144 = load %struct.net_device*, %struct.net_device** %11, align 8
  %145 = call i64 @mlx5e_get_tc_tun(%struct.net_device* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %143
  %148 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %149 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %150 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %151 = load %struct.net_device*, %struct.net_device** %11, align 8
  %152 = load i64*, i64** %13, align 8
  %153 = call i64 @parse_tunnel_attr(%struct.mlx5e_priv* %148, %struct.mlx5_flow_spec* %149, %struct.flow_cls_offload* %150, %struct.net_device* %151, i64* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %925

158:                                              ; preds = %147
  %159 = load i64*, i64** %12, align 8
  store i64* %159, i64** %23, align 8
  %160 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %161 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %162 = call i8* @get_match_headers_criteria(i32 %160, %struct.mlx5_flow_spec* %161)
  store i8* %162, i8** %15, align 8
  %163 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %164 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %165 = call i8* @get_match_headers_value(i32 %163, %struct.mlx5_flow_spec* %164)
  store i8* %165, i8** %16, align 8
  br label %166

166:                                              ; preds = %158, %143
  %167 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %168 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %169 = call i64 @flow_rule_match_key(%struct.flow_rule* %167, i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %201

171:                                              ; preds = %166
  %172 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %173 = call i32 @flow_rule_match_basic(%struct.flow_rule* %172, %struct.flow_match_basic* %24)
  %174 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %175 = load i8*, i8** %15, align 8
  %176 = load i32, i32* @ethertype, align 4
  %177 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %24, i32 0, i32 0
  %178 = load %struct.TYPE_49__*, %struct.TYPE_49__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @ntohs(i64 %180)
  %182 = call i32 @MLX5_SET(i32 %174, i8* %175, i32 %176, i32 %181)
  %183 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* @ethertype, align 4
  %186 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %24, i32 0, i32 1
  %187 = load %struct.TYPE_48__*, %struct.TYPE_48__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @ntohs(i64 %189)
  %191 = call i32 @MLX5_SET(i32 %183, i8* %184, i32 %185, i32 %190)
  %192 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %24, i32 0, i32 0
  %193 = load %struct.TYPE_49__*, %struct.TYPE_49__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %171
  %198 = load i64, i64* @MLX5_MATCH_L2, align 8
  %199 = load i64*, i64** %23, align 8
  store i64 %198, i64* %199, align 8
  br label %200

200:                                              ; preds = %197, %171
  br label %201

201:                                              ; preds = %200, %166
  %202 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %203 = load i64, i64* @FLOW_DISSECTOR_KEY_VLAN, align 8
  %204 = call i64 @flow_rule_match_key(%struct.flow_rule* %202, i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load %struct.net_device*, %struct.net_device** %11, align 8
  %208 = call i64 @is_vlan_dev(%struct.net_device* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %319

210:                                              ; preds = %206, %201
  %211 = load %struct.net_device*, %struct.net_device** %11, align 8
  %212 = call i64 @is_vlan_dev(%struct.net_device* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  store %struct.flow_dissector_key_vlan* %26, %struct.flow_dissector_key_vlan** %215, align 8
  %216 = load %struct.net_device*, %struct.net_device** %11, align 8
  %217 = call i32 @vlan_dev_vlan_id(%struct.net_device* %216)
  %218 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  %219 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %218, align 8
  %220 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  %221 = load %struct.net_device*, %struct.net_device** %11, align 8
  %222 = call i64 @vlan_dev_vlan_proto(%struct.net_device* %221)
  %223 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  %224 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %223, align 8
  %225 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %224, i32 0, i32 1
  store i64 %222, i64* %225, align 8
  %226 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  %227 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %226, align 8
  %228 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %227, i32 0, i32 2
  store i32 0, i32* %228, align 8
  %229 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  store %struct.flow_dissector_key_vlan* %25, %struct.flow_dissector_key_vlan** %229, align 8
  %230 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %231 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %230, align 8
  %232 = call i32 @memset(%struct.flow_dissector_key_vlan* %231, i32 255, i32 24)
  %233 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %234 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %233, align 8
  %235 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %234, i32 0, i32 2
  store i32 0, i32* %235, align 8
  br label %239

236:                                              ; preds = %210
  %237 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %238 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %237, %struct.flow_match_vlan* %27)
  br label %239

239:                                              ; preds = %236, %214
  %240 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %241 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %240, align 8
  %242 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %247 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %246, align 8
  %248 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %253 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %252, align 8
  %254 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %318

257:                                              ; preds = %251, %245, %239
  %258 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  %259 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %258, align 8
  %260 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @ETH_P_8021AD, align 4
  %263 = call i64 @htons(i32 %262)
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %257
  %266 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %267 = load i8*, i8** %15, align 8
  %268 = load i32, i32* @svlan_tag, align 4
  %269 = call i32 @MLX5_SET(i32 %266, i8* %267, i32 %268, i32 1)
  %270 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %271 = load i8*, i8** %16, align 8
  %272 = load i32, i32* @svlan_tag, align 4
  %273 = call i32 @MLX5_SET(i32 %270, i8* %271, i32 %272, i32 1)
  br label %283

274:                                              ; preds = %257
  %275 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %276 = load i8*, i8** %15, align 8
  %277 = load i32, i32* @cvlan_tag, align 4
  %278 = call i32 @MLX5_SET(i32 %275, i8* %276, i32 %277, i32 1)
  %279 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %280 = load i8*, i8** %16, align 8
  %281 = load i32, i32* @cvlan_tag, align 4
  %282 = call i32 @MLX5_SET(i32 %279, i8* %280, i32 %281, i32 1)
  br label %283

283:                                              ; preds = %274, %265
  %284 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %285 = load i8*, i8** %15, align 8
  %286 = load i32, i32* @first_vid, align 4
  %287 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %288 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %287, align 8
  %289 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @MLX5_SET(i32 %284, i8* %285, i32 %286, i32 %290)
  %292 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %293 = load i8*, i8** %16, align 8
  %294 = load i32, i32* @first_vid, align 4
  %295 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  %296 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %295, align 8
  %297 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @MLX5_SET(i32 %292, i8* %293, i32 %294, i32 %298)
  %300 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %301 = load i8*, i8** %15, align 8
  %302 = load i32, i32* @first_prio, align 4
  %303 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 1
  %304 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %303, align 8
  %305 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @MLX5_SET(i32 %300, i8* %301, i32 %302, i32 %306)
  %308 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %309 = load i8*, i8** %16, align 8
  %310 = load i32, i32* @first_prio, align 4
  %311 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %27, i32 0, i32 0
  %312 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %311, align 8
  %313 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @MLX5_SET(i32 %308, i8* %309, i32 %310, i32 %314)
  %316 = load i64, i64* @MLX5_MATCH_L2, align 8
  %317 = load i64*, i64** %23, align 8
  store i64 %316, i64* %317, align 8
  br label %318

318:                                              ; preds = %283, %251
  br label %332

319:                                              ; preds = %206
  %320 = load i64*, i64** %23, align 8
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @MLX5_MATCH_NONE, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %326 = load i8*, i8** %15, align 8
  %327 = load i32, i32* @cvlan_tag, align 4
  %328 = call i32 @MLX5_SET(i32 %325, i8* %326, i32 %327, i32 1)
  %329 = load i64, i64* @MLX5_MATCH_L2, align 8
  %330 = load i64*, i64** %23, align 8
  store i64 %329, i64* %330, align 8
  br label %331

331:                                              ; preds = %324, %319
  br label %332

332:                                              ; preds = %331, %318
  %333 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %334 = load i64, i64* @FLOW_DISSECTOR_KEY_CVLAN, align 8
  %335 = call i64 @flow_rule_match_key(%struct.flow_rule* %333, i64 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %419

337:                                              ; preds = %332
  %338 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %339 = call i32 @flow_rule_match_cvlan(%struct.flow_rule* %338, %struct.flow_match_vlan* %28)
  %340 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 1
  %341 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %340, align 8
  %342 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %357, label %345

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 1
  %347 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %346, align 8
  %348 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %357, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 1
  %353 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %352, align 8
  %354 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %418

357:                                              ; preds = %351, %345, %337
  %358 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 0
  %359 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %358, align 8
  %360 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* @ETH_P_8021AD, align 4
  %363 = call i64 @htons(i32 %362)
  %364 = icmp eq i64 %361, %363
  br i1 %364, label %365, label %374

365:                                              ; preds = %357
  %366 = load i32, i32* @fte_match_set_misc, align 4
  %367 = load i8*, i8** %17, align 8
  %368 = load i32, i32* @outer_second_svlan_tag, align 4
  %369 = call i32 @MLX5_SET(i32 %366, i8* %367, i32 %368, i32 1)
  %370 = load i32, i32* @fte_match_set_misc, align 4
  %371 = load i8*, i8** %18, align 8
  %372 = load i32, i32* @outer_second_svlan_tag, align 4
  %373 = call i32 @MLX5_SET(i32 %370, i8* %371, i32 %372, i32 1)
  br label %383

374:                                              ; preds = %357
  %375 = load i32, i32* @fte_match_set_misc, align 4
  %376 = load i8*, i8** %17, align 8
  %377 = load i32, i32* @outer_second_cvlan_tag, align 4
  %378 = call i32 @MLX5_SET(i32 %375, i8* %376, i32 %377, i32 1)
  %379 = load i32, i32* @fte_match_set_misc, align 4
  %380 = load i8*, i8** %18, align 8
  %381 = load i32, i32* @outer_second_cvlan_tag, align 4
  %382 = call i32 @MLX5_SET(i32 %379, i8* %380, i32 %381, i32 1)
  br label %383

383:                                              ; preds = %374, %365
  %384 = load i32, i32* @fte_match_set_misc, align 4
  %385 = load i8*, i8** %17, align 8
  %386 = load i32, i32* @outer_second_vid, align 4
  %387 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 1
  %388 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %387, align 8
  %389 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @MLX5_SET(i32 %384, i8* %385, i32 %386, i32 %390)
  %392 = load i32, i32* @fte_match_set_misc, align 4
  %393 = load i8*, i8** %18, align 8
  %394 = load i32, i32* @outer_second_vid, align 4
  %395 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 0
  %396 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %395, align 8
  %397 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @MLX5_SET(i32 %392, i8* %393, i32 %394, i32 %398)
  %400 = load i32, i32* @fte_match_set_misc, align 4
  %401 = load i8*, i8** %17, align 8
  %402 = load i32, i32* @outer_second_prio, align 4
  %403 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 1
  %404 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %403, align 8
  %405 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @MLX5_SET(i32 %400, i8* %401, i32 %402, i32 %406)
  %408 = load i32, i32* @fte_match_set_misc, align 4
  %409 = load i8*, i8** %18, align 8
  %410 = load i32, i32* @outer_second_prio, align 4
  %411 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %28, i32 0, i32 0
  %412 = load %struct.flow_dissector_key_vlan*, %struct.flow_dissector_key_vlan** %411, align 8
  %413 = getelementptr inbounds %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @MLX5_SET(i32 %408, i8* %409, i32 %410, i32 %414)
  %416 = load i64, i64* @MLX5_MATCH_L2, align 8
  %417 = load i64*, i64** %23, align 8
  store i64 %416, i64* %417, align 8
  br label %418

418:                                              ; preds = %383, %351
  br label %419

419:                                              ; preds = %418, %332
  %420 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %421 = load i64, i64* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 8
  %422 = call i64 @flow_rule_match_key(%struct.flow_rule* %420, i64 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %480

424:                                              ; preds = %419
  %425 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %426 = call i32 @flow_rule_match_eth_addrs(%struct.flow_rule* %425, %struct.flow_match_eth_addrs* %29)
  %427 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %428 = load i8*, i8** %15, align 8
  %429 = load i32, i32* @dmac_47_16, align 4
  %430 = call i8* @MLX5_ADDR_OF(i32 %427, i8* %428, i32 %429)
  %431 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %29, i32 0, i32 0
  %432 = load %struct.TYPE_45__*, %struct.TYPE_45__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @ether_addr_copy(i8* %430, i32 %434)
  %436 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %437 = load i8*, i8** %16, align 8
  %438 = load i32, i32* @dmac_47_16, align 4
  %439 = call i8* @MLX5_ADDR_OF(i32 %436, i8* %437, i32 %438)
  %440 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %29, i32 0, i32 1
  %441 = load %struct.TYPE_44__*, %struct.TYPE_44__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @ether_addr_copy(i8* %439, i32 %443)
  %445 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %446 = load i8*, i8** %15, align 8
  %447 = load i32, i32* @smac_47_16, align 4
  %448 = call i8* @MLX5_ADDR_OF(i32 %445, i8* %446, i32 %447)
  %449 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %29, i32 0, i32 0
  %450 = load %struct.TYPE_45__*, %struct.TYPE_45__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @ether_addr_copy(i8* %448, i32 %452)
  %454 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %455 = load i8*, i8** %16, align 8
  %456 = load i32, i32* @smac_47_16, align 4
  %457 = call i8* @MLX5_ADDR_OF(i32 %454, i8* %455, i32 %456)
  %458 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %29, i32 0, i32 1
  %459 = load %struct.TYPE_44__*, %struct.TYPE_44__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @ether_addr_copy(i8* %457, i32 %461)
  %463 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %29, i32 0, i32 0
  %464 = load %struct.TYPE_45__*, %struct.TYPE_45__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @is_zero_ether_addr(i32 %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %424
  %470 = getelementptr inbounds %struct.flow_match_eth_addrs, %struct.flow_match_eth_addrs* %29, i32 0, i32 0
  %471 = load %struct.TYPE_45__*, %struct.TYPE_45__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @is_zero_ether_addr(i32 %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %469, %424
  %477 = load i64, i64* @MLX5_MATCH_L2, align 8
  %478 = load i64*, i64** %23, align 8
  store i64 %477, i64* %478, align 8
  br label %479

479:                                              ; preds = %476, %469
  br label %480

480:                                              ; preds = %479, %419
  %481 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %482 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %483 = call i64 @flow_rule_match_key(%struct.flow_rule* %481, i64 %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %540

485:                                              ; preds = %480
  %486 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %487 = call i32 @flow_rule_match_control(%struct.flow_rule* %486, %struct.flow_match_control* %30)
  %488 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %30, i32 0, i32 0
  %489 = load %struct.TYPE_47__*, %struct.TYPE_47__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %21, align 8
  %492 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %30, i32 0, i32 1
  %493 = load %struct.TYPE_46__*, %struct.TYPE_46__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @FLOW_DIS_FIRST_FRAG, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %502

499:                                              ; preds = %485
  %500 = load i32, i32* @EOPNOTSUPP, align 4
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %7, align 4
  br label %925

502:                                              ; preds = %485
  %503 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %30, i32 0, i32 1
  %504 = load %struct.TYPE_46__*, %struct.TYPE_46__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %539

510:                                              ; preds = %502
  %511 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %512 = load i8*, i8** %15, align 8
  %513 = load i32, i32* @frag, align 4
  %514 = call i32 @MLX5_SET(i32 %511, i8* %512, i32 %513, i32 1)
  %515 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %516 = load i8*, i8** %16, align 8
  %517 = load i32, i32* @frag, align 4
  %518 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %30, i32 0, i32 0
  %519 = load %struct.TYPE_47__*, %struct.TYPE_47__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %523 = and i32 %521, %522
  %524 = call i32 @MLX5_SET(i32 %515, i8* %516, i32 %517, i32 %523)
  %525 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %30, i32 0, i32 0
  %526 = load %struct.TYPE_47__*, %struct.TYPE_47__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %510
  %533 = load i64, i64* @MLX5_MATCH_L2, align 8
  %534 = load i64*, i64** %23, align 8
  store i64 %533, i64* %534, align 8
  br label %538

535:                                              ; preds = %510
  %536 = load i64, i64* @MLX5_MATCH_L3, align 8
  %537 = load i64*, i64** %23, align 8
  store i64 %536, i64* %537, align 8
  br label %538

538:                                              ; preds = %535, %532
  br label %539

539:                                              ; preds = %538, %502
  br label %540

540:                                              ; preds = %539, %480
  %541 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %542 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %543 = call i64 @flow_rule_match_key(%struct.flow_rule* %541, i64 %542)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %578

545:                                              ; preds = %540
  %546 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %547 = call i32 @flow_rule_match_basic(%struct.flow_rule* %546, %struct.flow_match_basic* %31)
  %548 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %31, i32 0, i32 1
  %549 = load %struct.TYPE_48__*, %struct.TYPE_48__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %22, align 8
  %552 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %553 = load i8*, i8** %15, align 8
  %554 = load i32, i32* @ip_protocol, align 4
  %555 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %31, i32 0, i32 0
  %556 = load %struct.TYPE_49__*, %struct.TYPE_49__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = call i32 @MLX5_SET(i32 %552, i8* %553, i32 %554, i32 %558)
  %560 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %561 = load i8*, i8** %16, align 8
  %562 = load i32, i32* @ip_protocol, align 4
  %563 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %31, i32 0, i32 1
  %564 = load %struct.TYPE_48__*, %struct.TYPE_48__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = trunc i64 %566 to i32
  %568 = call i32 @MLX5_SET(i32 %560, i8* %561, i32 %562, i32 %567)
  %569 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %31, i32 0, i32 0
  %570 = load %struct.TYPE_49__*, %struct.TYPE_49__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %545
  %575 = load i64, i64* @MLX5_MATCH_L3, align 8
  %576 = load i64*, i64** %23, align 8
  store i64 %575, i64* %576, align 8
  br label %577

577:                                              ; preds = %574, %545
  br label %578

578:                                              ; preds = %577, %540
  %579 = load i64, i64* %21, align 8
  %580 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %581 = icmp eq i64 %579, %580
  br i1 %581, label %582, label %632

582:                                              ; preds = %578
  %583 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %584 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %583, %struct.flow_match_ipv4_addrs* %32)
  %585 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %586 = load i8*, i8** %15, align 8
  %587 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %588 = call i8* @MLX5_ADDR_OF(i32 %585, i8* %586, i32 %587)
  %589 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %32, i32 0, i32 0
  %590 = load %struct.TYPE_28__*, %struct.TYPE_28__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %590, i32 0, i32 1
  %592 = call i32 @memcpy(i8* %588, i64* %591, i32 8)
  %593 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %594 = load i8*, i8** %16, align 8
  %595 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %596 = call i8* @MLX5_ADDR_OF(i32 %593, i8* %594, i32 %595)
  %597 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %32, i32 0, i32 1
  %598 = load %struct.TYPE_27__*, %struct.TYPE_27__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %598, i32 0, i32 1
  %600 = call i32 @memcpy(i8* %596, i64* %599, i32 8)
  %601 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %602 = load i8*, i8** %15, align 8
  %603 = load i32, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %604 = call i8* @MLX5_ADDR_OF(i32 %601, i8* %602, i32 %603)
  %605 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %32, i32 0, i32 0
  %606 = load %struct.TYPE_28__*, %struct.TYPE_28__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %606, i32 0, i32 0
  %608 = call i32 @memcpy(i8* %604, i64* %607, i32 8)
  %609 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %610 = load i8*, i8** %16, align 8
  %611 = load i32, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %612 = call i8* @MLX5_ADDR_OF(i32 %609, i8* %610, i32 %611)
  %613 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %32, i32 0, i32 1
  %614 = load %struct.TYPE_27__*, %struct.TYPE_27__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %614, i32 0, i32 0
  %616 = call i32 @memcpy(i8* %612, i64* %615, i32 8)
  %617 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %32, i32 0, i32 0
  %618 = load %struct.TYPE_28__*, %struct.TYPE_28__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %618, i32 0, i32 1
  %620 = load i64, i64* %619, align 8
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %628, label %622

622:                                              ; preds = %582
  %623 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %32, i32 0, i32 0
  %624 = load %struct.TYPE_28__*, %struct.TYPE_28__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %624, i32 0, i32 0
  %626 = load i64, i64* %625, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %631

628:                                              ; preds = %622, %582
  %629 = load i64, i64* @MLX5_MATCH_L3, align 8
  %630 = load i64*, i64** %23, align 8
  store i64 %629, i64* %630, align 8
  br label %631

631:                                              ; preds = %628, %622
  br label %632

632:                                              ; preds = %631, %578
  %633 = load i64, i64* %21, align 8
  %634 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %635 = icmp eq i64 %633, %634
  br i1 %635, label %636, label %688

636:                                              ; preds = %632
  %637 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %638 = call i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule* %637, %struct.flow_match_ipv6_addrs* %33)
  %639 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %640 = load i8*, i8** %15, align 8
  %641 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %642 = call i8* @MLX5_ADDR_OF(i32 %639, i8* %640, i32 %641)
  %643 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %33, i32 0, i32 0
  %644 = load %struct.TYPE_32__*, %struct.TYPE_32__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %644, i32 0, i32 1
  %646 = call i32 @memcpy(i8* %642, i64* %645, i32 8)
  %647 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %648 = load i8*, i8** %16, align 8
  %649 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %650 = call i8* @MLX5_ADDR_OF(i32 %647, i8* %648, i32 %649)
  %651 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %33, i32 0, i32 1
  %652 = load %struct.TYPE_31__*, %struct.TYPE_31__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %652, i32 0, i32 1
  %654 = call i32 @memcpy(i8* %650, i64* %653, i32 8)
  %655 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %656 = load i8*, i8** %15, align 8
  %657 = load i32, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %658 = call i8* @MLX5_ADDR_OF(i32 %655, i8* %656, i32 %657)
  %659 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %33, i32 0, i32 0
  %660 = load %struct.TYPE_32__*, %struct.TYPE_32__** %659, align 8
  %661 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %660, i32 0, i32 0
  %662 = call i32 @memcpy(i8* %658, i64* %661, i32 8)
  %663 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %664 = load i8*, i8** %16, align 8
  %665 = load i32, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %666 = call i8* @MLX5_ADDR_OF(i32 %663, i8* %664, i32 %665)
  %667 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %33, i32 0, i32 1
  %668 = load %struct.TYPE_31__*, %struct.TYPE_31__** %667, align 8
  %669 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %668, i32 0, i32 0
  %670 = call i32 @memcpy(i8* %666, i64* %669, i32 8)
  %671 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %33, i32 0, i32 0
  %672 = load %struct.TYPE_32__*, %struct.TYPE_32__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %672, i32 0, i32 1
  %674 = call i64 @ipv6_addr_type(i64* %673)
  %675 = load i64, i64* @IPV6_ADDR_ANY, align 8
  %676 = icmp ne i64 %674, %675
  br i1 %676, label %684, label %677

677:                                              ; preds = %636
  %678 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %33, i32 0, i32 0
  %679 = load %struct.TYPE_32__*, %struct.TYPE_32__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %679, i32 0, i32 0
  %681 = call i64 @ipv6_addr_type(i64* %680)
  %682 = load i64, i64* @IPV6_ADDR_ANY, align 8
  %683 = icmp ne i64 %681, %682
  br i1 %683, label %684, label %687

684:                                              ; preds = %677, %636
  %685 = load i64, i64* @MLX5_MATCH_L3, align 8
  %686 = load i64*, i64** %23, align 8
  store i64 %685, i64* %686, align 8
  br label %687

687:                                              ; preds = %684, %677
  br label %688

688:                                              ; preds = %687, %632
  %689 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %690 = load i64, i64* @FLOW_DISSECTOR_KEY_IP, align 8
  %691 = call i64 @flow_rule_match_key(%struct.flow_rule* %689, i64 %690)
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %781

693:                                              ; preds = %688
  %694 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %695 = call i32 @flow_rule_match_ip(%struct.flow_rule* %694, %struct.flow_match_ip* %34)
  %696 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %697 = load i8*, i8** %15, align 8
  %698 = load i32, i32* @ip_ecn, align 4
  %699 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 0
  %700 = load %struct.TYPE_34__*, %struct.TYPE_34__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 4
  %703 = and i32 %702, 3
  %704 = call i32 @MLX5_SET(i32 %696, i8* %697, i32 %698, i32 %703)
  %705 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %706 = load i8*, i8** %16, align 8
  %707 = load i32, i32* @ip_ecn, align 4
  %708 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 1
  %709 = load %struct.TYPE_33__*, %struct.TYPE_33__** %708, align 8
  %710 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 4
  %712 = and i32 %711, 3
  %713 = call i32 @MLX5_SET(i32 %705, i8* %706, i32 %707, i32 %712)
  %714 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %715 = load i8*, i8** %15, align 8
  %716 = load i32, i32* @ip_dscp, align 4
  %717 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 0
  %718 = load %struct.TYPE_34__*, %struct.TYPE_34__** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 4
  %721 = ashr i32 %720, 2
  %722 = call i32 @MLX5_SET(i32 %714, i8* %715, i32 %716, i32 %721)
  %723 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %724 = load i8*, i8** %16, align 8
  %725 = load i32, i32* @ip_dscp, align 4
  %726 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 1
  %727 = load %struct.TYPE_33__*, %struct.TYPE_33__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 4
  %730 = ashr i32 %729, 2
  %731 = call i32 @MLX5_SET(i32 %723, i8* %724, i32 %725, i32 %730)
  %732 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %733 = load i8*, i8** %15, align 8
  %734 = load i32, i32* @ttl_hoplimit, align 4
  %735 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 0
  %736 = load %struct.TYPE_34__*, %struct.TYPE_34__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 4
  %739 = call i32 @MLX5_SET(i32 %732, i8* %733, i32 %734, i32 %738)
  %740 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %741 = load i8*, i8** %16, align 8
  %742 = load i32, i32* @ttl_hoplimit, align 4
  %743 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 1
  %744 = load %struct.TYPE_33__*, %struct.TYPE_33__** %743, align 8
  %745 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  %747 = call i32 @MLX5_SET(i32 %740, i8* %741, i32 %742, i32 %746)
  %748 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 0
  %749 = load %struct.TYPE_34__*, %struct.TYPE_34__** %748, align 8
  %750 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %749, i32 0, i32 1
  %751 = load i32, i32* %750, align 4
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %765

753:                                              ; preds = %693
  %754 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %755 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %754, i32 0, i32 1
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @ft_field_support, i32 0, i32 0), align 4
  %758 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %756, i32 %757)
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %765, label %760

760:                                              ; preds = %753
  %761 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %762 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %761, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %763 = load i32, i32* @EOPNOTSUPP, align 4
  %764 = sub nsw i32 0, %763
  store i32 %764, i32* %7, align 4
  br label %925

765:                                              ; preds = %753, %693
  %766 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 0
  %767 = load %struct.TYPE_34__*, %struct.TYPE_34__** %766, align 8
  %768 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %777, label %771

771:                                              ; preds = %765
  %772 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %34, i32 0, i32 0
  %773 = load %struct.TYPE_34__*, %struct.TYPE_34__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %773, i32 0, i32 1
  %775 = load i32, i32* %774, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %780

777:                                              ; preds = %771, %765
  %778 = load i64, i64* @MLX5_MATCH_L3, align 8
  %779 = load i64*, i64** %23, align 8
  store i64 %778, i64* %779, align 8
  br label %780

780:                                              ; preds = %777, %771
  br label %781

781:                                              ; preds = %780, %688
  %782 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %783 = load i64, i64* @FLOW_DISSECTOR_KEY_PORTS, align 8
  %784 = call i64 @flow_rule_match_key(%struct.flow_rule* %782, i64 %783)
  %785 = icmp ne i64 %784, 0
  br i1 %785, label %786, label %889

786:                                              ; preds = %781
  %787 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %788 = call i32 @flow_rule_match_ports(%struct.flow_rule* %787, %struct.flow_match_ports* %35)
  %789 = load i64, i64* %22, align 8
  switch i64 %789, label %864 [
    i64 129, label %790
    i64 128, label %827
  ]

790:                                              ; preds = %786
  %791 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %792 = load i8*, i8** %15, align 8
  %793 = load i32, i32* @tcp_sport, align 4
  %794 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 0
  %795 = load %struct.TYPE_37__*, %struct.TYPE_37__** %794, align 8
  %796 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %795, i32 0, i32 1
  %797 = load i64, i64* %796, align 8
  %798 = call i32 @ntohs(i64 %797)
  %799 = call i32 @MLX5_SET(i32 %791, i8* %792, i32 %793, i32 %798)
  %800 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %801 = load i8*, i8** %16, align 8
  %802 = load i32, i32* @tcp_sport, align 4
  %803 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 1
  %804 = load %struct.TYPE_35__*, %struct.TYPE_35__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %804, i32 0, i32 1
  %806 = load i64, i64* %805, align 8
  %807 = call i32 @ntohs(i64 %806)
  %808 = call i32 @MLX5_SET(i32 %800, i8* %801, i32 %802, i32 %807)
  %809 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %810 = load i8*, i8** %15, align 8
  %811 = load i32, i32* @tcp_dport, align 4
  %812 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 0
  %813 = load %struct.TYPE_37__*, %struct.TYPE_37__** %812, align 8
  %814 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %813, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = call i32 @ntohs(i64 %815)
  %817 = call i32 @MLX5_SET(i32 %809, i8* %810, i32 %811, i32 %816)
  %818 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %819 = load i8*, i8** %16, align 8
  %820 = load i32, i32* @tcp_dport, align 4
  %821 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 1
  %822 = load %struct.TYPE_35__*, %struct.TYPE_35__** %821, align 8
  %823 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %822, i32 0, i32 0
  %824 = load i64, i64* %823, align 8
  %825 = call i32 @ntohs(i64 %824)
  %826 = call i32 @MLX5_SET(i32 %818, i8* %819, i32 %820, i32 %825)
  br label %873

827:                                              ; preds = %786
  %828 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %829 = load i8*, i8** %15, align 8
  %830 = load i32, i32* @udp_sport, align 4
  %831 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 0
  %832 = load %struct.TYPE_37__*, %struct.TYPE_37__** %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %832, i32 0, i32 1
  %834 = load i64, i64* %833, align 8
  %835 = call i32 @ntohs(i64 %834)
  %836 = call i32 @MLX5_SET(i32 %828, i8* %829, i32 %830, i32 %835)
  %837 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %838 = load i8*, i8** %16, align 8
  %839 = load i32, i32* @udp_sport, align 4
  %840 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 1
  %841 = load %struct.TYPE_35__*, %struct.TYPE_35__** %840, align 8
  %842 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %841, i32 0, i32 1
  %843 = load i64, i64* %842, align 8
  %844 = call i32 @ntohs(i64 %843)
  %845 = call i32 @MLX5_SET(i32 %837, i8* %838, i32 %839, i32 %844)
  %846 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %847 = load i8*, i8** %15, align 8
  %848 = load i32, i32* @udp_dport, align 4
  %849 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 0
  %850 = load %struct.TYPE_37__*, %struct.TYPE_37__** %849, align 8
  %851 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %850, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = call i32 @ntohs(i64 %852)
  %854 = call i32 @MLX5_SET(i32 %846, i8* %847, i32 %848, i32 %853)
  %855 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %856 = load i8*, i8** %16, align 8
  %857 = load i32, i32* @udp_dport, align 4
  %858 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 1
  %859 = load %struct.TYPE_35__*, %struct.TYPE_35__** %858, align 8
  %860 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %859, i32 0, i32 0
  %861 = load i64, i64* %860, align 8
  %862 = call i32 @ntohs(i64 %861)
  %863 = call i32 @MLX5_SET(i32 %855, i8* %856, i32 %857, i32 %862)
  br label %873

864:                                              ; preds = %786
  %865 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %866 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %865, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %867 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %868 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 4
  %870 = call i32 @netdev_err(i32 %869, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %871 = load i32, i32* @EINVAL, align 4
  %872 = sub nsw i32 0, %871
  store i32 %872, i32* %7, align 4
  br label %925

873:                                              ; preds = %827, %790
  %874 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 0
  %875 = load %struct.TYPE_37__*, %struct.TYPE_37__** %874, align 8
  %876 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %875, i32 0, i32 1
  %877 = load i64, i64* %876, align 8
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %885, label %879

879:                                              ; preds = %873
  %880 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %35, i32 0, i32 0
  %881 = load %struct.TYPE_37__*, %struct.TYPE_37__** %880, align 8
  %882 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %881, i32 0, i32 0
  %883 = load i64, i64* %882, align 8
  %884 = icmp ne i64 %883, 0
  br i1 %884, label %885, label %888

885:                                              ; preds = %879, %873
  %886 = load i64, i64* @MLX5_MATCH_L4, align 8
  %887 = load i64*, i64** %23, align 8
  store i64 %886, i64* %887, align 8
  br label %888

888:                                              ; preds = %885, %879
  br label %889

889:                                              ; preds = %888, %781
  %890 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %891 = load i64, i64* @FLOW_DISSECTOR_KEY_TCP, align 8
  %892 = call i64 @flow_rule_match_key(%struct.flow_rule* %890, i64 %891)
  %893 = icmp ne i64 %892, 0
  br i1 %893, label %894, label %924

894:                                              ; preds = %889
  %895 = load %struct.flow_rule*, %struct.flow_rule** %19, align 8
  %896 = call i32 @flow_rule_match_tcp(%struct.flow_rule* %895, %struct.flow_match_tcp* %36)
  %897 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %898 = load i8*, i8** %15, align 8
  %899 = load i32, i32* @tcp_flags, align 4
  %900 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %36, i32 0, i32 0
  %901 = load %struct.TYPE_39__*, %struct.TYPE_39__** %900, align 8
  %902 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %901, i32 0, i32 0
  %903 = load i64, i64* %902, align 8
  %904 = call i32 @ntohs(i64 %903)
  %905 = call i32 @MLX5_SET(i32 %897, i8* %898, i32 %899, i32 %904)
  %906 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %907 = load i8*, i8** %16, align 8
  %908 = load i32, i32* @tcp_flags, align 4
  %909 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %36, i32 0, i32 1
  %910 = load %struct.TYPE_38__*, %struct.TYPE_38__** %909, align 8
  %911 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %910, i32 0, i32 0
  %912 = load i64, i64* %911, align 8
  %913 = call i32 @ntohs(i64 %912)
  %914 = call i32 @MLX5_SET(i32 %906, i8* %907, i32 %908, i32 %913)
  %915 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %36, i32 0, i32 0
  %916 = load %struct.TYPE_39__*, %struct.TYPE_39__** %915, align 8
  %917 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %916, i32 0, i32 0
  %918 = load i64, i64* %917, align 8
  %919 = icmp ne i64 %918, 0
  br i1 %919, label %920, label %923

920:                                              ; preds = %894
  %921 = load i64, i64* @MLX5_MATCH_L4, align 8
  %922 = load i64*, i64** %23, align 8
  store i64 %921, i64* %922, align 8
  br label %923

923:                                              ; preds = %920, %894
  br label %924

924:                                              ; preds = %923, %889
  store i32 0, i32* %7, align 4
  br label %925

925:                                              ; preds = %924, %864, %760, %499, %155, %131
  %926 = load i32, i32* %7, align 4
  ret i32 %926
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i64 @mlx5e_get_tc_tun(%struct.net_device*) #1

declare dso_local i64 @parse_tunnel_attr(%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, %struct.net_device*, i64*) #1

declare dso_local i8* @get_match_headers_criteria(i32, %struct.mlx5_flow_spec*) #1

declare dso_local i8* @get_match_headers_value(i32, %struct.mlx5_flow_spec*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i64) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i64 @vlan_dev_vlan_proto(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.flow_dissector_key_vlan*, i32, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @flow_rule_match_cvlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i32 @flow_rule_match_eth_addrs(%struct.flow_rule*, %struct.flow_match_eth_addrs*) #1

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @flow_rule_match_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i64 @ipv6_addr_type(i64*) #1

declare dso_local i32 @flow_rule_match_ip(%struct.flow_rule*, %struct.flow_match_ip*) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32, i32) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @flow_rule_match_tcp(%struct.flow_rule*, %struct.flow_match_tcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
