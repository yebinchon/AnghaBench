; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_remove_rate_limiter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_remove_rate_limiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.tc_cls_matchall_offload = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_flower_repr_priv = type { %struct.nfp_police_config }
%struct.nfp_police_config = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfp_repr = type { %struct.TYPE_4__*, %struct.nfp_flower_repr_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"unsupported offload: qos rate limit offload not supported on higher level port\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"unsupported offload: cannot remove qos entry that does not exist\00", align 1
@NFP_FLOWER_CMSG_TYPE_QOS_DEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.tc_cls_matchall_offload*, %struct.netlink_ext_ack*)* @nfp_flower_remove_rate_limiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_remove_rate_limiter(%struct.nfp_app* %0, %struct.net_device* %1, %struct.tc_cls_matchall_offload* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tc_cls_matchall_offload*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_flower_priv*, align 8
  %11 = alloca %struct.nfp_flower_repr_priv*, align 8
  %12 = alloca %struct.nfp_police_config*, align 8
  %13 = alloca %struct.nfp_repr*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.tc_cls_matchall_offload* %2, %struct.tc_cls_matchall_offload** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %16, i32 0, i32 0
  %18 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %17, align 8
  store %struct.nfp_flower_priv* %18, %struct.nfp_flower_priv** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i32 @nfp_netdev_is_nfp_repr(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %24 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %90

27:                                               ; preds = %4
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %28)
  store %struct.nfp_repr* %29, %struct.nfp_repr** %13, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i32 @nfp_repr_get_port_id(%struct.net_device* %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.nfp_repr*, %struct.nfp_repr** %13, align 8
  %33 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %32, i32 0, i32 1
  %34 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %33, align 8
  store %struct.nfp_flower_repr_priv* %34, %struct.nfp_flower_repr_priv** %11, align 8
  %35 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %11, align 8
  %36 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %90

45:                                               ; preds = %27
  %46 = load %struct.nfp_repr*, %struct.nfp_repr** %13, align 8
  %47 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_QOS_DEL, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_4__* %48, i32 8, i32 %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %14, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %90

57:                                               ; preds = %45
  %58 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %11, align 8
  %59 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %58, i32 0, i32 0
  %60 = call i32 @memset(%struct.nfp_police_config* %59, i32 0, i32 4)
  %61 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %62 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %66 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %71 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %70, i32 0, i32 0
  %72 = call i32 @cancel_delayed_work_sync(i32* %71)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = call %struct.nfp_police_config* @nfp_flower_cmsg_get_data(%struct.sk_buff* %74)
  store %struct.nfp_police_config* %75, %struct.nfp_police_config** %12, align 8
  %76 = load %struct.nfp_police_config*, %struct.nfp_police_config** %12, align 8
  %77 = call i32 @memset(%struct.nfp_police_config* %76, i32 0, i32 8)
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @cpu_to_be32(i32 %78)
  %80 = load %struct.nfp_police_config*, %struct.nfp_police_config** %12, align 8
  %81 = getelementptr inbounds %struct.nfp_police_config, %struct.nfp_police_config* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.nfp_repr*, %struct.nfp_repr** %13, align 8
  %84 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %89 = call i32 @nfp_ctrl_tx(i32 %87, %struct.sk_buff* %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %73, %54, %40, %22
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_repr_get_port_id(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.nfp_police_config*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local %struct.nfp_police_config* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
