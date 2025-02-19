; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_gw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_pci_vsc.c_mlx5_vsc_gw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@VSC_SYND_BIT_OFFS = common dso_local global i32 0, align 4
@VSC_FLAG_BIT_LEN = common dso_local global i64 0, align 8
@VSC_SYND_BIT_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VSC_ADDR_OFFSET = common dso_local global i32 0, align 4
@VSC_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32*)* @mlx5_vsc_gw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_vsc_gw_read(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @VSC_SYND_BIT_OFFS, align 4
  %11 = load i64, i64* @VSC_FLAG_BIT_LEN, align 8
  %12 = load i64, i64* @VSC_SYND_BIT_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @MLX5_EXTRACT(i32 %9, i32 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load i32, i32* @VSC_ADDR_OFFSET, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @vsc_write(%struct.mlx5_core_dev* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %38

27:                                               ; preds = %19
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %29 = call i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev* %28, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %38

33:                                               ; preds = %27
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %35 = load i32, i32* @VSC_DATA_OFFSET, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @vsc_read(%struct.mlx5_core_dev* %34, i32 %35, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %32, %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @MLX5_EXTRACT(i32, i32, i64) #1

declare dso_local i32 @vsc_write(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @vsc_read(%struct.mlx5_core_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
