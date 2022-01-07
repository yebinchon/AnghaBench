; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ti_am335x_tscadc.c_am335x_tscadc_need_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ti_am335x_tscadc.c_am335x_tscadc_need_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_tscadc_dev = type { i32, i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@REG_ADCFSM = common dso_local global i32 0, align 4
@SEQ_STATUS = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CHARGE_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_tscadc_dev*)* @am335x_tscadc_need_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_tscadc_need_adc(%struct.ti_tscadc_dev* %0) #0 {
  %2 = alloca %struct.ti_tscadc_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.ti_tscadc_dev* %0, %struct.ti_tscadc_dev** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = call i32 @DEFINE_WAIT(i32 %4)
  %6 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REG_ADCFSM, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SEQ_STATUS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %19 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %18, i32 0, i32 3
  %20 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %21 = call i32 @prepare_to_wait(i32* %19, i32* @wait, i32 %20)
  %22 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %23 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %22, i32 0, i32 4
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = call i32 (...) @schedule()
  %26 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %27 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %26, i32 0, i32 4
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %29, i32 0, i32 3
  %31 = call i32 @finish_wait(i32* %30, i32* @wait)
  %32 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %33 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REG_ADCFSM, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %3)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SEQ_STATUS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %15
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @CHARGE_STEP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %15
  %48 = phi i1 [ false, %15 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %52 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %1
  %54 = load %struct.ti_tscadc_dev*, %struct.ti_tscadc_dev** %2, align 8
  %55 = getelementptr inbounds %struct.ti_tscadc_dev, %struct.ti_tscadc_dev* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
