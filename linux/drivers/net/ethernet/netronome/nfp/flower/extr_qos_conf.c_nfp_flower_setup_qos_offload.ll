; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_setup_qos_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_setup_qos_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.tc_cls_matchall_offload = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }

@NFP_FL_FEATS_VF_RLIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"unsupported offload: loaded firmware does not support qos rate limit offload\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_setup_qos_offload(%struct.nfp_app* %0, %struct.net_device* %1, %struct.tc_cls_matchall_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.tc_cls_matchall_offload*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.tc_cls_matchall_offload* %2, %struct.tc_cls_matchall_offload** %7, align 8
  %10 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %7, align 8
  %11 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  store %struct.netlink_ext_ack* %13, %struct.netlink_ext_ack** %8, align 8
  %14 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %14, i32 0, i32 0
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %15, align 8
  store %struct.nfp_flower_priv* %16, %struct.nfp_flower_priv** %9, align 8
  %17 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %18 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFP_FL_FEATS_VF_RLIM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %25 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %24, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %7, align 8
  %30 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %50 [
    i32 129, label %32
    i32 130, label %38
    i32 128, label %44
  ]

32:                                               ; preds = %28
  %33 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %7, align 8
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %37 = call i32 @nfp_flower_install_rate_limiter(%struct.nfp_app* %33, %struct.net_device* %34, %struct.tc_cls_matchall_offload* %35, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %7, align 8
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %43 = call i32 @nfp_flower_remove_rate_limiter(%struct.nfp_app* %39, %struct.net_device* %40, %struct.tc_cls_matchall_offload* %41, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %28
  %45 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %7, align 8
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %49 = call i32 @nfp_flower_stats_rate_limiter(%struct.nfp_app* %45, %struct.net_device* %46, %struct.tc_cls_matchall_offload* %47, %struct.netlink_ext_ack* %48)
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %28
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %44, %38, %32, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_flower_install_rate_limiter(%struct.nfp_app*, %struct.net_device*, %struct.tc_cls_matchall_offload*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_flower_remove_rate_limiter(%struct.nfp_app*, %struct.net_device*, %struct.tc_cls_matchall_offload*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_flower_stats_rate_limiter(%struct.nfp_app*, %struct.net_device*, %struct.tc_cls_matchall_offload*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
