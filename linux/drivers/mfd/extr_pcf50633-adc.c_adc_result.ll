; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_adc_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_adc_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }

@PCF50633_REG_ADCS1 = common dso_local global i32 0, align 4
@PCF50633_REG_ADCS3 = common dso_local global i32 0, align 4
@PCF50633_ADCS3_ADCDAT1L_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"adc result = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcf50633*)* @adc_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_result(%struct.pcf50633* %0) #0 {
  %2 = alloca %struct.pcf50633*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %2, align 8
  %6 = load %struct.pcf50633*, %struct.pcf50633** %2, align 8
  %7 = load i32, i32* @PCF50633_REG_ADCS1, align 4
  %8 = call i32 @pcf50633_reg_read(%struct.pcf50633* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.pcf50633*, %struct.pcf50633** %2, align 8
  %10 = load i32, i32* @PCF50633_REG_ADCS3, align 4
  %11 = call i32 @pcf50633_reg_read(%struct.pcf50633* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PCF50633_ADCS3_ADCDAT1L_MASK, align 4
  %16 = and i32 %14, %15
  %17 = or i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pcf50633*, %struct.pcf50633** %2, align 8
  %19 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @pcf50633_reg_read(%struct.pcf50633*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
