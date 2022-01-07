; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_wait_on_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_wait_on_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@VSC_MAX_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VSC_ADDR_OFFSET = common dso_local global i32 0, align 4
@VSC_FLAG_BIT_OFFS = common dso_local global i32 0, align 4
@VSC_FLAG_BIT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i64)* @mlx5_vsc_wait_on_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VSC_MAX_RETRIES, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %9
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = load i32, i32* @VSC_ADDR_OFFSET, align 4
  %19 = call i32 @vsc_read(%struct.mlx5_core_dev* %17, i32 %18, i64* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @VSC_FLAG_BIT_OFFS, align 4
  %27 = load i32, i32* @VSC_FLAG_BIT_LEN, align 4
  %28 = call i64 @MLX5_EXTRACT(i64 %25, i32 %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %36

36:                                               ; preds = %34, %24
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %9, label %41

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %22, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @vsc_read(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i64 @MLX5_EXTRACT(i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
