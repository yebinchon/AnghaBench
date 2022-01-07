; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cec = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@TXERR = common dso_local global i32 0, align 4
@TXUDR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@ARBLST = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i32 0, align 4
@TXACKE = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@TXBR = common dso_local global i32 0, align 4
@CEC_TXDR = common dso_local global i32 0, align 4
@CEC_CR = common dso_local global i32 0, align 4
@TXEOM = common dso_local global i32 0, align 4
@TXEND = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cec*, i32)* @stm32_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_tx_done(%struct.stm32_cec* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_cec*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_cec* %0, %struct.stm32_cec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TXERR, align 4
  %7 = load i32, i32* @TXUDR, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %16 = call i32 @cec_transmit_done(i32 %14, i32 %15, i32 0, i32 0, i32 0, i32 1)
  br label %102

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ARBLST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %24 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CEC_TX_STATUS_ARB_LOST, align 4
  %27 = call i32 @cec_transmit_done(i32 %25, i32 %26, i32 1, i32 0, i32 0, i32 0)
  br label %102

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TXACKE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %38 = call i32 @cec_transmit_done(i32 %36, i32 %37, i32 0, i32 1, i32 0, i32 0)
  br label %102

39:                                               ; preds = %28
  %40 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %41 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TXBR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %39
  %47 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %48 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %51 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %46
  %56 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %57 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CEC_TXDR, align 4
  %60 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %61 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %65 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %66
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regmap_write(i32 %58, i32 %59, i32 %69)
  br label %71

71:                                               ; preds = %55, %46
  %72 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %73 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %76 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %82 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CEC_CR, align 4
  %85 = load i32, i32* @TXEOM, align 4
  %86 = load i32, i32* @TXEOM, align 4
  %87 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %71
  br label %89

89:                                               ; preds = %88, %39
  %90 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %91 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @TXEND, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.stm32_cec*, %struct.stm32_cec** %3, align 8
  %98 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %101 = call i32 @cec_transmit_done(i32 %99, i32 %100, i32 0, i32 0, i32 0, i32 0)
  br label %102

102:                                              ; preds = %11, %22, %33, %96, %89
  ret void
}

declare dso_local i32 @cec_transmit_done(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
