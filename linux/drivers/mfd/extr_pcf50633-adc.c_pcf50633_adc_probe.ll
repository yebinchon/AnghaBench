; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_pcf50633_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-adc.c_pcf50633_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcf50633_adc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCF50633_IRQ_ADCRDY = common dso_local global i32 0, align 4
@pcf50633_adc_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pcf50633_adc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pcf50633_adc* @devm_kzalloc(%struct.TYPE_2__* %6, i32 8, i32 %7)
  store %struct.pcf50633_adc* %8, %struct.pcf50633_adc** %4, align 8
  %9 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %4, align 8
  %10 = icmp ne %struct.pcf50633_adc* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_to_pcf50633(i32 %18)
  %20 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %4, align 8
  %21 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.pcf50633_adc* %23)
  %25 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %4, align 8
  %26 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCF50633_IRQ_ADCRDY, align 4
  %29 = load i32, i32* @pcf50633_adc_irq, align 4
  %30 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %4, align 8
  %31 = call i32 @pcf50633_register_irq(i32 %27, i32 %28, i32 %29, %struct.pcf50633_adc* %30)
  %32 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %4, align 8
  %33 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %32, i32 0, i32 0
  %34 = call i32 @mutex_init(i32* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.pcf50633_adc* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_to_pcf50633(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcf50633_adc*) #1

declare dso_local i32 @pcf50633_register_irq(i32, i32, i32, %struct.pcf50633_adc*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
