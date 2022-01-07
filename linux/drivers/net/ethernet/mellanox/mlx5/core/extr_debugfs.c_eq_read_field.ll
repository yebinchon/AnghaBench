; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_eq_read_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_eq_read_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eq = type { i32 }

@query_eq_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to query eq\0A\00", align 1
@eq_context_entry = common dso_local global i32 0, align 4
@eqc = common dso_local global i32 0, align 4
@log_eq_size = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eq*, i32)* @eq_read_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_read_field(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_eq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @query_eq_out, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %24 = load %struct.mlx5_eq*, %struct.mlx5_eq** %6, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @mlx5_core_eq_query(%struct.mlx5_core_dev* %23, %struct.mlx5_eq* %24, i32* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %32 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %57

33:                                               ; preds = %22
  %34 = load i32, i32* @query_eq_out, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @eq_context_entry, align 4
  %37 = call i8* @MLX5_ADDR_OF(i32 %34, i32* %35, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %56 [
    i32 128, label %39
    i32 130, label %45
    i32 129, label %50
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* @eqc, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @log_eq_size, align 4
  %43 = call i32 @MLX5_GET(i32 %40, i8* %41, i32 %42)
  %44 = shl i32 1, %43
  store i32 %44, i32* %9, align 4
  br label %56

45:                                               ; preds = %33
  %46 = load i32, i32* @eqc, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @intr, align 4
  %49 = call i32 @MLX5_GET(i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %33
  %51 = load i32, i32* @eqc, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @log_page_size, align 4
  %54 = call i32 @MLX5_GET(i32 %51, i8* %52, i32 %53)
  %55 = add nsw i32 %54, 12
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %33, %50, %45, %39
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %20
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_eq_query(%struct.mlx5_core_dev*, %struct.mlx5_eq*, i32*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
