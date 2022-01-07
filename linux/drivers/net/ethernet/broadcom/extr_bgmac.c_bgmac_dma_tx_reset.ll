; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }
%struct.bgmac_dma_ring = type { i64 }

@BGMAC_DMA_TX_CTL = common dso_local global i64 0, align 8
@BGMAC_DMA_TX_SUSPEND = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_STATUS = common dso_local global i64 0, align 8
@BGMAC_DMA_TX_STAT = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_STAT_DISABLED = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_STAT_IDLEWAIT = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_STAT_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Timeout suspending DMA TX ring 0x%X (BGMAC_DMA_TX_STAT: 0x%08X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"DMA TX ring 0x%X wasn't disabled on time, waiting additional 300us\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Reset of DMA TX ring 0x%X failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_tx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_tx_reset(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %7 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %8 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %112

12:                                               ; preds = %2
  %13 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %14 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %15 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BGMAC_DMA_TX_CTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @BGMAC_DMA_TX_SUSPEND, align 4
  %20 = call i32 @bgmac_write(%struct.bgmac* %13, i64 %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %49, %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 1000
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %26 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %27 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BGMAC_DMA_TX_STATUS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @bgmac_read(%struct.bgmac* %25, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @BGMAC_DMA_TX_STAT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BGMAC_DMA_TX_STAT_DISABLED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BGMAC_DMA_TX_STAT_IDLEWAIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BGMAC_DMA_TX_STAT_STOPPED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %24
  store i32 0, i32* %6, align 4
  br label %52

47:                                               ; preds = %42
  %48 = call i32 @udelay(i32 10)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %21

52:                                               ; preds = %46, %21
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %57 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %60 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %66 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %67 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BGMAC_DMA_TX_CTL, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @bgmac_write(%struct.bgmac* %65, i64 %70, i32 0)
  %72 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %73 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %74 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BGMAC_DMA_TX_STATUS, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i32, i32* @BGMAC_DMA_TX_STAT, align 4
  %79 = load i32, i32* @BGMAC_DMA_TX_STAT_DISABLED, align 4
  %80 = call i32 @bgmac_wait_value(%struct.bgmac* %72, i64 %77, i32 %78, i32 %79, i32 10000)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %112, label %82

82:                                               ; preds = %64
  %83 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %84 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %87 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @dev_warn(i32 %85, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = call i32 @udelay(i32 300)
  %91 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %92 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %93 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BGMAC_DMA_TX_STATUS, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @bgmac_read(%struct.bgmac* %91, i64 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @BGMAC_DMA_TX_STAT, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @BGMAC_DMA_TX_STAT_DISABLED, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %82
  %104 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %105 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %108 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %103, %82
  br label %112

112:                                              ; preds = %11, %111, %64
  ret void
}

declare dso_local i32 @bgmac_write(%struct.bgmac*, i64, i32) #1

declare dso_local i32 @bgmac_read(%struct.bgmac*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @bgmac_wait_value(%struct.bgmac*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
