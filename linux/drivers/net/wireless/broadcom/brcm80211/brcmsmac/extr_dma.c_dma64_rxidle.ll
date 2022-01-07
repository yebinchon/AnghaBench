; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma64_rxidle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma64_rxidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@status0 = common dso_local global i32 0, align 4
@D64_RS0_CD_MASK = common dso_local global i32 0, align 4
@ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_info*)* @dma64_rxidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma64_rxidle(%struct.dma_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_info*, align 8
  store %struct.dma_info* %0, %struct.dma_info** %3, align 8
  %4 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %5 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %8 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @brcms_dbg_dma(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %12 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %18 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %21 = load i32, i32* @status0, align 4
  %22 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %20, i32 %21)
  %23 = call i32 @bcma_read32(i32 %19, i32 %22)
  %24 = load i32, i32* @D64_RS0_CD_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %27 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %30 = load i32, i32* @ptr, align 4
  %31 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %29, i32 %30)
  %32 = call i32 @bcma_read32(i32 %28, i32 %31)
  %33 = load i32, i32* @D64_RS0_CD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %25, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %16, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @DMA64RXREGOFFS(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
