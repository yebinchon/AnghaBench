; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mvpp2 = type { i64 }
%struct.mvpp2_bm_pool = type { i32, i32, i64, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MVPP21 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVPP2_BM_POOL_PTR_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BM pool %d is not %d bytes aligned\0A\00", align 1
@MVPP2_BM_START_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*, i32)* @mvpp2_bm_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_bm_pool_create(%struct.device* %0, %struct.mvpp2* %1, %struct.mvpp2_bm_pool* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mvpp2*, align 8
  %8 = alloca %struct.mvpp2_bm_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %7, align 8
  store %struct.mvpp2_bm_pool* %2, %struct.mvpp2_bm_pool** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 @IS_ALIGNED(i64 %12, i32 16)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %124

18:                                               ; preds = %4
  %19 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %20 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MVPP21, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %30 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %37 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %41 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %44 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %43, i32 0, i32 5
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i64 @dma_alloc_coherent(%struct.device* %39, i32 %42, i32* %44, i32 %45)
  %47 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %48 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %50 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %124

56:                                               ; preds = %38
  %57 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %58 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @MVPP2_BM_POOL_PTR_ALIGN, align 4
  %61 = call i32 @IS_ALIGNED(i64 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %66 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %69 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %72 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dma_free_coherent(%struct.device* %64, i32 %67, i64 %70, i32 %73)
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %77 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MVPP2_BM_POOL_PTR_ALIGN, align 4
  %80 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %124

83:                                               ; preds = %56
  %84 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %85 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %86 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @MVPP2_BM_POOL_BASE_REG(i32 %87)
  %89 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %90 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @lower_32_bits(i32 %91)
  %93 = call i32 @mvpp2_write(%struct.mvpp2* %84, i32 %88, i32 %92)
  %94 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %95 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %96 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @MVPP2_BM_POOL_SIZE_REG(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @mvpp2_write(%struct.mvpp2* %94, i32 %98, i32 %99)
  %101 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %102 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %103 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @MVPP2_BM_POOL_CTRL_REG(i32 %104)
  %106 = call i32 @mvpp2_read(%struct.mvpp2* %101, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @MVPP2_BM_START_MASK, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %111 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %112 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MVPP2_BM_POOL_CTRL_REG(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @mvpp2_write(%struct.mvpp2* %110, i32 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %119 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %121 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %123 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %83, %63, %53, %15
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_BM_POOL_BASE_REG(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @MVPP2_BM_POOL_SIZE_REG(i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_BM_POOL_CTRL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
