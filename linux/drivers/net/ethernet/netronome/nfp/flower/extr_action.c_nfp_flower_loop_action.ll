; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_flower_loop_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_flower_loop_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.flow_action_entry = type { i32, i32, i32, %struct.ip_tunnel_info* }
%struct.ip_tunnel_info = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.nfp_fl_payload = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i8* }
%struct.net_device = type { i32 }
%struct.nfp_flower_pedit_acts = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_set_ipv4_tun = type { i32 }
%struct.nfp_fl_pre_tunnel = type { i32 }
%struct.nfp_fl_push_vlan = type { i32 }
%struct.nfp_fl_push_mpls = type { i32 }
%struct.nfp_fl_pop_vlan = type { i32 }
%struct.nfp_fl_pop_mpls = type { i32 }
%struct.nfp_fl_set_mpls = type { i32 }

@NFP_FL_SC_ACT_DROP = common dso_local global i32 0, align 4
@NFP_FL_MAX_A_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"unsupported offload: maximum allowed action list size exceeded at pop vlan\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_SC_ACT_POPV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"unsupported offload: maximum allowed action list size exceeded at push vlan\00", align 1
@NFP_FL_SC_ACT_NULL = common dso_local global i32 0, align 4
@NFP_FL_TUNNEL_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"unsupported offload: unsupported tunnel type in action list\00", align 1
@NFP_FL_SUPPORTED_TUNNEL_INFO_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"unsupported offload: unsupported tunnel flags in action list\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"unsupported offload: maximum allowed action list size exceeded at tunnel encap\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"unsupported offload: unsupported csum update action in action list\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"unsupported offload: maximum allowed action list size exceeded at push MPLS\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"unsupported offload: maximum allowed action list size exceeded at pop MPLS\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"unsupported offload: maximum allowed action list size exceeded at set MPLS\00", align 1
@PACKET_HOST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"unsupported offload: unsupported action in action list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.flow_action_entry*, %struct.flow_cls_offload*, %struct.nfp_fl_payload*, i32*, %struct.net_device*, i32*, i32*, i32*, i32*, %struct.nfp_flower_pedit_acts*, i32*, %struct.netlink_ext_ack*, i32)* @nfp_flower_loop_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_loop_action(%struct.nfp_app* %0, %struct.flow_action_entry* %1, %struct.flow_cls_offload* %2, %struct.nfp_fl_payload* %3, i32* %4, %struct.net_device* %5, i32* %6, i32* %7, i32* %8, i32* %9, %struct.nfp_flower_pedit_acts* %10, i32* %11, %struct.netlink_ext_ack* %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfp_app*, align 8
  %17 = alloca %struct.flow_action_entry*, align 8
  %18 = alloca %struct.flow_cls_offload*, align 8
  %19 = alloca %struct.nfp_fl_payload*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.net_device*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.nfp_flower_pedit_acts*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.netlink_ext_ack*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.nfp_fl_set_ipv4_tun*, align 8
  %31 = alloca %struct.nfp_fl_pre_tunnel*, align 8
  %32 = alloca %struct.nfp_fl_push_vlan*, align 8
  %33 = alloca %struct.nfp_fl_push_mpls*, align 8
  %34 = alloca %struct.nfp_fl_pop_vlan*, align 8
  %35 = alloca %struct.nfp_fl_pop_mpls*, align 8
  %36 = alloca %struct.nfp_fl_set_mpls*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %16, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %17, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %18, align 8
  store %struct.nfp_fl_payload* %3, %struct.nfp_fl_payload** %19, align 8
  store i32* %4, i32** %20, align 8
  store %struct.net_device* %5, %struct.net_device** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store %struct.nfp_flower_pedit_acts* %10, %struct.nfp_flower_pedit_acts** %26, align 8
  store i32* %11, i32** %27, align 8
  store %struct.netlink_ext_ack* %12, %struct.netlink_ext_ack** %28, align 8
  store i32 %13, i32* %29, align 4
  %39 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %40 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %421 [
    i32 141, label %42
    i32 132, label %48
    i32 133, label %48
    i32 138, label %67
    i32 139, label %67
    i32 129, label %86
    i32 128, label %120
    i32 130, label %155
    i32 131, label %256
    i32 140, label %257
    i32 142, label %277
    i32 135, label %299
    i32 136, label %340
    i32 137, label %375
    i32 134, label %410
  ]

