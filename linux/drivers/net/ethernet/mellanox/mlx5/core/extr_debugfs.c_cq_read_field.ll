; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_cq_read_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_cq_read_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_cq = type { i32 }

@query_cq_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to query cq\0A\00", align 1
@cq_context = common dso_local global i32 0, align 4
@cqc = common dso_local global i32 0, align 4
@log_cq_size = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_core_cq*, i32)* @cq_read_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cq_read_field(%struct.mlx5_core_dev* %0, %struct.mlx5_core_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_cq* %1, %struct.mlx5_core_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @query_cq_out, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kvzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %24 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @mlx5_core_query_cq(%struct.mlx5_core_dev* %23, %struct.mlx5_core_cq* %24, i32* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %32 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %55

33:                                               ; preds = %22
  %34 = load i32, i32* @query_cq_out, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @cq_context, align 4
  %37 = call i8* @MLX5_ADDR_OF(i32 %34, i32* %35, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %54 [
    i32 128, label %39
    i32 129, label %43
    i32 130, label %49
  ]

39:                                               ; preds = %33
  %40 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @cqc, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @log_cq_size, align 4
  %47 = call i32 @MLX5_GET(i32 %44, i8* %45, i32 %46)
  %48 = shl i32 1, %47
  store i32 %48, i32* %9, align 4
  br label %54

49:                                               ; preds = %33
  %50 = load i32, i32* @cqc, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @log_page_size, align 4
  %53 = call i32 @MLX5_GET(i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %33, %49, %43, %39
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @kvfree(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_query_cq(%struct.mlx5_core_dev*, %struct.mlx5_core_cq*, i32*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
