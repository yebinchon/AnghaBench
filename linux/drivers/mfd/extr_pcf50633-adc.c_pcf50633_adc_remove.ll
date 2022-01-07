; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_pcf50633_adc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_pcf50633_adc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pcf50633_adc = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCF50633_IRQ_ADCRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"adc driver removed with request pending\0A\00", align 1
@PCF50633_MAX_ADC_FIFO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_adc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_adc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pcf50633_adc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.pcf50633_adc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.pcf50633_adc* %7, %struct.pcf50633_adc** %3, align 8
  %8 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %9 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* @PCF50633_IRQ_ADCRDY, align 4
  %12 = call i32 @pcf50633_free_irq(%struct.TYPE_2__* %10, i32 %11)
  %13 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %14 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %17 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %20 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %30 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %1
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PCF50633_MAX_ADC_FIFO_DEPTH, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %42 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %3, align 8
  %54 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  ret i32 0
}

declare dso_local %struct.pcf50633_adc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pcf50633_free_irq(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
