; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_port.c_mlx5_core_query_ib_ppcnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_port.c_mlx5_core_query_ib_ppcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ppcnt_reg = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@grp = common dso_local global i32 0, align 4
@MLX5_INFINIBAND_PORT_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5_REG_PPCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_query_ib_ppcnt(%struct.mlx5_core_dev* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kvzalloc(i64 %12, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load i32, i32* @ppcnt_reg, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @local_port, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @MLX5_SET(i32 %22, i32* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @ppcnt_reg, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @grp, align 4
  %30 = load i32, i32* @MLX5_INFINIBAND_PORT_COUNTERS_GROUP, align 4
  %31 = call i32 @MLX5_SET(i32 %27, i32* %28, i32 %29, i32 %30)
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %38 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %32, i32* %33, i64 %34, i8* %35, i64 %36, i32 %37, i32 0, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @kvfree(i32* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %21, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32* @kvzalloc(i64, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i64, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
