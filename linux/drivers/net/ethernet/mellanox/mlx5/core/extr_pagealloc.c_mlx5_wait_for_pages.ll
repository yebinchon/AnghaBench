; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pagealloc.c_mlx5_wait_for_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pagealloc.c_mlx5_wait_for_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@MAX_RECLAIM_VFS_PAGES_TIME_MSECS = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Skipping wait for vf pages stage\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Waiting for %d pages\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"aborting while there are %d pending pages\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"All pages received\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wait_for_pages(%struct.mlx5_core_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* @MAX_RECLAIM_VFS_PAGES_TIME_MSECS, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  %11 = add i64 %8, %10
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %21 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %54, %22
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @time_after(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %30
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @MAX_RECLAIM_VFS_PAGES_TIME_MSECS, align 4
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  %51 = add i64 %48, %50
  store i64 %51, i64* %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = call i32 @msleep(i32 50)
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %35, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
