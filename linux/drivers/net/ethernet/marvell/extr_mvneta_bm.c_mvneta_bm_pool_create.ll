; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_bm = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.mvneta_bm_pool = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVNETA_BM_POOL_PTR_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BM pool %d is not %d bytes aligned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_bm*, %struct.mvneta_bm_pool*)* @mvneta_bm_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_bm_pool_create(%struct.mvneta_bm* %0, %struct.mvneta_bm_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvneta_bm*, align 8
  %5 = alloca %struct.mvneta_bm_pool*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mvneta_bm* %0, %struct.mvneta_bm** %4, align 8
  store %struct.mvneta_bm_pool* %1, %struct.mvneta_bm_pool** %5, align 8
  %11 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %12 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %15 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %25 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %24, i32 0, i32 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64 @dma_alloc_coherent(i32* %22, i32 %23, i32* %25, i32 %26)
  %28 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %29 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %31 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %2
  %38 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %39 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @MVNETA_BM_POOL_PTR_ALIGN, align 4
  %43 = call i32 @IS_ALIGNED(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %37
  %46 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %50 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %53 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dma_free_coherent(i32* %47, i32 %48, i64 %51, i32 %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %59 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MVNETA_BM_POOL_PTR_ALIGN, align 4
  %62 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %106

65:                                               ; preds = %37
  %66 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %67 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mvebu_mbus_get_dram_win_info(i32 %68, i32* %7, i32* %8)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %77 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %80 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dma_free_coherent(i32* %74, i32 %75, i64 %78, i32 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %106

84:                                               ; preds = %65
  %85 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %86 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %87 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @MVNETA_BM_POOL_BASE_REG(i32 %88)
  %90 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %91 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mvneta_bm_write(%struct.mvneta_bm* %85, i32 %89, i32 %92)
  %94 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %95 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %96 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @mvneta_bm_pool_target_set(%struct.mvneta_bm* %94, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %102 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %103 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mvneta_bm_pool_enable(%struct.mvneta_bm* %101, i32 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %84, %72, %45, %34
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mvebu_mbus_get_dram_win_info(i32, i32*, i32*) #1

declare dso_local i32 @mvneta_bm_write(%struct.mvneta_bm*, i32, i32) #1

declare dso_local i32 @MVNETA_BM_POOL_BASE_REG(i32) #1

declare dso_local i32 @mvneta_bm_pool_target_set(%struct.mvneta_bm*, i32, i32, i32) #1

declare dso_local i32 @mvneta_bm_pool_enable(%struct.mvneta_bm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
