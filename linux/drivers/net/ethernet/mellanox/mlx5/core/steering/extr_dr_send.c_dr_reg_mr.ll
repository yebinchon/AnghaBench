; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_mr = type { i64, i8*, i32, i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Can't dma buf\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't create mkey\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_mr* (%struct.mlx5_core_dev*, i32, i8*, i64)* @dr_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_mr* @dr_reg_mr(%struct.mlx5_core_dev* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mlx5dr_mr*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx5dr_mr*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlx5dr_mr* @kzalloc(i32 24, i32 %14)
  store %struct.mlx5dr_mr* %15, %struct.mlx5dr_mr** %10, align 8
  %16 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %17 = icmp ne %struct.mlx5dr_mr* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.mlx5dr_mr* null, %struct.mlx5dr_mr** %5, align 8
  br label %68

19:                                               ; preds = %4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %11, align 8
  %24 = load %struct.device*, %struct.device** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %28 = call i32 @dma_map_single(%struct.device* %24, i8* %25, i64 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.device*, %struct.device** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @dma_mapping_error(%struct.device* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %36 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %38 = call i32 @kfree(%struct.mlx5dr_mr* %37)
  store %struct.mlx5dr_mr* null, %struct.mlx5dr_mr** %5, align 8
  br label %68

39:                                               ; preds = %19
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_mr, %struct.mlx5dr_mr* %42, i32 0, i32 3
  %44 = call i32 @dr_create_mkey(%struct.mlx5_core_dev* %40, i32 %41, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %49 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.device*, %struct.device** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %54 = call i32 @dma_unmap_single(%struct.device* %50, i32 %51, i64 %52, i32 %53)
  %55 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %56 = call i32 @kfree(%struct.mlx5dr_mr* %55)
  store %struct.mlx5dr_mr* null, %struct.mlx5dr_mr** %5, align 8
  br label %68

57:                                               ; preds = %39
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %60 = getelementptr inbounds %struct.mlx5dr_mr, %struct.mlx5dr_mr* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %63 = getelementptr inbounds %struct.mlx5dr_mr, %struct.mlx5dr_mr* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_mr, %struct.mlx5dr_mr* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %10, align 8
  store %struct.mlx5dr_mr* %67, %struct.mlx5dr_mr** %5, align 8
  br label %68

68:                                               ; preds = %57, %47, %34, %18
  %69 = load %struct.mlx5dr_mr*, %struct.mlx5dr_mr** %5, align 8
  ret %struct.mlx5dr_mr* %69
}

declare dso_local %struct.mlx5dr_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_mr*) #1

declare dso_local i32 @dr_create_mkey(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
