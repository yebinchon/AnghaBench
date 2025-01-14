; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ti_am335x_tscadc.c_am335x_tsc_se_set_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ti_am335x_tscadc.c_am335x_tsc_se_set_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_tscadc_dev = type { i32, i32, i32, i32, i32, i64 }

@REG_SE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @am335x_tsc_se_set_cache(%struct.ti_tscadc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_tscadc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ti_tscadc_dev* %0, %struct.ti_tscadc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %20, i32 0, i32 4
  %22 = call i32 @wake_up(i32* %21)
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %30 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @REG_SE, align 4
  %33 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_write(i32 %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
