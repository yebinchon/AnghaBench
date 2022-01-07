; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c__dma_ctrlflags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c__dma_ctrlflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_CTRL_PEN = common dso_local global i32 0, align 4
@D64_XC_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_info*, i32, i32)* @_dma_ctrlflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dma_ctrlflags(%struct.dma_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %11 = icmp eq %struct.dma_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

13:                                               ; preds = %3
  %14 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %15 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DMA_CTRL_PEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %13
  %30 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %31 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %33, i32 %34)
  %36 = call i32 @bcma_read32(i32 %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %38 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @D64_XC_PD, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @bcma_write32(i32 %39, i32 %42, i32 %45)
  %47 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %48 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %50, i32 %51)
  %53 = call i32 @bcma_read32(i32 %49, i32 %52)
  %54 = load i32, i32* @D64_XC_PD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %29
  %58 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %59 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @bcma_write32(i32 %60, i32 %63, i32 %64)
  br label %71

66:                                               ; preds = %29
  %67 = load i32, i32* @DMA_CTRL_PEN, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %57
  br label %72

72:                                               ; preds = %71, %13
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %75 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %12
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @DMA64TXREGOFFS(%struct.dma_info*, i32) #1

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
