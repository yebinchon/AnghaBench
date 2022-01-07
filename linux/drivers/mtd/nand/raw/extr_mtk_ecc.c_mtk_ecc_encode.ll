; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64* }
%struct.mtk_ecc_config = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dma mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECC_ENCODE = common dso_local global i32 0, align 4
@ECC_ENCPAR00 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_ecc_encode(%struct.mtk_ecc* %0, %struct.mtk_ecc_config* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_ecc*, align 8
  %7 = alloca %struct.mtk_ecc_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_ecc* %0, %struct.mtk_ecc** %6, align 8
  store %struct.mtk_ecc_config* %1, %struct.mtk_ecc_config** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @DMA_TO_DEVICE, align 4
  %19 = call i32 @dma_map_single(i32 %15, i32* %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dma_mapping_error(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %115

34:                                               ; preds = %4
  %35 = load i32, i32* @ECC_ENCODE, align 4
  %36 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %7, align 8
  %37 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %7, align 8
  %40 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %42 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %7, align 8
  %43 = call i32 @mtk_ecc_enable(%struct.mtk_ecc* %41, %struct.mtk_ecc_config* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %48 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i32 @dma_unmap_single(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %115

55:                                               ; preds = %34
  %56 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %57 = load i32, i32* @ECC_ENCODE, align 4
  %58 = call i32 @mtk_ecc_wait_done(%struct.mtk_ecc* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %104

62:                                               ; preds = %55
  %63 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %64 = load i32, i32* @ECC_ENCODE, align 4
  %65 = call i32 @mtk_ecc_wait_idle(%struct.mtk_ecc* %63, i32 %64)
  %66 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %70 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %68, %73
  %75 = add nsw i32 %74, 7
  %76 = ashr i32 %75, 3
  store i32 %76, i32* %11, align 4
  %77 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %78 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %81 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %84 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @ECC_ENCPAR00, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %82, %90
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @round_up(i32 %92, i32 4)
  %94 = call i32 @__ioread32_copy(i32 %79, i64 %91, i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %100 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @memcpy(i32* %98, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %62, %61
  %105 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %106 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = call i32 @dma_unmap_single(i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %113 = call i32 @mtk_ecc_disable(%struct.mtk_ecc* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %104, %46, %27
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_ecc_enable(%struct.mtk_ecc*, %struct.mtk_ecc_config*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @mtk_ecc_wait_done(%struct.mtk_ecc*, i32) #1

declare dso_local i32 @mtk_ecc_wait_idle(%struct.mtk_ecc*, i32) #1

declare dso_local i32 @__ioread32_copy(i32, i64, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mtk_ecc_disable(%struct.mtk_ecc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
