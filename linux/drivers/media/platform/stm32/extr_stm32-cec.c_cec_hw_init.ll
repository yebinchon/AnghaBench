; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_cec_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_cec_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cec = type { i32 }

@CEC_CR = common dso_local global i32 0, align 4
@TXEOM = common dso_local global i32 0, align 4
@TXSOM = common dso_local global i32 0, align 4
@CECEN = common dso_local global i32 0, align 4
@CEC_IER = common dso_local global i32 0, align 4
@ALL_TX_IT = common dso_local global i32 0, align 4
@ALL_RX_IT = common dso_local global i32 0, align 4
@CEC_CFGR = common dso_local global i32 0, align 4
@FULL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cec*)* @cec_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_hw_init(%struct.stm32_cec* %0) #0 {
  %2 = alloca %struct.stm32_cec*, align 8
  store %struct.stm32_cec* %0, %struct.stm32_cec** %2, align 8
  %3 = load %struct.stm32_cec*, %struct.stm32_cec** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CEC_CR, align 4
  %7 = load i32, i32* @TXEOM, align 4
  %8 = load i32, i32* @TXSOM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CECEN, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %11, i32 0)
  %13 = load %struct.stm32_cec*, %struct.stm32_cec** %2, align 8
  %14 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CEC_IER, align 4
  %17 = load i32, i32* @ALL_TX_IT, align 4
  %18 = load i32, i32* @ALL_RX_IT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ALL_TX_IT, align 4
  %21 = load i32, i32* @ALL_RX_IT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.stm32_cec*, %struct.stm32_cec** %2, align 8
  %25 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CEC_CFGR, align 4
  %28 = load i32, i32* @FULL_CFG, align 4
  %29 = load i32, i32* @FULL_CFG, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
