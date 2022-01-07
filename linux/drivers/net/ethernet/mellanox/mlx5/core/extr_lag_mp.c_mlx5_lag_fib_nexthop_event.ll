; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag_mp.c_mlx5_lag_fib_nexthop_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag_mp.c_mlx5_lag_fib_nexthop_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { %struct.lag_mp }
%struct.lag_mp = type { %struct.fib_info* }
%struct.fib_nh = type { i32 }
%struct.fib_info = type { i32 }

@FIB_EVENT_NH_DEL = common dso_local global i64 0, align 8
@FIB_EVENT_NH_ADD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_lag*, i64, %struct.fib_nh*, %struct.fib_info*)* @mlx5_lag_fib_nexthop_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_lag_fib_nexthop_event(%struct.mlx5_lag* %0, i64 %1, %struct.fib_nh* %2, %struct.fib_info* %3) #0 {
  %5 = alloca %struct.mlx5_lag*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fib_nh*, align 8
  %8 = alloca %struct.fib_info*, align 8
  %9 = alloca %struct.lag_mp*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.fib_nh* %2, %struct.fib_nh** %7, align 8
  store %struct.fib_info* %3, %struct.fib_info** %8, align 8
  %11 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %11, i32 0, i32 0
  store %struct.lag_mp* %12, %struct.lag_mp** %9, align 8
  %13 = load %struct.lag_mp*, %struct.lag_mp** %9, align 8
  %14 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %13, i32 0, i32 0
  %15 = load %struct.fib_info*, %struct.fib_info** %14, align 8
  %16 = icmp ne %struct.fib_info* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.lag_mp*, %struct.lag_mp** %9, align 8
  %19 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %18, i32 0, i32 0
  %20 = load %struct.fib_info*, %struct.fib_info** %19, align 8
  %21 = load %struct.fib_info*, %struct.fib_info** %8, align 8
  %22 = icmp ne %struct.fib_info* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  br label %57

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @FIB_EVENT_NH_DEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %30 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %31 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_lag_dev_get_netdev_idx(%struct.mlx5_lag* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = srem i32 %38, 2
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mlx5_lag_set_port_affinity(%struct.mlx5_lag* %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %28
  br label %57

45:                                               ; preds = %24
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @FIB_EVENT_NH_ADD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.fib_info*, %struct.fib_info** %8, align 8
  %51 = call i32 @fib_info_num_path(%struct.fib_info* %50)
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %55 = call i32 @mlx5_lag_set_port_affinity(%struct.mlx5_lag* %54, i32 0)
  br label %56

56:                                               ; preds = %53, %49, %45
  br label %57

57:                                               ; preds = %23, %56, %44
  ret void
}

declare dso_local i32 @mlx5_lag_dev_get_netdev_idx(%struct.mlx5_lag*, i32) #1

declare dso_local i32 @mlx5_lag_set_port_affinity(%struct.mlx5_lag*, i32) #1

declare dso_local i32 @fib_info_num_path(%struct.fib_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
