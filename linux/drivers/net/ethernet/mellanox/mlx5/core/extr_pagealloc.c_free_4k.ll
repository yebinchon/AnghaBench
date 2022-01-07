; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pagealloc.c_free_4k.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pagealloc.c_free_4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fw_page = type { i32, i32, i32, i32, i32 }

@MLX5_U64_4K_PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"page not found\0A\00", align 1
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_NUM_4K_IN_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i32)* @free_4k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_4k(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_page*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MLX5_U64_4K_PAGE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = call %struct.fw_page* @find_fw_page(%struct.mlx5_core_dev* %7, i32 %10)
  store %struct.fw_page* %11, %struct.fw_page** %5, align 8
  %12 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %13 = icmp ne %struct.fw_page* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %81

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MLX5_U64_4K_PAGE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %25 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %30 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %29, i32 0, i32 4
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %33 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MLX5_NUM_4K_IN_PAGE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %17
  %38 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %39 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %38, i32 0, i32 3
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @rb_erase(i32* %39, i32* %42)
  %44 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %45 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %50 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %49, i32 0, i32 1
  %51 = call i32 @list_del(i32* %50)
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MLX5_U64_4K_PAGE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %61 = call i32 @dma_unmap_page(i32 %55, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %63 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__free_page(i32 %64)
  %66 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %67 = call i32 @kfree(%struct.fw_page* %66)
  br label %81

68:                                               ; preds = %17
  %69 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %70 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.fw_page*, %struct.fw_page** %5, align 8
  %75 = getelementptr inbounds %struct.fw_page, %struct.fw_page* %74, i32 0, i32 1
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @list_add(i32* %75, i32* %78)
  br label %80

80:                                               ; preds = %73, %68
  br label %81

81:                                               ; preds = %14, %80, %52
  ret void
}

declare dso_local %struct.fw_page* @find_fw_page(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.fw_page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
