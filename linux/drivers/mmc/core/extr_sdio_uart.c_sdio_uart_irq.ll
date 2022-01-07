; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.sdio_uart_port = type { i32* }

@current = common dso_local global i32* null, align 8
@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @sdio_uart_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_irq(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.sdio_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = call %struct.sdio_uart_port* @sdio_get_drvdata(%struct.sdio_func* %6)
  store %struct.sdio_uart_port* %7, %struct.sdio_uart_port** %3, align 8
  %8 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** @current, align 8
  %12 = icmp eq i32* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %19 = load i32, i32* @UART_IIR, align 4
  %20 = call i32 @sdio_in(%struct.sdio_uart_port* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @UART_IIR_NO_INT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %53

26:                                               ; preds = %17
  %27 = load i32*, i32** @current, align 8
  %28 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %31 = load i32, i32* @UART_LSR, align 4
  %32 = call i32 @sdio_in(%struct.sdio_uart_port* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @UART_LSR_DR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %39 = call i32 @sdio_uart_receive_chars(%struct.sdio_uart_port* %38, i32* %5)
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %42 = call i32 @sdio_uart_check_modem_status(%struct.sdio_uart_port* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UART_LSR_THRE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %49 = call i32 @sdio_uart_transmit_chars(%struct.sdio_uart_port* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %25, %16
  ret void
}

declare dso_local %struct.sdio_uart_port* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sdio_in(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_receive_chars(%struct.sdio_uart_port*, i32*) #1

declare dso_local i32 @sdio_uart_check_modem_status(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_transmit_chars(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
