; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_wait_fw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_wait_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@FW_PRE_INIT_TIMEOUT_MILI = common dso_local global i64 0, align 8
@FW_INIT_WARN_MESSAGE_INTERVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Waiting for FW initialization, timeout abort in %ds\0A\00", align 1
@FW_INIT_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i64, i64)* @wait_fw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_fw_init(%struct.mlx5_core_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @msecs_to_jiffies(i64 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @msecs_to_jiffies(i64 %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i64, i64* @FW_PRE_INIT_TIMEOUT_MILI, align 8
  %19 = load i64, i64* @FW_INIT_WARN_MESSAGE_INTERVAL, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUILD_BUG_ON(i32 %21)
  br label %23

23:                                               ; preds = %55, %3
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = call i64 @fw_initializing(%struct.mlx5_core_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @time_after(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @time_after(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = call i32 @jiffies_to_msecs(i64 %47)
  %49 = sdiv i32 %48, 1000
  %50 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @msecs_to_jiffies(i64 %52)
  %54 = add i64 %51, %53
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %43, %38, %35
  %56 = load i32, i32* @FW_INIT_WAIT_MS, align 4
  %57 = call i32 @msleep(i32 %56)
  br label %23

58:                                               ; preds = %32, %23
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @fw_initializing(%struct.mlx5_core_dev*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