42:                                               ; preds = %14
  %43 = load i32, i32* @NFP_FL_SC_ACT_DROP, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %46 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  br label %426

48:                                               ; preds = %14, %14
  %49 = load %struct.nfp_app*, %struct.nfp_app** %16, align 8
  %50 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %51 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %52 = load i32*, i32** %20, align 8
  %53 = load %struct.net_device*, %struct.net_device** %21, align 8
  %54 = load i32*, i32** %22, align 8
  %55 = load i32*, i32** %23, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = load i32*, i32** %25, align 8
  %58 = load i32*, i32** %27, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %61 = call i32 @nfp_flower_output_action(%struct.nfp_app* %49, %struct.flow_action_entry* %50, %struct.nfp_fl_payload* %51, i32* %52, %struct.net_device* %53, i32 1, i32* %54, i32* %55, i32* %56, i32* %57, i32 %59, %struct.netlink_ext_ack* %60)
  store i32 %61, i32* %37, align 4
  %62 = load i32, i32* %37, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %37, align 4
  store i32 %65, i32* %15, align 4
  br label %427

66:                                               ; preds = %48
  br label %426

67:                                               ; preds = %14, %14
  %68 = load %struct.nfp_app*, %struct.nfp_app** %16, align 8
  %69 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %70 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = load %struct.net_device*, %struct.net_device** %21, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = load i32*, i32** %27, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %80 = call i32 @nfp_flower_output_action(%struct.nfp_app* %68, %struct.flow_action_entry* %69, %struct.nfp_fl_payload* %70, i32* %71, %struct.net_device* %72, i32 0, i32* %73, i32* %74, i32* %75, i32* %76, i32 %78, %struct.netlink_ext_ack* %79)
  store i32 %80, i32* %37, align 4
  %81 = load i32, i32* %37, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* %37, align 4
  store i32 %84, i32* %15, align 4
  br label %427

85:                                               ; preds = %67
  br label %426

86:                                               ; preds = %14
  %87 = load i32*, i32** %20, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 4
  %91 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ugt i64 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %96 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %95, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  br label %427

99:                                               ; preds = %86
  %100 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %101 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = bitcast i32* %106 to %struct.nfp_fl_pop_vlan*
  store %struct.nfp_fl_pop_vlan* %107, %struct.nfp_fl_pop_vlan** %34, align 8
  %108 = load i32, i32* @NFP_FL_SC_ACT_POPV, align 4
  %109 = call i8* @cpu_to_be32(i32 %108)
  %110 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %111 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  %113 = load %struct.nfp_fl_pop_vlan*, %struct.nfp_fl_pop_vlan** %34, align 8
  %114 = call i32 @nfp_fl_pop_vlan(%struct.nfp_fl_pop_vlan* %113)
  %115 = load i32*, i32** %20, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, 4
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  br label %426

120:                                              ; preds = %14
  %121 = load i32*, i32** %20, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 4
  %125 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp ugt i64 %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %130 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %129, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @EOPNOTSUPP, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %15, align 4
  br label %427

133:                                              ; preds = %120
  %134 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %135 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %20, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = bitcast i32* %140 to %struct.nfp_fl_push_vlan*
  store %struct.nfp_fl_push_vlan* %141, %struct.nfp_fl_push_vlan** %32, align 8
  %142 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %143 = call i8* @cpu_to_be32(i32 %142)
  %144 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %145 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i8* %143, i8** %146, align 8
  %147 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %32, align 8
  %148 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %149 = call i32 @nfp_fl_push_vlan(%struct.nfp_fl_push_vlan* %147, %struct.flow_action_entry* %148)
  %150 = load i32*, i32** %20, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, 4
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  br label %426

