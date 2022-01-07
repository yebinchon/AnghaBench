; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_lock_sem_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_lock_sem_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_VSC_LOCK = common dso_local global i32 0, align 4
@MLX5_VSC_UNLOCK = common dso_local global i32 0, align 4
@MLX5_SEMAPHORE_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to lock SW reset semaphore\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @lock_sem_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_sem_sw_reset(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = call i32 @mlx5_core_is_pf(%struct.mlx5_core_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = call i32 @mlx5_vsc_gw_lock(%struct.mlx5_core_dev* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @MLX5_VSC_LOCK, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MLX5_VSC_UNLOCK, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %6, align 4
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %39 = load i32, i32* @MLX5_SEMAPHORE_SW_RESET, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @mlx5_vsc_sem_set_space(%struct.mlx5_core_dev* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %46 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %49 = call i32 @mlx5_vsc_gw_unlock(%struct.mlx5_core_dev* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %27, %21, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mlx5_core_is_pf(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_vsc_gw_lock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_vsc_sem_set_space(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_vsc_gw_unlock(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
