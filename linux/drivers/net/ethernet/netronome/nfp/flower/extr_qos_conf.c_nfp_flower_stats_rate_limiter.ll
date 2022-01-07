; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_stats_rate_limiter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_stats_rate_limiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.tc_cls_matchall_offload = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_flower_repr_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nfp_stat_pair, %struct.nfp_stat_pair, i32 }
%struct.nfp_stat_pair = type { i64, i64 }
%struct.nfp_repr = type { %struct.nfp_flower_repr_priv* }

@.str = private unnamed_addr constant [79 x i8] c"unsupported offload: qos rate limit offload not supported on higher level port\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"unsupported offload: cannot find qos entry for stats update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.tc_cls_matchall_offload*, %struct.netlink_ext_ack*)* @nfp_flower_stats_rate_limiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_stats_rate_limiter(%struct.nfp_app* %0, %struct.net_device* %1, %struct.tc_cls_matchall_offload* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tc_cls_matchall_offload*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_flower_priv*, align 8
  %11 = alloca %struct.nfp_flower_repr_priv*, align 8
  %12 = alloca %struct.nfp_stat_pair*, align 8
  %13 = alloca %struct.nfp_stat_pair*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.nfp_repr*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.tc_cls_matchall_offload* %2, %struct.tc_cls_matchall_offload** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %17 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %17, i32 0, i32 0
  %19 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %18, align 8
  store %struct.nfp_flower_priv* %19, %struct.nfp_flower_priv** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @nfp_netdev_is_nfp_repr(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %25 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %24, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %90

28:                                               ; preds = %4
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %29)
  store %struct.nfp_repr* %30, %struct.nfp_repr** %16, align 8
  %31 = load %struct.nfp_repr*, %struct.nfp_repr** %16, align 8
  %32 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %31, i32 0, i32 0
  %33 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %32, align 8
  store %struct.nfp_flower_repr_priv* %33, %struct.nfp_flower_repr_priv** %11, align 8
  %34 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %11, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %41 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %90

44:                                               ; preds = %28
  %45 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %46 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %11, align 8
  %49 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store %struct.nfp_stat_pair* %50, %struct.nfp_stat_pair** %12, align 8
  %51 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %11, align 8
  %52 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.nfp_stat_pair* %53, %struct.nfp_stat_pair** %13, align 8
  %54 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %12, align 8
  %55 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %13, align 8
  %58 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  store i64 %60, i64* %15, align 8
  %61 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %12, align 8
  %62 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %13, align 8
  %65 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  store i64 %67, i64* %14, align 8
  %68 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %12, align 8
  %69 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %13, align 8
  %72 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %12, align 8
  %74 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfp_stat_pair*, %struct.nfp_stat_pair** %13, align 8
  %77 = getelementptr inbounds %struct.nfp_stat_pair, %struct.nfp_stat_pair* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %79 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %8, align 8
  %82 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %81, i32 0, i32 0
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %11, align 8
  %86 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @flow_stats_update(i32* %82, i64 %83, i64 %84, i32 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %44, %39, %23
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @flow_stats_update(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