155:                                              ; preds = %14
  %156 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %157 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %156, i32 0, i32 3
  %158 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %157, align 8
  store %struct.ip_tunnel_info* %158, %struct.ip_tunnel_info** %38, align 8
  %159 = load %struct.nfp_app*, %struct.nfp_app** %16, align 8
  %160 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %18, align 8
  %161 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %162 = load i32, i32* %29, align 4
  %163 = call i32 @nfp_fl_get_tun_from_act(%struct.nfp_app* %159, %struct.flow_cls_offload* %160, %struct.flow_action_entry* %161, i32 %162)
  %164 = load i32*, i32** %22, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32*, i32** %22, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NFP_FL_TUNNEL_NONE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %155
  %170 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %171 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %170, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* @EOPNOTSUPP, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %15, align 4
  br label %427

174:                                              ; preds = %155
  %175 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %38, align 8
  %176 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @NFP_FL_SUPPORTED_TUNNEL_INFO_FLAGS, align 4
  %179 = xor i32 %178, -1
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %184 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %183, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i32, i32* @EOPNOTSUPP, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %15, align 4
  br label %427

187:                                              ; preds = %174
  %188 = load i32*, i32** %20, align 8
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 4
  %192 = add i64 %191, 4
  %193 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp ugt i64 %192, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %187
  %197 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %198 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %197, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0))
  %199 = load i32, i32* @EOPNOTSUPP, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %15, align 4
  br label %427

201:                                              ; preds = %187
  %202 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %203 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32*, i32** %20, align 8
  %206 = load i32, i32* %205, align 4
  %207 = call %struct.nfp_fl_pre_tunnel* @nfp_fl_pre_tunnel(i32* %204, i32 %206)
  store %struct.nfp_fl_pre_tunnel* %207, %struct.nfp_fl_pre_tunnel** %31, align 8
  %208 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %209 = call i8* @cpu_to_be32(i32 %208)
  %210 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %211 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i8* %209, i8** %212, align 8
  %213 = load i32*, i32** %20, align 8
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = add i64 %215, 4
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  %218 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %219 = load i32*, i32** %20, align 8
  %220 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %221 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %222 = call i32 @nfp_fl_push_geneve_options(%struct.nfp_fl_payload* %218, i32* %219, %struct.flow_action_entry* %220, %struct.netlink_ext_ack* %221)
  store i32 %222, i32* %37, align 4
  %223 = load i32, i32* %37, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %201
  %226 = load i32, i32* %37, align 4
  store i32 %226, i32* %15, align 4
  br label %427

227:                                              ; preds = %201
  %228 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %229 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32*, i32** %20, align 8
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = bitcast i32* %234 to i8*
  %236 = bitcast i8* %235 to %struct.nfp_fl_set_ipv4_tun*
  store %struct.nfp_fl_set_ipv4_tun* %236, %struct.nfp_fl_set_ipv4_tun** %30, align 8
  %237 = load %struct.nfp_app*, %struct.nfp_app** %16, align 8
  %238 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %30, align 8
  %239 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %240 = load %struct.nfp_fl_pre_tunnel*, %struct.nfp_fl_pre_tunnel** %31, align 8
  %241 = load i32*, i32** %22, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.net_device*, %struct.net_device** %21, align 8
  %244 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %245 = call i32 @nfp_fl_set_ipv4_tun(%struct.nfp_app* %237, %struct.nfp_fl_set_ipv4_tun* %238, %struct.flow_action_entry* %239, %struct.nfp_fl_pre_tunnel* %240, i32 %242, %struct.net_device* %243, %struct.netlink_ext_ack* %244)
  store i32 %245, i32* %37, align 4
  %246 = load i32, i32* %37, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %227
  %249 = load i32, i32* %37, align 4
  store i32 %249, i32* %15, align 4
  br label %427

250:                                              ; preds = %227
  %251 = load i32*, i32** %20, align 8
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = add i64 %253, 4
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %251, align 4
  br label %426

