; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_ipv4_tun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_ipv4_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.nfp_fl_set_ipv4_tun = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.flow_action_entry = type { %struct.ip_tunnel_info* }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nfp_fl_pre_tunnel = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.flowi4 = type { i32, i32 }
%struct.rtable = type { i32 }

@NFP_FL_TUNNEL_CSUM = common dso_local global i64 0, align 8
@TUNNEL_CSUM = common dso_local global i64 0, align 8
@NFP_FL_TUNNEL_KEY = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@NFP_FL_TUNNEL_GENEVE_OPT = common dso_local global i64 0, align 8
@TUNNEL_GENEVE_OPT = common dso_local global i64 0, align 8
@NFP_FL_TUNNEL_GENEVE = common dso_local global i32 0, align 4
@NFP_FL_FEATS_GENEVE_OPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"unsupported offload: loaded firmware does not support geneve options offload\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_ACTION_OPCODE_SET_IPV4_TUNNEL = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@NFP_FL_IPV4_TUNNEL_TYPE = common dso_local global i32 0, align 4
@NFP_FL_IPV4_PRE_TUN_INDEX = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@NFP_FL_SUPPORTED_IPV4_UDP_TUN_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"unsupported offload: loaded firmware does not support tunnel flag offload\00", align 1
@ETH_P_TEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_fl_set_ipv4_tun*, %struct.flow_action_entry*, %struct.nfp_fl_pre_tunnel*, i32, %struct.net_device*, %struct.netlink_ext_ack*)* @nfp_fl_set_ipv4_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_set_ipv4_tun(%struct.nfp_app* %0, %struct.nfp_fl_set_ipv4_tun* %1, %struct.flow_action_entry* %2, %struct.nfp_fl_pre_tunnel* %3, i32 %4, %struct.net_device* %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_app*, align 8
  %10 = alloca %struct.nfp_fl_set_ipv4_tun*, align 8
  %11 = alloca %struct.flow_action_entry*, align 8
  %12 = alloca %struct.nfp_fl_pre_tunnel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ip_tunnel_info*, align 8
  %18 = alloca %struct.nfp_flower_priv*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.net*, align 8
  %22 = alloca %struct.flowi4, align 4
  %23 = alloca %struct.rtable*, align 8
  %24 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %9, align 8
  store %struct.nfp_fl_set_ipv4_tun* %1, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %11, align 8
  store %struct.nfp_fl_pre_tunnel* %3, %struct.nfp_fl_pre_tunnel** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.net_device* %5, %struct.net_device** %14, align 8
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  store i64 48, i64* %16, align 8
  %25 = load %struct.flow_action_entry*, %struct.flow_action_entry** %11, align 8
  %26 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %25, i32 0, i32 0
  %27 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %26, align 8
  store %struct.ip_tunnel_info* %27, %struct.ip_tunnel_info** %17, align 8
  %28 = load %struct.nfp_app*, %struct.nfp_app** %9, align 8
  %29 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %28, i32 0, i32 0
  %30 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %29, align 8
  store %struct.nfp_flower_priv* %30, %struct.nfp_flower_priv** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = load i64, i64* @NFP_FL_TUNNEL_CSUM, align 8
  %32 = load i64, i64* @TUNNEL_CSUM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* @NFP_FL_TUNNEL_KEY, align 4
  %36 = load i32, i32* @TUNNEL_KEY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @NFP_FL_TUNNEL_GENEVE_OPT, align 8
  %40 = load i64, i64* @TUNNEL_GENEVE_OPT, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %38, %34, %7
  %43 = phi i1 [ true, %34 ], [ true, %7 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUILD_BUG_ON(i32 %44)
  %46 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %47 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @NFP_FL_TUNNEL_GENEVE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %18, align 8
  %56 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NFP_FL_FEATS_GENEVE_OPT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54, %50
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %63 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %62, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %201

66:                                               ; preds = %54, %42
  %67 = load i32, i32* @NFP_FL_ACTION_OPCODE_SET_IPV4_TUNNEL, align 4
  %68 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %69 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %73 = lshr i64 %71, %72
  %74 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %75 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load i32, i32* @NFP_FL_IPV4_TUNNEL_TYPE, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @FIELD_PREP(i32 %77, i32 %78)
  %80 = load i32, i32* @NFP_FL_IPV4_PRE_TUN_INDEX, align 4
  %81 = load i32, i32* %20, align 4
  %82 = call i32 @FIELD_PREP(i32 %80, i32 %81)
  %83 = or i32 %79, %82
  %84 = load i32, i32* %19, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @cpu_to_be32(i32 %86)
  %88 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %89 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %95 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %97 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %66
  %102 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %103 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %107 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  br label %143

108:                                              ; preds = %66
  %109 = load %struct.net_device*, %struct.net_device** %14, align 8
  %110 = call %struct.net* @dev_net(%struct.net_device* %109)
  store %struct.net* %110, %struct.net** %21, align 8
  %111 = bitcast %struct.flowi4* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %111, i8 0, i64 8, i1 false)
  %112 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %113 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @IPPROTO_UDP, align 4
  %120 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.net*, %struct.net** %21, align 8
  %122 = call %struct.rtable* @ip_route_output_key(%struct.net* %121, %struct.flowi4* %22)
  store %struct.rtable* %122, %struct.rtable** %23, align 8
  %123 = load %struct.rtable*, %struct.rtable** %23, align 8
  %124 = call i32 @PTR_ERR_OR_ZERO(%struct.rtable* %123)
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %108
  %128 = load %struct.rtable*, %struct.rtable** %23, align 8
  %129 = getelementptr inbounds %struct.rtable, %struct.rtable* %128, i32 0, i32 0
  %130 = call i64 @ip4_dst_hoplimit(i32* %129)
  %131 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %132 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.rtable*, %struct.rtable** %23, align 8
  %134 = call i32 @ip_rt_put(%struct.rtable* %133)
  br label %142

135:                                              ; preds = %108
  %136 = load %struct.net*, %struct.net** %21, align 8
  %137 = getelementptr inbounds %struct.net, %struct.net* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %141 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %127
  br label %143

143:                                              ; preds = %142, %101
  %144 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %145 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %149 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %151 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @NFP_FL_TUNNEL_KEY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %143
  %158 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %159 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @NFP_FL_SUPPORTED_IPV4_UDP_TUN_FLAGS, align 4
  %163 = xor i32 %162, -1
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %157, %143
  %167 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %168 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %167, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @EOPNOTSUPP, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %201

171:                                              ; preds = %157
  %172 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %173 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %177 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @NFP_FL_TUNNEL_GENEVE, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %171
  %182 = load i32, i32* @ETH_P_TEB, align 4
  %183 = call i32 @htons(i32 %182)
  %184 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %185 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %187 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sdiv i32 %188, 4
  %190 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %10, align 8
  %191 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %181, %171
  %193 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %194 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.nfp_fl_pre_tunnel*, %struct.nfp_fl_pre_tunnel** %12, align 8
  %200 = getelementptr inbounds %struct.nfp_fl_pre_tunnel, %struct.nfp_fl_pre_tunnel* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %192, %166, %61
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.rtable* @ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.rtable*) #1

declare dso_local i64 @ip4_dst_hoplimit(i32*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
