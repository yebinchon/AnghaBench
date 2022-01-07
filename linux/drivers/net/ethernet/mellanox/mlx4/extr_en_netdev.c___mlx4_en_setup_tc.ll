; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c___mlx4_en_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c___mlx4_en_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt = type { i64, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @__mlx4_en_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx4_en_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_mqprio_qopt*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %10, %struct.tc_mqprio_qopt** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %19 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %24 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLX4_EN_NUM_UP_HIGH, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %22, %17
  %32 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %33 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %34 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %37 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @mlx4_en_alloc_tx_queue_per_tc(%struct.net_device* %35, i64 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %28, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @mlx4_en_alloc_tx_queue_per_tc(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
