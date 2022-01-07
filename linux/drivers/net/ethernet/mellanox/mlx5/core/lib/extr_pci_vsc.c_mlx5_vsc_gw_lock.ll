; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_gw_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_gw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@VSC_MAX_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VSC_SEMAPHORE_OFFSET = common dso_local global i32 0, align 4
@VSC_COUNTER_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vsc_gw_lock(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pci_cfg_access_lock(i32 %10)
  br label %12

12:                                               ; preds = %58, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @VSC_MAX_RETRIES, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %21 = load i32, i32* @VSC_SEMAPHORE_OFFSET, align 4
  %22 = call i32 @vsc_read(%struct.mlx5_core_dev* %20, i32 %21, i64* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %63

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %58

33:                                               ; preds = %26
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %35 = load i32, i32* @VSC_COUNTER_OFFSET, align 4
  %36 = call i32 @vsc_read(%struct.mlx5_core_dev* %34, i32 %35, i64* %4)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %63

40:                                               ; preds = %33
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = load i32, i32* @VSC_SEMAPHORE_OFFSET, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @vsc_write(%struct.mlx5_core_dev* %41, i32 %42, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %63

48:                                               ; preds = %40
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %50 = load i32, i32* @VSC_SEMAPHORE_OFFSET, align 4
  %51 = call i32 @vsc_read(%struct.mlx5_core_dev* %49, i32 %50, i64* %6)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %29
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %12, label %62

62:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %69

63:                                               ; preds = %54, %47, %39, %25, %16
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pci_cfg_access_unlock(i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @pci_cfg_access_lock(i32) #1

declare dso_local i32 @vsc_read(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vsc_write(%struct.mlx5_core_dev*, i32, i64) #1

declare dso_local i32 @pci_cfg_access_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
