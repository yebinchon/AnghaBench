; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_scratchbuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_scratchbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i8*, i64, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.brcmf_bus = type { i32 }

@BRCMF_DMA_D2H_SCRATCH_BUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BRCMF_SHARED_DMA_SCRATCH_ADDR_OFFSET = common dso_local global i64 0, align 8
@BRCMF_SHARED_DMA_SCRATCH_LEN_OFFSET = common dso_local global i64 0, align 8
@BRCMF_DMA_D2H_RINGUPD_BUF_LEN = common dso_local global i32 0, align 4
@BRCMF_SHARED_DMA_RINGUPD_ADDR_OFFSET = common dso_local global i64 0, align 8
@BRCMF_SHARED_DMA_RINGUPD_LEN_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Allocating scratch buffers failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*)* @brcmf_pcie_init_scratchbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_init_scratchbuffers(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %3, align 8
  %7 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %10)
  store %struct.brcmf_bus* %11, %struct.brcmf_bus** %4, align 8
  %12 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* @BRCMF_DMA_D2H_SCRATCH_BUF_LEN, align 4
  %17 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @dma_alloc_coherent(i32* %15, i32 %16, i64* %19, i32 %20)
  %22 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i8* %21, i8** %24, align 8
  %25 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %114

31:                                               ; preds = %1
  %32 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %33 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BRCMF_SHARED_DMA_SCRATCH_ADDR_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %39 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %43, i64 %44, i32 %45)
  %47 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 4
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 32
  %52 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %47, i64 %49, i32 %51)
  %53 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %54 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BRCMF_SHARED_DMA_SCRATCH_LEN_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  store i64 %58, i64* %6, align 8
  %59 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @BRCMF_DMA_D2H_SCRATCH_BUF_LEN, align 4
  %62 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %59, i64 %60, i32 %61)
  %63 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %64 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* @BRCMF_DMA_D2H_RINGUPD_BUF_LEN, align 4
  %68 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %69 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @dma_alloc_coherent(i32* %66, i32 %67, i64* %70, i32 %71)
  %73 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %74 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %77 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %31
  br label %114

82:                                               ; preds = %31
  %83 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %84 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BRCMF_SHARED_DMA_RINGUPD_ADDR_OFFSET, align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* %6, align 8
  %89 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %90 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  %94 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %94, i64 %95, i32 %96)
  %98 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = add nsw i64 %99, 4
  %101 = load i32, i32* %5, align 4
  %102 = ashr i32 %101, 32
  %103 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %98, i64 %100, i32 %102)
  %104 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %105 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BRCMF_SHARED_DMA_RINGUPD_LEN_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  store i64 %109, i64* %6, align 8
  %110 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @BRCMF_DMA_D2H_RINGUPD_BUF_LEN, align 4
  %113 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %110, i64 %111, i32 %112)
  store i32 0, i32* %2, align 4
  br label %121

114:                                              ; preds = %81, %30
  %115 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %116 = call i32 @brcmf_err(%struct.brcmf_bus* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %118 = call i32 @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info* %117)
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %114, %82
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info*, i64, i32) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*) #1

declare dso_local i32 @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