256:                                              ; preds = %14
  store i32 0, i32* %15, align 4
  br label %427

257:                                              ; preds = %14
  %258 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %259 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %18, align 8
  %260 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %261 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32*, i32** %20, align 8
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32*, i32** %20, align 8
  %268 = load i32*, i32** %25, align 8
  %269 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %26, align 8
  %270 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %271 = call i32 @nfp_fl_pedit(%struct.flow_action_entry* %258, %struct.flow_cls_offload* %259, i32* %266, i32* %267, i32* %268, %struct.nfp_flower_pedit_acts* %269, %struct.netlink_ext_ack* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %257
  %274 = load i32, i32* @EOPNOTSUPP, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %15, align 4
  br label %427

276:                                              ; preds = %257
  br label %426

277:                                              ; preds = %14
  %278 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %279 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %25, align 8
  %282 = load i32, i32* %281, align 4
  %283 = xor i32 %282, -1
  %284 = and i32 %280, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %277
  %287 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %288 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %287, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %289 = load i32, i32* @EOPNOTSUPP, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %15, align 4
  br label %427

291:                                              ; preds = %277
  %292 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %293 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = xor i32 %294, -1
  %296 = load i32*, i32** %25, align 8
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, %295
  store i32 %298, i32* %296, align 4
  br label %426

299:                                              ; preds = %14
  %300 = load i32*, i32** %20, align 8
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add i64 %302, 4
  %304 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %305 = sext i32 %304 to i64
  %306 = icmp ugt i64 %303, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %299
  %308 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %309 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %308, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %310 = load i32, i32* @EOPNOTSUPP, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %15, align 4
  br label %427

312:                                              ; preds = %299
  %313 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %314 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32*, i32** %20, align 8
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = bitcast i32* %319 to %struct.nfp_fl_push_mpls*
  store %struct.nfp_fl_push_mpls* %320, %struct.nfp_fl_push_mpls** %33, align 8
  %321 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %322 = call i8* @cpu_to_be32(i32 %321)
  %323 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %324 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  store i8* %322, i8** %325, align 8
  %326 = load %struct.nfp_fl_push_mpls*, %struct.nfp_fl_push_mpls** %33, align 8
  %327 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %328 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %329 = call i32 @nfp_fl_push_mpls(%struct.nfp_fl_push_mpls* %326, %struct.flow_action_entry* %327, %struct.netlink_ext_ack* %328)
  store i32 %329, i32* %37, align 4
  %330 = load i32, i32* %37, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %312
  %333 = load i32, i32* %37, align 4
  store i32 %333, i32* %15, align 4
  br label %427

334:                                              ; preds = %312
  %335 = load i32*, i32** %20, align 8
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = add i64 %337, 4
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %335, align 4
  br label %426

340:                                              ; preds = %14
  %341 = load i32*, i32** %20, align 8
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = add i64 %343, 4
  %345 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %346 = sext i32 %345 to i64
  %347 = icmp ugt i64 %344, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %340
  %349 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %350 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %349, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0))
  %351 = load i32, i32* @EOPNOTSUPP, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %15, align 4
  br label %427

353:                                              ; preds = %340
  %354 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %355 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = load i32*, i32** %20, align 8
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = bitcast i32* %360 to %struct.nfp_fl_pop_mpls*
  store %struct.nfp_fl_pop_mpls* %361, %struct.nfp_fl_pop_mpls** %35, align 8
  %362 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %363 = call i8* @cpu_to_be32(i32 %362)
  %364 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %365 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  store i8* %363, i8** %366, align 8
  %367 = load %struct.nfp_fl_pop_mpls*, %struct.nfp_fl_pop_mpls** %35, align 8
  %368 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %369 = call i32 @nfp_fl_pop_mpls(%struct.nfp_fl_pop_mpls* %367, %struct.flow_action_entry* %368)
  %370 = load i32*, i32** %20, align 8
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = add i64 %372, 4
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 4
  br label %426

