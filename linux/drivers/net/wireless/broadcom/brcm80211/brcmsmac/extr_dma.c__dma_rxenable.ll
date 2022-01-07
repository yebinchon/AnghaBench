; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c__dma_rxenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c__dma_rxenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@D64_RC_RE = common dso_local global i32 0, align 4
@D64_RC_AE = common dso_local global i32 0, align 4
@DMA_CTRL_PEN = common dso_local global i32 0, align 4
@D64_RC_PD = common dso_local global i32 0, align 4
@DMA_CTRL_ROC = common dso_local global i32 0, align 4
@D64_RC_OC = common dso_local global i32 0, align 4
@D64_RC_RO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_info*)* @_dma_rxenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dma_rxenable(%struct.dma_info* %0) #0 {
  %2 = alloca %struct.dma_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %2, align 8
  %5 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %6 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %10 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %13 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @brcms_dbg_dma(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @D64_RC_RE, align 4
  %17 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %18 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %20, i32 %21)
  %23 = call i32 @bcma_read32(i32 %19, i32 %22)
  %24 = load i32, i32* @D64_RC_AE, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %16, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @DMA_CTRL_PEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @D64_RC_PD, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DMA_CTRL_ROC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @D64_RC_OC, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %46 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %48, i32 %49)
  %51 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %52 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @D64_RC_RO_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @bcma_write32(i32 %47, i32 %50, i32 %57)
  ret void
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @DMA64RXREGOFFS(%struct.dma_info*, i32) #1

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
