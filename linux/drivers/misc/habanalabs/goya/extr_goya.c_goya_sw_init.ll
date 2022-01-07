; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, %struct.goya_device* }
%struct.TYPE_4__ = type { i32 (%struct.hl_device*, i32, i64, i32)*, i64 (%struct.hl_device*, i32, i32*, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.goya_device = type { i32, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRAM_PHYS_BASE = common dso_local global i32 0, align 4
@GOYA_PLL_FREQ_LOW = common dso_local global i8* null, align 8
@GOYA_DMA_POOL_BLK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to create DMA pool\0A\00", align 1
@HL_CPU_ACCESSIBLE_MEM_SIZE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"cpu accessible memory at bus address %pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create CPU accessible DMA pool\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to add memory to CPU accessible DMA pool\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_sw_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.goya_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.goya_device* @kzalloc(i32 40, i32 %6)
  store %struct.goya_device* %7, %struct.goya_device** %4, align 8
  %8 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %9 = icmp ne %struct.goya_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %148

13:                                               ; preds = %1
  %14 = load i32, i32* @DRAM_PHYS_BASE, align 4
  %15 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %16 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @GOYA_PLL_FREQ_LOW, align 8
  %18 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %19 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @GOYA_PLL_FREQ_LOW, align 8
  %21 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %22 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @GOYA_PLL_FREQ_LOW, align 8
  %24 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %25 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %27 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 7
  store %struct.goya_device* %26, %struct.goya_device** %28, align 8
  %29 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_name(i32 %31)
  %33 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* @GOYA_DMA_POOL_BLK_SIZE, align 4
  %38 = call i32 @dma_pool_create(i32 %32, i32* %36, i32 %37, i32 8, i32 0)
  %39 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %13
  %46 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %47 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %144

52:                                               ; preds = %13
  %53 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64 (%struct.hl_device*, i32, i32*, i32)*, i64 (%struct.hl_device*, i32, i32*, i32)** %56, align 8
  %58 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %59 = load i32, i32* @HL_CPU_ACCESSIBLE_MEM_SIZE, align 4
  %60 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %61 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %60, i32 0, i32 1
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32, i32* @__GFP_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = call i64 %57(%struct.hl_device* %58, i32 %59, i32* %61, i32 %64)
  %66 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %67 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %69 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %52
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %139

75:                                               ; preds = %52
  %76 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %77 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %80 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %79, i32 0, i32 1
  %81 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %80)
  %82 = call i32 @ilog2(i32 32)
  %83 = call i32 @gen_pool_create(i32 %82, i32 -1)
  %84 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %85 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %87 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %75
  %91 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %92 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %124

97:                                               ; preds = %75
  %98 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %99 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %102 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @HL_CPU_ACCESSIBLE_MEM_SIZE, align 4
  %105 = call i32 @gen_pool_add(i32 %100, i64 %103, i32 %104, i32 -1)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %110 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @EFAULT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %119

115:                                              ; preds = %97
  %116 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %117 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %116, i32 0, i32 0
  %118 = call i32 @spin_lock_init(i32* %117)
  store i32 0, i32* %2, align 4
  br label %148

119:                                              ; preds = %108
  %120 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %121 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @gen_pool_destroy(i32 %122)
  br label %124

124:                                              ; preds = %119, %90
  %125 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %126 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32 (%struct.hl_device*, i32, i64, i32)*, i32 (%struct.hl_device*, i32, i64, i32)** %128, align 8
  %130 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %131 = load i32, i32* @HL_CPU_ACCESSIBLE_MEM_SIZE, align 4
  %132 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %133 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %136 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 %129(%struct.hl_device* %130, i32 %131, i64 %134, i32 %137)
  br label %139

139:                                              ; preds = %124, %72
  %140 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %141 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dma_pool_destroy(i32 %142)
  br label %144

144:                                              ; preds = %139, %45
  %145 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %146 = call i32 @kfree(%struct.goya_device* %145)
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %144, %115, %10
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.goya_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_pool_create(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @gen_pool_add(i32, i64, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.goya_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
