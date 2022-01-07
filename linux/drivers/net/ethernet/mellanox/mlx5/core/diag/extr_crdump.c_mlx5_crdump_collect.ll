; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_crdump.c_mlx5_crdump_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_crdump.c_mlx5_crdump_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"crdump: failed to lock vsc gw err %d\0A\00", align 1
@MLX5_SEMAPHORE_SW_RESET = common dso_local global i32 0, align 4
@MLX5_VSC_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to lock SW reset semaphore\0A\00", align 1
@MLX5_VSC_SPACE_SCAN_CRSPACE = common dso_local global i32 0, align 4
@MLX5_VSC_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_crdump_collect(%struct.mlx5_core_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = call i32 @mlx5_crdump_enabled(%struct.mlx5_core_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = call i32 @mlx5_vsc_gw_lock(%struct.mlx5_core_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %13
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load i32, i32* @MLX5_SEMAPHORE_SW_RESET, align 4
  %26 = load i32, i32* @MLX5_VSC_LOCK, align 4
  %27 = call i32 @mlx5_vsc_sem_set_space(%struct.mlx5_core_dev* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %49

33:                                               ; preds = %23
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %35 = load i32, i32* @MLX5_VSC_SPACE_SCAN_CRSPACE, align 4
  %36 = call i32 @mlx5_vsc_gw_set_space(%struct.mlx5_core_dev* %34, i32 %35, i32* null)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @mlx5_crdump_fill(%struct.mlx5_core_dev* %41, i32* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %46 = load i32, i32* @MLX5_SEMAPHORE_SW_RESET, align 4
  %47 = load i32, i32* @MLX5_VSC_UNLOCK, align 4
  %48 = call i32 @mlx5_vsc_sem_set_space(%struct.mlx5_core_dev* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %30
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %51 = call i32 @mlx5_vsc_gw_unlock(%struct.mlx5_core_dev* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %18, %10
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mlx5_crdump_enabled(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_vsc_gw_lock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_vsc_sem_set_space(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_vsc_gw_set_space(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_crdump_fill(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_vsc_gw_unlock(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
