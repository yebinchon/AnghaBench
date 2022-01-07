; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ath_common = type { i64 }

@AR_AHB_MODE = common dso_local global i32 0, align 4
@AR_AHB_PREFETCH_RD_EN = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_TXCFG_DMASZ_128B = common dso_local global i32 0, align 4
@AR_TXCFG_DMASZ_MASK = common dso_local global i32 0, align 4
@AR_FTRIG = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_DMASZ_128B = common dso_local global i32 0, align 4
@AR_RXCFG_DMASZ_MASK = common dso_local global i32 0, align 4
@AR_RXFIFO_CFG = common dso_local global i32 0, align 4
@AR_RXBP_THRESH = common dso_local global i32 0, align 4
@AR_RXBP_THRESH_HP = common dso_local global i32 0, align 4
@AR_RXBP_THRESH_LP = common dso_local global i32 0, align 4
@AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE = common dso_local global i32 0, align 4
@AR_9340_PCU_TXBUF_CTRL_USABLE_SIZE = common dso_local global i32 0, align 4
@AR_PCU_TXBUF_CTRL_USABLE_SIZE = common dso_local global i32 0, align 4
@AR_PCU_TXBUF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_set_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_dma(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %7)
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = load i32, i32* @AR_AHB_MODE, align 4
  %15 = load i32, i32* @AR_AHB_PREFETCH_RD_EN, align 4
  %16 = call i32 @REG_SET_BIT(%struct.ath_hw* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = load i32, i32* @AR_TXCFG, align 4
  %20 = load i32, i32* @AR_TXCFG_DMASZ_128B, align 4
  %21 = load i32, i32* @AR_TXCFG_DMASZ_MASK, align 4
  %22 = call i32 @REG_RMW(%struct.ath_hw* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %17
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_TXCFG, align 4
  %31 = load i32, i32* @AR_FTRIG, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %29, i32 %30, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %17
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_RXCFG, align 4
  %41 = load i32, i32* @AR_RXCFG_DMASZ_128B, align 4
  %42 = load i32, i32* @AR_RXCFG_DMASZ_MASK, align 4
  %43 = call i32 @REG_RMW(%struct.ath_hw* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = load i32, i32* @AR_RXFIFO_CFG, align 4
  %46 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 512)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %36
  %51 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %52 = load i32, i32* @AR_RXBP_THRESH, align 4
  %53 = load i32, i32* @AR_RXBP_THRESH_HP, align 4
  %54 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %51, i32 %52, i32 %53, i32 1)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = load i32, i32* @AR_RXBP_THRESH, align 4
  %57 = load i32, i32* @AR_RXBP_THRESH_LP, align 4
  %58 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %55, i32 %56, i32 %57, i32 1)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %61 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %62, %66
  %68 = call i32 @ath9k_hw_set_rx_bufsize(%struct.ath_hw* %59, i64 %67)
  br label %69

69:                                               ; preds = %50, %36
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = call i64 @AR_SREV_9285(%struct.ath_hw* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE, align 4
  store i32 %74, i32* %4, align 4
  br label %84

75:                                               ; preds = %69
  %76 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %77 = call i64 @AR_SREV_9340_13_OR_LATER(%struct.ath_hw* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @AR_9340_PCU_TXBUF_CTRL_USABLE_SIZE, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @AR_PCU_TXBUF_CTRL_USABLE_SIZE, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %73
  %85 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %86 = call i32 @AR_SREV_9271(%struct.ath_hw* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %90 = load i32, i32* @AR_PCU_TXBUF_CTRL, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @REG_WRITE(%struct.ath_hw* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %95 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %94)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %97 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = call i32 @ath9k_hw_reset_txstatus_ring(%struct.ath_hw* %100)
  br label %102

102:                                              ; preds = %99, %93
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_rx_bufsize(%struct.ath_hw*, i64) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_reset_txstatus_ring(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