375:                                              ; preds = %14
  %376 = load i32*, i32** %20, align 8
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = add i64 %378, 4
  %380 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %381 = sext i32 %380 to i64
  %382 = icmp ugt i64 %379, %381
  br i1 %382, label %383, label %388

383:                                              ; preds = %375
  %384 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %385 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %384, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %386 = load i32, i32* @EOPNOTSUPP, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %15, align 4
  br label %427

388:                                              ; preds = %375
  %389 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %390 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  %392 = load i32*, i32** %20, align 8
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %391, i64 %394
  %396 = bitcast i32* %395 to %struct.nfp_fl_set_mpls*
  store %struct.nfp_fl_set_mpls* %396, %struct.nfp_fl_set_mpls** %36, align 8
  %397 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %398 = call i8* @cpu_to_be32(i32 %397)
  %399 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %19, align 8
  %400 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 0
  store i8* %398, i8** %401, align 8
  %402 = load %struct.nfp_fl_set_mpls*, %struct.nfp_fl_set_mpls** %36, align 8
  %403 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %404 = call i32 @nfp_fl_set_mpls(%struct.nfp_fl_set_mpls* %402, %struct.flow_action_entry* %403)
  %405 = load i32*, i32** %20, align 8
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = add i64 %407, 4
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %405, align 4
  br label %426

410:                                              ; preds = %14
  %411 = load %struct.flow_action_entry*, %struct.flow_action_entry** %17, align 8
  %412 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @PACKET_HOST, align 4
  %415 = icmp ne i32 %413, %414
  br i1 %415, label %416, label %419

416:                                              ; preds = %410
  %417 = load i32, i32* @EOPNOTSUPP, align 4
  %418 = sub nsw i32 0, %417
  store i32 %418, i32* %15, align 4
  br label %427

419:                                              ; preds = %410
  %420 = load i32*, i32** %27, align 8
  store i32 1, i32* %420, align 4
  br label %426

421:                                              ; preds = %14
  %422 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %28, align 8
  %423 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %422, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %424 = load i32, i32* @EOPNOTSUPP, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %15, align 4
  br label %427

426:                                              ; preds = %419, %388, %353, %334, %291, %276, %250, %133, %99, %85, %66, %42
  store i32 0, i32* %15, align 4
  br label %427

427:                                              ; preds = %426, %421, %416, %383, %348, %332, %307, %286, %273, %256, %248, %225, %196, %182, %169, %128, %94, %83, %64
  %428 = load i32, i32* %15, align 4
  ret i32 %428
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_flower_output_action(%struct.nfp_app*, %struct.flow_action_entry*, %struct.nfp_fl_payload*, i32*, %struct.net_device*, i32, i32*, i32*, i32*, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_fl_pop_vlan(%struct.nfp_fl_pop_vlan*) #1

declare dso_local i32 @nfp_fl_push_vlan(%struct.nfp_fl_push_vlan*, %struct.flow_action_entry*) #1

declare dso_local i32 @nfp_fl_get_tun_from_act(%struct.nfp_app*, %struct.flow_cls_offload*, %struct.flow_action_entry*, i32) #1

declare dso_local %struct.nfp_fl_pre_tunnel* @nfp_fl_pre_tunnel(i32*, i32) #1

declare dso_local i32 @nfp_fl_push_geneve_options(%struct.nfp_fl_payload*, i32*, %struct.flow_action_entry*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_set_ipv4_tun(%struct.nfp_app*, %struct.nfp_fl_set_ipv4_tun*, %struct.flow_action_entry*, %struct.nfp_fl_pre_tunnel*, i32, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_pedit(%struct.flow_action_entry*, %struct.flow_cls_offload*, i32*, i32*, i32*, %struct.nfp_flower_pedit_acts*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_push_mpls(%struct.nfp_fl_push_mpls*, %struct.flow_action_entry*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_pop_mpls(%struct.nfp_fl_pop_mpls*, %struct.flow_action_entry*) #1

declare dso_local i32 @nfp_fl_set_mpls(%struct.nfp_fl_set_mpls*, %struct.flow_action_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
