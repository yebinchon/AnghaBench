; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil_configure_interrupt_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil_configure_interrupt_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"configure_interrupt_moderation\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@RGF_DMA_ITR_TX_CNT_CTL = common dso_local global i32 0, align 4
@BIT_DMA_ITR_TX_CNT_CTL_CLR = common dso_local global i32 0, align 4
@RGF_DMA_ITR_TX_CNT_TRSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"set ITR_TX_CNT_TRSH = %d usec\0A\00", align 1
@BIT_DMA_ITR_TX_CNT_CTL_EN = common dso_local global i32 0, align 4
@BIT_DMA_ITR_TX_CNT_CTL_EXT_TIC_SEL = common dso_local global i32 0, align 4
@RGF_DMA_ITR_TX_IDL_CNT_CTL = common dso_local global i32 0, align 4
@BIT_DMA_ITR_TX_IDL_CNT_CTL_CLR = common dso_local global i32 0, align 4
@RGF_DMA_ITR_TX_IDL_CNT_TRSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"set ITR_TX_IDL_CNT_TRSH = %d usec\0A\00", align 1
@BIT_DMA_ITR_TX_IDL_CNT_CTL_EN = common dso_local global i32 0, align 4
@BIT_DMA_ITR_TX_IDL_CNT_CTL_EXT_TIC_SEL = common dso_local global i32 0, align 4
@RGF_DMA_ITR_RX_CNT_CTL = common dso_local global i32 0, align 4
@BIT_DMA_ITR_RX_CNT_CTL_CLR = common dso_local global i32 0, align 4
@RGF_DMA_ITR_RX_CNT_TRSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"set ITR_RX_CNT_TRSH = %d usec\0A\00", align 1
@BIT_DMA_ITR_RX_CNT_CTL_EN = common dso_local global i32 0, align 4
@BIT_DMA_ITR_RX_CNT_CTL_EXT_TIC_SEL = common dso_local global i32 0, align 4
@RGF_DMA_ITR_RX_IDL_CNT_CTL = common dso_local global i32 0, align 4
@BIT_DMA_ITR_RX_IDL_CNT_CTL_CLR = common dso_local global i32 0, align 4
@RGF_DMA_ITR_RX_IDL_CNT_TRSH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"set ITR_RX_IDL_CNT_TRSH = %d usec\0A\00", align 1
@BIT_DMA_ITR_RX_IDL_CNT_CTL_EN = common dso_local global i32 0, align 4
@BIT_DMA_ITR_RX_IDL_CNT_CTL_EXT_TIC_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_configure_interrupt_moderation(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  store %struct.wireless_dev* %8, %struct.wireless_dev** %3, align 8
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %10 = call i32 @wil_dbg_irq(%struct.wil6210_priv* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %102

17:                                               ; preds = %1
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %19 = load i32, i32* @RGF_DMA_ITR_TX_CNT_CTL, align 4
  %20 = load i32, i32* @BIT_DMA_ITR_TX_CNT_CTL_CLR, align 4
  %21 = call i32 @wil_w(%struct.wil6210_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %23 = load i32, i32* @RGF_DMA_ITR_TX_CNT_TRSH, align 4
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wil_w(%struct.wil6210_priv* %22, i32 %23, i32 %26)
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %30 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @wil_info(%struct.wil6210_priv* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %34 = load i32, i32* @RGF_DMA_ITR_TX_CNT_CTL, align 4
  %35 = load i32, i32* @BIT_DMA_ITR_TX_CNT_CTL_EN, align 4
  %36 = load i32, i32* @BIT_DMA_ITR_TX_CNT_CTL_EXT_TIC_SEL, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @wil_w(%struct.wil6210_priv* %33, i32 %34, i32 %37)
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %40 = load i32, i32* @RGF_DMA_ITR_TX_IDL_CNT_CTL, align 4
  %41 = load i32, i32* @BIT_DMA_ITR_TX_IDL_CNT_CTL_CLR, align 4
  %42 = call i32 @wil_w(%struct.wil6210_priv* %39, i32 %40, i32 %41)
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %44 = load i32, i32* @RGF_DMA_ITR_TX_IDL_CNT_TRSH, align 4
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %46 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wil_w(%struct.wil6210_priv* %43, i32 %44, i32 %47)
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %51 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wil_info(%struct.wil6210_priv* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %55 = load i32, i32* @RGF_DMA_ITR_TX_IDL_CNT_CTL, align 4
  %56 = load i32, i32* @BIT_DMA_ITR_TX_IDL_CNT_CTL_EN, align 4
  %57 = load i32, i32* @BIT_DMA_ITR_TX_IDL_CNT_CTL_EXT_TIC_SEL, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @wil_w(%struct.wil6210_priv* %54, i32 %55, i32 %58)
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %61 = load i32, i32* @RGF_DMA_ITR_RX_CNT_CTL, align 4
  %62 = load i32, i32* @BIT_DMA_ITR_RX_CNT_CTL_CLR, align 4
  %63 = call i32 @wil_w(%struct.wil6210_priv* %60, i32 %61, i32 %62)
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %65 = load i32, i32* @RGF_DMA_ITR_RX_CNT_TRSH, align 4
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %67 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wil_w(%struct.wil6210_priv* %64, i32 %65, i32 %68)
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %71 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %72 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @wil_info(%struct.wil6210_priv* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %76 = load i32, i32* @RGF_DMA_ITR_RX_CNT_CTL, align 4
  %77 = load i32, i32* @BIT_DMA_ITR_RX_CNT_CTL_EN, align 4
  %78 = load i32, i32* @BIT_DMA_ITR_RX_CNT_CTL_EXT_TIC_SEL, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @wil_w(%struct.wil6210_priv* %75, i32 %76, i32 %79)
  %81 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %82 = load i32, i32* @RGF_DMA_ITR_RX_IDL_CNT_CTL, align 4
  %83 = load i32, i32* @BIT_DMA_ITR_RX_IDL_CNT_CTL_CLR, align 4
  %84 = call i32 @wil_w(%struct.wil6210_priv* %81, i32 %82, i32 %83)
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %86 = load i32, i32* @RGF_DMA_ITR_RX_IDL_CNT_TRSH, align 4
  %87 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %88 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @wil_w(%struct.wil6210_priv* %85, i32 %86, i32 %89)
  %91 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %93 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @wil_info(%struct.wil6210_priv* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %97 = load i32, i32* @RGF_DMA_ITR_RX_IDL_CNT_CTL, align 4
  %98 = load i32, i32* @BIT_DMA_ITR_RX_IDL_CNT_CTL_EN, align 4
  %99 = load i32, i32* @BIT_DMA_ITR_RX_IDL_CNT_CTL_EXT_TIC_SEL, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @wil_w(%struct.wil6210_priv* %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %17, %16
  ret void
}

declare dso_local i32 @wil_dbg_irq(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
