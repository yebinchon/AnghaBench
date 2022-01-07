; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_detect_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_detect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32 }

@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_IE_ADC = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4
@UCB_IE_CLEAR = common dso_local global i32 0, align 4
@UCB_ADC_CR = common dso_local global i32 0, align 4
@UCB_ADC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_START = common dso_local global i32 0, align 4
@UCB_ADC_DATA = common dso_local global i32 0, align 4
@UCB_ADC_DAT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00*)* @ucb1x00_detect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_detect_irq(%struct.ucb1x00* %0) #0 {
  %2 = alloca %struct.ucb1x00*, align 8
  %3 = alloca i64, align 8
  store %struct.ucb1x00* %0, %struct.ucb1x00** %2, align 8
  %4 = call i64 (...) @probe_irq_on()
  store i64 %4, i64* %3, align 8
  %5 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %6 = load i32, i32* @UCB_IE_RIS, align 4
  %7 = load i32, i32* @UCB_IE_ADC, align 4
  %8 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %5, i32 %6, i32 %7)
  %9 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %10 = load i32, i32* @UCB_IE_FAL, align 4
  %11 = load i32, i32* @UCB_IE_ADC, align 4
  %12 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %9, i32 %10, i32 %11)
  %13 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %14 = load i32, i32* @UCB_IE_CLEAR, align 4
  %15 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %13, i32 %14, i32 65535)
  %16 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %17 = load i32, i32* @UCB_IE_CLEAR, align 4
  %18 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %16, i32 %17, i32 0)
  %19 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %20 = load i32, i32* @UCB_ADC_CR, align 4
  %21 = load i32, i32* @UCB_ADC_ENA, align 4
  %22 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %19, i32 %20, i32 %21)
  %23 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %24 = load i32, i32* @UCB_ADC_CR, align 4
  %25 = load i32, i32* @UCB_ADC_ENA, align 4
  %26 = load i32, i32* @UCB_ADC_START, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %23, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %36, %1
  %30 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %31 = load i32, i32* @UCB_ADC_DATA, align 4
  %32 = call i32 @ucb1x00_reg_read(%struct.ucb1x00* %30, i32 %31)
  %33 = load i32, i32* @UCB_ADC_DAT_VAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %29

37:                                               ; preds = %29
  %38 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %39 = load i32, i32* @UCB_ADC_CR, align 4
  %40 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %38, i32 %39, i32 0)
  %41 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %42 = load i32, i32* @UCB_IE_RIS, align 4
  %43 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %41, i32 %42, i32 0)
  %44 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %45 = load i32, i32* @UCB_IE_FAL, align 4
  %46 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %44, i32 %45, i32 0)
  %47 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %48 = load i32, i32* @UCB_IE_CLEAR, align 4
  %49 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %47, i32 %48, i32 65535)
  %50 = load %struct.ucb1x00*, %struct.ucb1x00** %2, align 8
  %51 = load i32, i32* @UCB_IE_CLEAR, align 4
  %52 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %50, i32 %51, i32 0)
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @probe_irq_off(i64 %53)
  ret i32 %54
}

declare dso_local i64 @probe_irq_on(...) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_reg_read(%struct.ucb1x00*, i32) #1

declare dso_local i32 @probe_irq_off(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
