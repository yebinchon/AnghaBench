; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ti_am335x_tscadc.c_am335x_tsc_se_adc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ti_am335x_tscadc.c_am335x_tsc_se_adc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_tscadc_dev = type { i32, i32, i32, i32 }

@REG_SE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @am335x_tsc_se_adc_done(%struct.ti_tscadc_dev* %0) #0 {
  %2 = alloca %struct.ti_tscadc_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.ti_tscadc_dev* %0, %struct.ti_tscadc_dev** %2, align 8
  %4 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %11 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REG_SE, align 4
  %14 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %15 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_write(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %19 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
