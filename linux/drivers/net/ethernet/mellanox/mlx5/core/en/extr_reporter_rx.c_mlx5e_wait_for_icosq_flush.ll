; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_wait_for_icosq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_wait_for_icosq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_icosq = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Wait for ICOSQ 0x%x flush timeout (cc = 0x%x, pc = 0x%x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_icosq*)* @mlx5e_wait_for_icosq_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_wait_for_icosq_flush(%struct.mlx5e_icosq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_icosq*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx5e_icosq* %0, %struct.mlx5e_icosq** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 2000)
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @time_before(i64 %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %42

22:                                               ; preds = %13
  %23 = call i32 @msleep(i32 20)
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %35, i64 %38)
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %24, %21
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
