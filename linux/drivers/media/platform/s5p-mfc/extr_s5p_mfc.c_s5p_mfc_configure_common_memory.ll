; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_configure_common_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_configure_common_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i64, i32*, %struct.device**, i32, i32, %struct.TYPE_2__* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.device }

@SZ_4M = common dso_local global i64 0, align 8
@CONFIG_DMA_CMA = common dso_local global i32 0, align 4
@SZ_8M = common dso_local global i64 0, align 8
@mfc_mem_size = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"failed to preallocate %ld MiB for the firmware and context buffers\0A\00", align 1
@SZ_1M = common dso_local global i64 0, align 8
@BANK_L_CTX = common dso_local global i64 0, align 8
@BANK_R_CTX = common dso_local global i64 0, align 8
@MFC_BASE_ALIGN_ORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"preallocated %ld MiB buffer for the firmware and context buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_configure_common_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_configure_common_memory(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i64, i64* @SZ_4M, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @CONFIG_DMA_CMA, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i64 @exynos_is_iommu_available(%struct.device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %1
  %21 = load i64, i64* @SZ_8M, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* @mfc_mem_size, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @mfc_mem_size, align 8
  %27 = call i64 @memparse(i64 %26, i32* null)
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = call i32 @BITS_TO_LONGS(i64 %31)
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kzalloc(i32 %36, i32 %37)
  %39 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %147

48:                                               ; preds = %28
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %51, i32 0, i32 0
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @dma_alloc_coherent(%struct.device* %49, i64 %50, i32* %52, i32 %53)
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %48
  %62 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @SZ_1M, align 8
  %69 = udiv i64 %67, %68
  %70 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %147

73:                                               ; preds = %48
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %78 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @BANK_L_CTX, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %89 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @BANK_R_CTX, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %73
  %99 = load i32, i32* @MFC_BASE_ALIGN_ORDER, align 4
  %100 = shl i32 1, %99
  store i32 %100, i32* %7, align 4
  %101 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %102 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i64, i64* @PAGE_SHIFT, align 8
  %106 = trunc i64 %105 to i32
  %107 = lshr i32 %104, %106
  %108 = call i32 @bitmap_set(i32 %103, i32 0, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %111 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @BANK_L_CTX, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, %109
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %119 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @BANK_R_CTX, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, %117
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %98, %73
  %126 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %127 = call i32 @s5p_mfc_alloc_firmware(%struct.s5p_mfc_dev* %126)
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %130 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %129, i32 0, i32 3
  %131 = load %struct.device**, %struct.device*** %130, align 8
  %132 = load i64, i64* @BANK_R_CTX, align 8
  %133 = getelementptr inbounds %struct.device*, %struct.device** %131, i64 %132
  store %struct.device* %128, %struct.device** %133, align 8
  %134 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %135 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %134, i32 0, i32 3
  %136 = load %struct.device**, %struct.device*** %135, align 8
  %137 = load i64, i64* @BANK_L_CTX, align 8
  %138 = getelementptr inbounds %struct.device*, %struct.device** %136, i64 %137
  store %struct.device* %128, %struct.device** %138, align 8
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @DMA_BIT_MASK(i32 32)
  %141 = call i32 @vb2_dma_contig_set_max_seg_size(%struct.device* %139, i32 %140)
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @SZ_1M, align 8
  %145 = udiv i64 %143, %144
  %146 = call i32 @dev_info(%struct.device* %142, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %125, %61, %45
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @exynos_is_iommu_available(%struct.device*) #1

declare dso_local i64 @memparse(i64, i32*) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @s5p_mfc_alloc_firmware(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
