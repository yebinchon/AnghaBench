; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.tc_mqprio_qopt = type { i64, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @xgbe_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xgbe_prv_data*, align 8
  %9 = alloca %struct.tc_mqprio_qopt*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %11)
  store %struct.xgbe_prv_data* %12, %struct.xgbe_prv_data** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %14, %struct.tc_mqprio_qopt** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %23 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %24 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %26 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %21
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %43, align 8
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %46 = bitcast %struct.xgbe_prv_data* %45 to %struct.xgbe_prv_data.0*
  %47 = call i32 %44(%struct.xgbe_prv_data.0* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %34, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
