; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_install_rate_limiter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_install_rate_limiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.tc_cls_matchall_offload = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_flower_repr_priv = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.nfp_police_config = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.nfp_repr = type { %struct.TYPE_15__*, %struct.TYPE_9__*, %struct.nfp_flower_repr_priv* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"unsupported offload: qos rate limit offload not supported on higher level port\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"unsupported offload: qos rate limit offload not supported on shared blocks\00", align 1
@NFP_PORT_VF_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"unsupported offload: qos rate limit offload not supported on non-VF ports\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"unsupported offload: qos rate limit offload requires a single action\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"unsupported offload: qos rate limit offload requires highest priority\00", align 1
@FLOW_ACTION_POLICE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"unsupported offload: qos rate limit offload requires police action\00", align 1
@PSCHED_TICKS_PER_SEC = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_QOS_MOD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_FL_QOS_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.tc_cls_matchall_offload*, %struct.netlink_ext_ack*)* @nfp_flower_install_rate_limiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_install_rate_limiter(%struct.nfp_app* %0, %struct.net_device* %1, %struct.tc_cls_matchall_offload* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tc_cls_matchall_offload*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.flow_action_entry*, align 8
  %11 = alloca %struct.nfp_flower_priv*, align 8
  %12 = alloca %struct.nfp_flower_repr_priv*, align 8
  %13 = alloca %struct.nfp_police_config*, align 8
  %14 = alloca %struct.nfp_repr*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.tc_cls_matchall_offload* %2, %struct.tc_cls_matchall_offload** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %19 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %8, align 8
  %20 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.flow_action_entry*, %struct.flow_action_entry** %23, align 8
  %25 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %24, i64 0
  store %struct.flow_action_entry* %25, %struct.flow_action_entry** %10, align 8
  %26 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %26, i32 0, i32 0
  %28 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %27, align 8
  store %struct.nfp_flower_priv* %28, %struct.nfp_flower_priv** %11, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call i32 @nfp_netdev_is_nfp_repr(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %34 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %185

37:                                               ; preds = %4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %38)
  store %struct.nfp_repr* %39, %struct.nfp_repr** %14, align 8
  %40 = load %struct.nfp_repr*, %struct.nfp_repr** %14, align 8
  %41 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %40, i32 0, i32 2
  %42 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %41, align 8
  store %struct.nfp_flower_repr_priv* %42, %struct.nfp_flower_repr_priv** %12, align 8
  %43 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %12, align 8
  %44 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %49 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %185

52:                                               ; preds = %37
  %53 = load %struct.nfp_repr*, %struct.nfp_repr** %14, align 8
  %54 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NFP_PORT_VF_PORT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %185

65:                                               ; preds = %52
  %66 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %8, align 8
  %67 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i32 @flow_offload_has_one_action(%struct.TYPE_16__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %74 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %73, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %185

77:                                               ; preds = %65
  %78 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %8, align 8
  %79 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %85 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %185

88:                                               ; preds = %77
  %89 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %90 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FLOW_ACTION_POLICE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %96 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %95, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %185

99:                                               ; preds = %88
  %100 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %101 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %106 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PSCHED_NS2TICKS(i32 %108)
  %110 = mul nsw i32 %104, %109
  %111 = load i32, i32* @PSCHED_TICKS_PER_SEC, align 4
  %112 = call i32 @div_u64(i32 %110, i32 %111)
  store i32 %112, i32* %17, align 4
  %113 = load %struct.net_device*, %struct.net_device** %7, align 8
  %114 = call i32 @nfp_repr_get_port_id(%struct.net_device* %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.nfp_repr*, %struct.nfp_repr** %14, align 8
  %116 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_QOS_MOD, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_15__* %117, i32 56, i32 %118, i32 %119)
  store %struct.sk_buff* %120, %struct.sk_buff** %15, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %99
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %185

126:                                              ; preds = %99
  %127 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %128 = call %struct.nfp_police_config* @nfp_flower_cmsg_get_data(%struct.sk_buff* %127)
  store %struct.nfp_police_config* %128, %struct.nfp_police_config** %13, align 8
  %129 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %130 = call i32 @memset(%struct.nfp_police_config* %129, i32 0, i32 56)
  %131 = load i32, i32* %16, align 4
  %132 = call i8* @cpu_to_be32(i32 %131)
  %133 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %134 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i8* @cpu_to_be32(i32 %136)
  %138 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %139 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %17, align 4
  %141 = call i8* @cpu_to_be32(i32 %140)
  %142 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %143 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i8* @cpu_to_be32(i32 %144)
  %146 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %147 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i8* @cpu_to_be32(i32 %148)
  %150 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %151 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %18, align 4
  %153 = call i8* @cpu_to_be32(i32 %152)
  %154 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %155 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i8* @cpu_to_be32(i32 %156)
  %158 = load %struct.nfp_police_config*, %struct.nfp_police_config** %13, align 8
  %159 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.nfp_repr*, %struct.nfp_repr** %14, align 8
  %161 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %160, i32 0, i32 0
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %166 = call i32 @nfp_ctrl_tx(i32 %164, %struct.sk_buff* %165)
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %12, align 8
  %169 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %11, align 8
  %172 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %11, align 8
  %176 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %184

179:                                              ; preds = %126
  %180 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %11, align 8
  %181 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %180, i32 0, i32 1
  %182 = load i32, i32* @NFP_FL_QOS_UPDATE, align 4
  %183 = call i32 @schedule_delayed_work(i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %126
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %123, %94, %83, %72, %60, %47, %32
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @flow_offload_has_one_action(%struct.TYPE_16__*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @PSCHED_NS2TICKS(i32) #1

declare dso_local i32 @nfp_repr_get_port_id(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local %struct.nfp_police_config* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.nfp_police_config*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
