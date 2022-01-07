; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_register_uart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_register_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.platform_device = type { i32, i32 }
%struct.plat_serial8250_port = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"serial8250\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SM501_USE_UART0 = common dso_local global i32 0, align 4
@SM501_GATE_UART0 = common dso_local global i32 0, align 4
@SM501_IRQ_MASK = common dso_local global i32 0, align 4
@SM501_GPIO63_32_CONTROL = common dso_local global i32 0, align 4
@SM501_USE_UART1 = common dso_local global i32 0, align 4
@SM501_GATE_UART1 = common dso_local global i32 0, align 4
@PLAT8250_DEV_SM501 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501_devdata*, i32)* @sm501_register_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_register_uart(%struct.sm501_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.plat_serial8250_port*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %9 = call %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 12)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = call %struct.plat_serial8250_port* @dev_get_platdata(i32* %17)
  store %struct.plat_serial8250_port* %18, %struct.plat_serial8250_port** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SM501_USE_UART0, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %25 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %7, align 8
  %26 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %25, i32 1
  store %struct.plat_serial8250_port* %26, %struct.plat_serial8250_port** %7, align 8
  %27 = ptrtoint %struct.plat_serial8250_port* %25 to i32
  %28 = call i32 @sm501_setup_uart_data(%struct.sm501_devdata* %24, i32 %27, i32 196608)
  %29 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %30 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SM501_GATE_UART0, align 4
  %33 = call i32 @sm501_unit_power(i32 %31, i32 %32, i32 1)
  %34 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %35 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SM501_IRQ_MASK, align 4
  %38 = call i32 @sm501_modify_reg(i32 %36, i32 %37, i32 4096, i32 0)
  %39 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %40 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SM501_GPIO63_32_CONTROL, align 4
  %43 = call i32 @sm501_modify_reg(i32 %41, i32 %42, i32 480, i32 0)
  br label %44

44:                                               ; preds = %23, %15
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SM501_USE_UART1, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %51 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %7, align 8
  %52 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %51, i32 1
  store %struct.plat_serial8250_port* %52, %struct.plat_serial8250_port** %7, align 8
  %53 = ptrtoint %struct.plat_serial8250_port* %51 to i32
  %54 = call i32 @sm501_setup_uart_data(%struct.sm501_devdata* %50, i32 %53, i32 196640)
  %55 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %56 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SM501_GATE_UART1, align 4
  %59 = call i32 @sm501_unit_power(i32 %57, i32 %58, i32 1)
  %60 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %61 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SM501_IRQ_MASK, align 4
  %64 = call i32 @sm501_modify_reg(i32 %62, i32 %63, i32 8192, i32 0)
  %65 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %66 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SM501_GPIO63_32_CONTROL, align 4
  %69 = call i32 @sm501_modify_reg(i32 %67, i32 %68, i32 7680, i32 0)
  br label %70

70:                                               ; preds = %49, %44
  %71 = load i32, i32* @PLAT8250_DEV_SM501, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %76 = call i32 @sm501_register_device(%struct.sm501_devdata* %74, %struct.platform_device* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata*, i8*, i32, i32) #1

declare dso_local %struct.plat_serial8250_port* @dev_get_platdata(i32*) #1

declare dso_local i32 @sm501_setup_uart_data(%struct.sm501_devdata*, i32, i32) #1

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

declare dso_local i32 @sm501_modify_reg(i32, i32, i32, i32) #1

declare dso_local i32 @sm501_register_device(%struct.sm501_devdata*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
