; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pagealloc.c_alloc_system_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pagealloc.c_alloc_system_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.page = type { i32 }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to allocate page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed dma mapping page\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to track allocated page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @alloc_system_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_system_page(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @dev_to_node(%struct.device* %15)
  store i32 %16, i32* %7, align 4
  store i64 1, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GFP_HIGHUSER, align 4
  %19 = call %struct.page* @alloc_pages_node(i32 %17, i32 %18, i32 0)
  store %struct.page* %19, %struct.page** %8, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %24 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %46, %27
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %33 = call i64 @dma_map_page(%struct.device* %29, %struct.page* %30, i32 0, i32 %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @dma_mapping_error(%struct.device* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %40 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %65

43:                                               ; preds = %28
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %9, align 8
  br label %28

48:                                               ; preds = %43
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.page*, %struct.page** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @insert_page(%struct.mlx5_core_dev* %49, i64 %50, %struct.page* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %63 = call i32 @dma_unmap_page(%struct.device* %59, i64 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %48
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.page*, %struct.page** %8, align 8
  %70 = call i32 @__free_page(%struct.page* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* %9, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %79 = call i32 @dma_unmap_page(%struct.device* %75, i64 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i64 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @insert_page(%struct.mlx5_core_dev*, i64, %struct.page*, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
