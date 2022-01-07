; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_flower_lag_populate_pre_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_flower_lag_populate_pre_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_fl_pre_lag = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_lag_group = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"invalid entry: group does not exist for LAG action\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NFP_FL_PRE_LAG_VER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_lag_populate_pre_action(%struct.nfp_app* %0, %struct.net_device* %1, %struct.nfp_fl_pre_lag* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nfp_fl_pre_lag*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_flower_priv*, align 8
  %11 = alloca %struct.nfp_fl_lag_group*, align 8
  %12 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.nfp_fl_pre_lag* %2, %struct.nfp_fl_pre_lag** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %13, i32 0, i32 0
  %15 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %14, align 8
  store %struct.nfp_flower_priv* %15, %struct.nfp_flower_priv** %10, align 8
  store %struct.nfp_fl_lag_group* null, %struct.nfp_fl_lag_group** %11, align 8
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %21 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call %struct.nfp_fl_lag_group* @nfp_fl_lag_find_group_for_master_with_lag(%struct.TYPE_2__* %21, %struct.net_device* %22)
  store %struct.nfp_fl_lag_group* %23, %struct.nfp_fl_lag_group** %11, align 8
  %24 = load %struct.nfp_fl_lag_group*, %struct.nfp_fl_lag_group** %11, align 8
  %25 = icmp ne %struct.nfp_fl_lag_group* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %4
  %27 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %28 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %32 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %62

35:                                               ; preds = %4
  %36 = load %struct.nfp_fl_lag_group*, %struct.nfp_fl_lag_group** %11, align 8
  %37 = getelementptr inbounds %struct.nfp_fl_lag_group, %struct.nfp_fl_lag_group* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpu_to_be16(i32 %38)
  %40 = load %struct.nfp_fl_pre_lag*, %struct.nfp_fl_pre_lag** %8, align 8
  %41 = getelementptr inbounds %struct.nfp_fl_pre_lag, %struct.nfp_fl_pre_lag* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %43 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NFP_FL_PRE_LAG_VER_OFF, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @cpu_to_be32(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.nfp_fl_pre_lag*, %struct.nfp_fl_pre_lag** %8, align 8
  %50 = getelementptr inbounds %struct.nfp_fl_pre_lag, %struct.nfp_fl_pre_lag* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %51, i32* %12, i32 3)
  %53 = load %struct.nfp_fl_lag_group*, %struct.nfp_fl_lag_group** %11, align 8
  %54 = getelementptr inbounds %struct.nfp_fl_lag_group, %struct.nfp_fl_lag_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfp_fl_pre_lag*, %struct.nfp_fl_pre_lag** %8, align 8
  %57 = getelementptr inbounds %struct.nfp_fl_pre_lag, %struct.nfp_fl_pre_lag* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %59 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %35, %26
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nfp_fl_lag_group* @nfp_fl_lag_find_group_for_master_with_lag(%struct.TYPE_2__*, %struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
