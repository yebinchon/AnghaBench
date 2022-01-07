; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_at91-usart.c_at91_usart_mode_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_at91-usart.c_at91_usart_mode_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"atmel,usart-mode\00", align 1
@at91_usart_spi_subdev = common dso_local global %struct.mfd_cell zeroinitializer, align 4
@at91_usart_serial_subdev = common dso_local global %struct.mfd_cell zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"atmel,usart-mode has an invalid value %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_usart_mode_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_usart_mode_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 129, i32* %5, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @device_property_read_u32(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %1
  store %struct.mfd_cell* @at91_usart_spi_subdev, %struct.mfd_cell** %4, align 8
  br label %19

11:                                               ; preds = %1
  store %struct.mfd_cell* @at91_usart_serial_subdev, %struct.mfd_cell** %4, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %11, %10
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %23 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %24 = call i32 @devm_mfd_add_devices(i32* %21, i32 %22, %struct.mfd_cell* %23, i32 1, i32* null, i32 0, i32* null)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
