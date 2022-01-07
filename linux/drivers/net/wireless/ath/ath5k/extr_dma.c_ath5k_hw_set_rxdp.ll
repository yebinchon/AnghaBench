; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_set_rxdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_set_rxdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_CR = common dso_local global i32 0, align 4
@AR5K_CR_RXE = common dso_local global i32 0, align 4
@ATH5K_DEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tried to set RXDP while rx was active !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AR5K_RXDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_rxdp(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %7 = load i32, i32* @AR5K_CR, align 4
  %8 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %6, i32 %7)
  %9 = load i32, i32* @AR5K_CR_RXE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = load i32, i32* @ATH5K_DEBUG_DMA, align 4
  %15 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %13, i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AR5K_RXDP, align 4
  %22 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %19, i32 %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
