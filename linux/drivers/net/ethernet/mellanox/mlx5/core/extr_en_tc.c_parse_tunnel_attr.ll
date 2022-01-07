; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_tunnel_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_tunnel_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_30__, %struct.TYPE_26__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_32__, %struct.TYPE_28__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.mlx5_flow_spec = type { i8*, i8* }
%struct.flow_cls_offload = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_control = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_17__*, %struct.TYPE_31__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.flow_match_ip = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to parse tunnel attributes\00", align 1
@FLOW_DISSECTOR_KEY_ENC_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i64 0, align 8
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@ethertype = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i64 0, align 8
@ipv6_layout = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IP = common dso_local global i32 0, align 4
@ip_ecn = common dso_local global i32 0, align 4
@ip_dscp = common dso_local global i32 0, align 4
@ttl_hoplimit = common dso_local global i32 0, align 4
@ft_field_support = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Matching on TTL is not supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, %struct.net_device*, i32*)* @parse_tunnel_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tunnel_attr(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.flow_rule*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.flow_match_control, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.flow_match_ipv4_addrs, align 8
  %20 = alloca %struct.flow_match_ipv6_addrs, align 8
  %21 = alloca %struct.flow_match_ip, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %8, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %23 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %24, align 8
  store %struct.netlink_ext_ack* %25, %struct.netlink_ext_ack** %12, align 8
  %26 = load i32, i32* @fte_match_param, align 4
  %27 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @outer_headers, align 4
  %31 = call i8* @MLX5_ADDR_OF(i32 %26, i8* %29, i32 %30)
  store i8* %31, i8** %13, align 8
  %32 = load i32, i32* @fte_match_param, align 4
  %33 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @outer_headers, align 4
  %37 = call i8* @MLX5_ADDR_OF(i32 %32, i8* %35, i32 %36)
  store i8* %37, i8** %14, align 8
  %38 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %39 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %38)
  store %struct.flow_rule* %39, %struct.flow_rule** %15, align 8
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %42 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %43 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @mlx5e_tc_tun_parse(%struct.net_device* %40, %struct.mlx5e_priv* %41, %struct.mlx5_flow_spec* %42, %struct.flow_cls_offload* %43, i8* %44, i8* %45, i32* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %5
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %52 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %6, align 4
  br label %284

54:                                               ; preds = %5
  %55 = load %struct.flow_rule*, %struct.flow_rule** %15, align 8
  %56 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_CONTROL, align 4
  %57 = call i64 @flow_rule_match_key(%struct.flow_rule* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %179

59:                                               ; preds = %54
  %60 = load %struct.flow_rule*, %struct.flow_rule** %15, align 8
  %61 = call i32 @flow_rule_match_enc_control(%struct.flow_rule* %60, %struct.flow_match_control* %17)
  %62 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %17, i32 0, i32 0
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %59
  %70 = load %struct.flow_rule*, %struct.flow_rule** %15, align 8
  %71 = call i32 @flow_rule_match_enc_ipv4_addrs(%struct.flow_rule* %70, %struct.flow_match_ipv4_addrs* %19)
  %72 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %75 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %19, i32 0, i32 1
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohl(i32 %78)
  %80 = call i32 @MLX5_SET(i32 %72, i8* %73, i32 %74, i32 %79)
  %81 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %84 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %19, i32 0, i32 0
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  %89 = call i32 @MLX5_SET(i32 %81, i8* %82, i32 %83, i32 %88)
  %90 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %93 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %19, i32 0, i32 1
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ntohl(i32 %96)
  %98 = call i32 @MLX5_SET(i32 %90, i8* %91, i32 %92, i32 %97)
  %99 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %102 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %19, i32 0, i32 0
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ntohl(i32 %105)
  %107 = call i32 @MLX5_SET(i32 %99, i8* %100, i32 %101, i32 %106)
  %108 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = load i32, i32* @ethertype, align 4
  %111 = call i32 @MLX5_SET_TO_ONES(i32 %108, i8* %109, i32 %110)
  %112 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* @ethertype, align 4
  %115 = load i32, i32* @ETH_P_IP, align 4
  %116 = call i32 @MLX5_SET(i32 %112, i8* %113, i32 %114, i32 %115)
  br label %178

117:                                              ; preds = %59
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %177

121:                                              ; preds = %117
  %122 = load %struct.flow_rule*, %struct.flow_rule** %15, align 8
  %123 = call i32 @flow_rule_match_enc_ipv6_addrs(%struct.flow_rule* %122, %struct.flow_match_ipv6_addrs* %20)
  %124 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %125 = load i8*, i8** %13, align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %127 = call i8* @MLX5_ADDR_OF(i32 %124, i8* %125, i32 %126)
  %128 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %20, i32 0, i32 1
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 1
  %131 = load i32, i32* @ipv6_layout, align 4
  %132 = load i32, i32* @ipv6, align 4
  %133 = call i32 @MLX5_FLD_SZ_BYTES(i32 %131, i32 %132)
  %134 = call i32 @memcpy(i8* %127, i32* %130, i32 %133)
  %135 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %136 = load i8*, i8** %14, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %138 = call i8* @MLX5_ADDR_OF(i32 %135, i8* %136, i32 %137)
  %139 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %20, i32 0, i32 0
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i32, i32* @ipv6_layout, align 4
  %143 = load i32, i32* @ipv6, align 4
  %144 = call i32 @MLX5_FLD_SZ_BYTES(i32 %142, i32 %143)
  %145 = call i32 @memcpy(i8* %138, i32* %141, i32 %144)
  %146 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %147 = load i8*, i8** %13, align 8
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %149 = call i8* @MLX5_ADDR_OF(i32 %146, i8* %147, i32 %148)
  %150 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %20, i32 0, i32 1
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  %153 = load i32, i32* @ipv6_layout, align 4
  %154 = load i32, i32* @ipv6, align 4
  %155 = call i32 @MLX5_FLD_SZ_BYTES(i32 %153, i32 %154)
  %156 = call i32 @memcpy(i8* %149, i32* %152, i32 %155)
  %157 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %158 = load i8*, i8** %14, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %160 = call i8* @MLX5_ADDR_OF(i32 %157, i8* %158, i32 %159)
  %161 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %20, i32 0, i32 0
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* @ipv6_layout, align 4
  %165 = load i32, i32* @ipv6, align 4
  %166 = call i32 @MLX5_FLD_SZ_BYTES(i32 %164, i32 %165)
  %167 = call i32 @memcpy(i8* %160, i32* %163, i32 %166)
  %168 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %169 = load i8*, i8** %13, align 8
  %170 = load i32, i32* @ethertype, align 4
  %171 = call i32 @MLX5_SET_TO_ONES(i32 %168, i8* %169, i32 %170)
  %172 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %173 = load i8*, i8** %14, align 8
  %174 = load i32, i32* @ethertype, align 4
  %175 = load i32, i32* @ETH_P_IPV6, align 4
  %176 = call i32 @MLX5_SET(i32 %172, i8* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %121, %117
  br label %178

178:                                              ; preds = %177, %69
  br label %179

179:                                              ; preds = %178, %54
  %180 = load %struct.flow_rule*, %struct.flow_rule** %15, align 8
  %181 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IP, align 4
  %182 = call i64 @flow_rule_match_key(%struct.flow_rule* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %257

184:                                              ; preds = %179
  %185 = load %struct.flow_rule*, %struct.flow_rule** %15, align 8
  %186 = call i32 @flow_rule_match_enc_ip(%struct.flow_rule* %185, %struct.flow_match_ip* %21)
  %187 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %188 = load i8*, i8** %13, align 8
  %189 = load i32, i32* @ip_ecn, align 4
  %190 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 0
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 3
  %195 = call i32 @MLX5_SET(i32 %187, i8* %188, i32 %189, i32 %194)
  %196 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %197 = load i8*, i8** %14, align 8
  %198 = load i32, i32* @ip_ecn, align 4
  %199 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 1
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 3
  %204 = call i32 @MLX5_SET(i32 %196, i8* %197, i32 %198, i32 %203)
  %205 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %206 = load i8*, i8** %13, align 8
  %207 = load i32, i32* @ip_dscp, align 4
  %208 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 0
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 2
  %213 = call i32 @MLX5_SET(i32 %205, i8* %206, i32 %207, i32 %212)
  %214 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %215 = load i8*, i8** %14, align 8
  %216 = load i32, i32* @ip_dscp, align 4
  %217 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 1
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 2
  %222 = call i32 @MLX5_SET(i32 %214, i8* %215, i32 %216, i32 %221)
  %223 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %224 = load i8*, i8** %13, align 8
  %225 = load i32, i32* @ttl_hoplimit, align 4
  %226 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 0
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @MLX5_SET(i32 %223, i8* %224, i32 %225, i32 %229)
  %231 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %232 = load i8*, i8** %14, align 8
  %233 = load i32, i32* @ttl_hoplimit, align 4
  %234 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 1
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @MLX5_SET(i32 %231, i8* %232, i32 %233, i32 %237)
  %239 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %21, i32 0, i32 0
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %184
  %245 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %246 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @ft_field_support, i32 0, i32 0), align 4
  %249 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %244
  %252 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %253 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %254 = load i32, i32* @EOPNOTSUPP, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %6, align 4
  br label %284

256:                                              ; preds = %244, %184
  br label %257

257:                                              ; preds = %256, %179
  %258 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %259 = load i8*, i8** %13, align 8
  %260 = load i32, i32* @dmac_47_16, align 4
  %261 = call i32 @MLX5_SET_TO_ONES(i32 %258, i8* %259, i32 %260)
  %262 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %263 = load i8*, i8** %13, align 8
  %264 = load i32, i32* @dmac_15_0, align 4
  %265 = call i32 @MLX5_SET_TO_ONES(i32 %262, i8* %263, i32 %264)
  %266 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %267 = load i8*, i8** %14, align 8
  %268 = load i32, i32* @dmac_47_16, align 4
  %269 = call i8* @MLX5_ADDR_OF(i32 %266, i8* %267, i32 %268)
  %270 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %271 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %270, i32 0, i32 0
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ether_addr_copy(i8* %269, i32 %274)
  %276 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %277 = load i8*, i8** %13, align 8
  %278 = load i32, i32* @frag, align 4
  %279 = call i32 @MLX5_SET(i32 %276, i8* %277, i32 %278, i32 1)
  %280 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %281 = load i8*, i8** %14, align 8
  %282 = load i32, i32* @frag, align 4
  %283 = call i32 @MLX5_SET(i32 %280, i8* %281, i32 %282, i32 0)
  store i32 0, i32* %6, align 4
  br label %284

284:                                              ; preds = %257, %251, %50
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @mlx5e_tc_tun_parse(%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, i8*, i8*, i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_control(%struct.flow_rule*, %struct.flow_match_control*) #1

declare dso_local i32 @flow_rule_match_enc_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i32 @flow_rule_match_enc_ipv6_addrs(%struct.flow_rule*, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

declare dso_local i32 @flow_rule_match_enc_ip(%struct.flow_rule*, %struct.flow_match_ip*) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
