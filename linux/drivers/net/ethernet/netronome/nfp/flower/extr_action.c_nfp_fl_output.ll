; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.nfp_fl_output = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.flow_action_entry = type { %struct.net_device* }
%struct.nfp_fl_payload = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@NFP_FL_ACTION_OPCODE_OUTPUT = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"unsupported offload: invalid egress interface for mirred action\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_OUT_FLAGS_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"unsupported offload: egress interface does not match the required tunnel type\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"unsupported offload: cannot offload more than one tunnel mirred output per filter\00", align 1
@NFP_FL_OUT_FLAGS_USE_TUN = common dso_local global i32 0, align 4
@NFP_FL_PORT_TYPE_TUN = common dso_local global i32 0, align 4
@NFP_FL_FEATS_LAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"invalid entry: cannot find group id for LAG action\00", align 1
@NFP_FL_LAG_OUT = common dso_local global i32 0, align 4
@NFP_FL_FEATS_PRE_TUN_RULES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"unsupported offload: pre-tunnel rules not supported in loaded firmware\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"unsupported offload: pre-tunnel rules require single egress dev and ptype HOST action\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"unsupported offload: ingress and egress interfaces are on different devices\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"unsupported offload: egress interface is not an nfp port\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"unsupported offload: invalid port id for egress interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_fl_output*, %struct.flow_action_entry*, %struct.nfp_fl_payload*, i32, %struct.net_device*, i32, i32*, i32, %struct.netlink_ext_ack*)* @nfp_fl_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_output(%struct.nfp_app* %0, %struct.nfp_fl_output* %1, %struct.flow_action_entry* %2, %struct.nfp_fl_payload* %3, i32 %4, %struct.net_device* %5, i32 %6, i32* %7, i32 %8, %struct.netlink_ext_ack* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_app*, align 8
  %13 = alloca %struct.nfp_fl_output*, align 8
  %14 = alloca %struct.flow_action_entry*, align 8
  %15 = alloca %struct.nfp_fl_payload*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.netlink_ext_ack*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.nfp_flower_priv*, align 8
  %24 = alloca %struct.net_device*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %12, align 8
  store %struct.nfp_fl_output* %1, %struct.nfp_fl_output** %13, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %14, align 8
  store %struct.nfp_fl_payload* %3, %struct.nfp_fl_payload** %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.net_device* %5, %struct.net_device** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.netlink_ext_ack* %9, %struct.netlink_ext_ack** %21, align 8
  store i64 32, i64* %22, align 8
  %27 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %28 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %27, i32 0, i32 0
  %29 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %28, align 8
  store %struct.nfp_flower_priv* %29, %struct.nfp_flower_priv** %23, align 8
  %30 = load i32, i32* @NFP_FL_ACTION_OPCODE_OUTPUT, align 4
  %31 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %32 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load i64, i64* %22, align 8
  %35 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %36 = lshr i64 %34, %35
  %37 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %38 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.flow_action_entry*, %struct.flow_action_entry** %14, align 8
  %41 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  store %struct.net_device* %42, %struct.net_device** %24, align 8
  %43 = load %struct.net_device*, %struct.net_device** %24, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %10
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %47 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %216

50:                                               ; preds = %10
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @NFP_FL_OUT_FLAGS_LAST, align 4
  br label %56

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %56
  %61 = load %struct.net_device*, %struct.net_device** %24, align 8
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @nfp_fl_netdev_is_tunnel_type(%struct.net_device* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %67 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %216

70:                                               ; preds = %60
  %71 = load i32*, i32** %19, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %76 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %75, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %216

79:                                               ; preds = %70
  %80 = load i32*, i32** %19, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %25, align 4
  %84 = load i32, i32* @NFP_FL_OUT_FLAGS_USE_TUN, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %88 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @NFP_FL_PORT_TYPE_TUN, align 4
  %90 = load i32, i32* %18, align 4
  %91 = or i32 %89, %90
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %94 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %209

95:                                               ; preds = %56
  %96 = load %struct.net_device*, %struct.net_device** %24, align 8
  %97 = call i64 @netif_is_lag_master(%struct.net_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %23, align 8
  %101 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %99
  %107 = load i32, i32* %25, align 4
  %108 = call i8* @cpu_to_be16(i32 %107)
  %109 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %110 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %112 = load %struct.net_device*, %struct.net_device** %24, align 8
  %113 = call i32 @nfp_flower_lag_get_output_id(%struct.nfp_app* %111, %struct.net_device* %112)
  store i32 %113, i32* %26, align 4
  %114 = load i32, i32* %26, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %118 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %117, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* %26, align 4
  store i32 %119, i32* %11, align 4
  br label %216

120:                                              ; preds = %106
  %121 = load i32, i32* @NFP_FL_LAG_OUT, align 4
  %122 = load i32, i32* %26, align 4
  %123 = or i32 %121, %122
  %124 = call i8* @cpu_to_be32(i32 %123)
  %125 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %126 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %208

127:                                              ; preds = %99, %95
  %128 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %129 = load %struct.net_device*, %struct.net_device** %24, align 8
  %130 = call i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app* %128, %struct.net_device* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %127
  %133 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %23, align 8
  %134 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NFP_FL_FEATS_PRE_TUN_RULES, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %141 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %140, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @EOPNOTSUPP, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %11, align 4
  br label %216

144:                                              ; preds = %132
  %145 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %15, align 8
  %146 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load %struct.net_device*, %struct.net_device** %147, align 8
  %149 = icmp ne %struct.net_device* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %155 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %154, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %11, align 4
  br label %216

158:                                              ; preds = %150
  %159 = load %struct.net_device*, %struct.net_device** %24, align 8
  %160 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %15, align 8
  %161 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store %struct.net_device* %159, %struct.net_device** %162, align 8
  store i32 0, i32* %11, align 4
  br label %216

163:                                              ; preds = %127
  %164 = load i32, i32* %25, align 4
  %165 = call i8* @cpu_to_be16(i32 %164)
  %166 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %167 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load %struct.net_device*, %struct.net_device** %17, align 8
  %169 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %163
  %172 = load %struct.net_device*, %struct.net_device** %17, align 8
  %173 = load %struct.net_device*, %struct.net_device** %24, align 8
  %174 = call i32 @netdev_port_same_parent_id(%struct.net_device* %172, %struct.net_device* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %178 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %177, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @EOPNOTSUPP, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %11, align 4
  br label %216

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %163
  %183 = load %struct.net_device*, %struct.net_device** %24, align 8
  %184 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %188 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %187, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %189 = load i32, i32* @EOPNOTSUPP, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %11, align 4
  br label %216

191:                                              ; preds = %182
  %192 = load %struct.net_device*, %struct.net_device** %24, align 8
  %193 = call i32 @nfp_repr_get_port_id(%struct.net_device* %192)
  %194 = call i8* @cpu_to_be32(i32 %193)
  %195 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %196 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  %197 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %198 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %191
  %202 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  %203 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %202, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %204 = load i32, i32* @EOPNOTSUPP, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %11, align 4
  br label %216

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207, %120
  br label %209

209:                                              ; preds = %208, %79
  %210 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %13, align 8
  %211 = getelementptr inbounds %struct.nfp_fl_output, %struct.nfp_fl_output* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %15, align 8
  %214 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %209, %201, %186, %176, %158, %153, %139, %116, %74, %65, %45
  %217 = load i32, i32* %11, align 4
  ret i32 %217
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_fl_netdev_is_tunnel_type(%struct.net_device*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i32 @nfp_flower_lag_get_output_id(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @netdev_port_same_parent_id(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @nfp_repr_get_port_id(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
