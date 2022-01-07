; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_sem_set_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_sem_set_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_SEMAPHORE_SPACE_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to set gw space %d\0A\00", align 1
@MLX5_VSC_LOCK = common dso_local global i32 0, align 4
@VSC_COUNTER_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vsc_sem_set_space(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %12 = load i32, i32* @MLX5_SEMAPHORE_SPACE_DOMAIN, align 4
  %13 = call i32 @mlx5_vsc_gw_set_space(%struct.mlx5_core_dev* %11, i32 %12, i32* null)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MLX5_VSC_LOCK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %27 = load i32, i32* @VSC_COUNTER_OFFSET, align 4
  %28 = call i32 @vsc_read(%struct.mlx5_core_dev* %26, i32 %27, i64* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %60

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %21
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @mlx5_vsc_gw_write(%struct.mlx5_core_dev* %35, i32 %36, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %60

43:                                               ; preds = %34
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mlx5_vsc_gw_read(%struct.mlx5_core_dev* %44, i32 %45, i64* %8)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %43
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %49, %41, %31, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @mlx5_vsc_gw_set_space(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @vsc_read(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @mlx5_vsc_gw_write(%struct.mlx5_core_dev*, i32, i64) #1

declare dso_local i32 @mlx5_vsc_gw_read(%struct.mlx5_core_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
