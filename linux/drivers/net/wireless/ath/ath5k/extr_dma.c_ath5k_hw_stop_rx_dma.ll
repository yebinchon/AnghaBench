; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_stop_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_stop_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_CR_RXD = common dso_local global i32 0, align 4
@AR5K_CR = common dso_local global i32 0, align 4
@AR5K_CR_RXE = common dso_local global i32 0, align 4
@ATH5K_DEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to stop RX DMA !\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_stop_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_stop_rx_dma(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %5 = load i32, i32* @AR5K_CR_RXD, align 4
  %6 = load i32, i32* @AR5K_CR, align 4
  %7 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %4, i32 %5, i32 %6)
  store i32 1000, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = load i32, i32* @AR5K_CR, align 4
  %14 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %12, i32 %13)
  %15 = load i32, i32* @AR5K_CR_RXE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i1 [ false, %8 ], [ %17, %11 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = call i32 @udelay(i32 100)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %30 = load i32, i32* @ATH5K_DEBUG_DMA, align 4
  %31 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  ret i32 %40
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
