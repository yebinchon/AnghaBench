; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_wait_for_min_rx_wqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_wait_for_min_rx_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, i32, %struct.mlx5e_channel* }
%struct.mlx5e_channel = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"Failed to get min RX wqes on Channel[%d] RQN[0x%x] wq cur_sz(%d) min_rx_wqes(%d)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_wait_for_min_rx_wqes(%struct.mlx5e_rq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx5e_channel*, align 8
  %8 = alloca i64, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %13, i32 0, i32 2
  %15 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %14, align 8
  store %struct.mlx5e_channel* %15, %struct.mlx5e_channel** %7, align 8
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %20 = call i32 @mlx5e_rqwq_get_size(%struct.mlx5e_rq* %19)
  %21 = call i64 @mlx5_min_rx_wqes(i32 %18, i32 %20)
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %30, %2
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %24 = call i64 @mlx5e_rqwq_get_cur_sz(%struct.mlx5e_rq* %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %22
  %29 = call i32 @msleep(i32 20)
  br label %30

30:                                               ; preds = %28
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @time_before(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %22, label %35

35:                                               ; preds = %30
  %36 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %46 = call i64 @mlx5e_rqwq_get_cur_sz(%struct.mlx5e_rq* %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @netdev_warn(i32 %38, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i64 %46, i64 %47)
  %49 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %50 = call i32 @mlx5e_reporter_rx_timeout(%struct.mlx5e_rq* %49)
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @mlx5_min_rx_wqes(i32, i32) #1

declare dso_local i32 @mlx5e_rqwq_get_size(%struct.mlx5e_rq*) #1

declare dso_local i64 @mlx5e_rqwq_get_cur_sz(%struct.mlx5e_rq*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @mlx5e_reporter_rx_timeout(%struct.mlx5e_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
