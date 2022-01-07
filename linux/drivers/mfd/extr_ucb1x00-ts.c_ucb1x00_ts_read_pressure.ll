; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_read_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_read_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_ts = type { i32, i32 }

@COLLIE_TC35143_GPIO_TBL_CHK = common dso_local global i32 0, align 4
@UCB_TS_CR = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPX_POW = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMX_POW = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_POS = common dso_local global i32 0, align 4
@UCB_TS_CR_BIAS_ENA = common dso_local global i32 0, align 4
@UCB_ADC_INP_AD2 = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMY_GND = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPY_GND = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_PRES = common dso_local global i32 0, align 4
@UCB_ADC_INP_TSPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00_ts*)* @ucb1x00_ts_read_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_ts_read_pressure(%struct.ucb1x00_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucb1x00_ts*, align 8
  store %struct.ucb1x00_ts* %0, %struct.ucb1x00_ts** %3, align 8
  %4 = call i64 (...) @machine_is_collie()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %8 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @COLLIE_TC35143_GPIO_TBL_CHK, align 4
  %11 = call i32 @ucb1x00_io_write(i32 %9, i32 %10, i32 0)
  %12 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %13 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UCB_TS_CR, align 4
  %16 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %17 = load i32, i32* @UCB_TS_CR_TSMX_POW, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @UCB_TS_CR_MODE_POS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ucb1x00_reg_write(i32 %14, i32 %15, i32 %22)
  %24 = call i32 @udelay(i32 55)
  %25 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %26 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UCB_ADC_INP_AD2, align 4
  %29 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %30 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ucb1x00_adc_read(i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %1
  %34 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %35 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UCB_TS_CR, align 4
  %38 = load i32, i32* @UCB_TS_CR_TSMX_POW, align 4
  %39 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UCB_TS_CR_TSMY_GND, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @UCB_TS_CR_TSPY_GND, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @UCB_TS_CR_MODE_PRES, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ucb1x00_reg_write(i32 %36, i32 %37, i32 %48)
  %50 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %51 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UCB_ADC_INP_TSPY, align 4
  %54 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %55 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ucb1x00_adc_read(i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %33, %6
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @machine_is_collie(...) #1

declare dso_local i32 @ucb1x00_io_write(i32, i32, i32) #1

declare dso_local i32 @ucb1x00_reg_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ucb1x00_adc_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
