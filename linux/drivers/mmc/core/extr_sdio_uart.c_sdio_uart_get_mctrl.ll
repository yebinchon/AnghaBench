; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i8 0, align 1
@TIOCM_CAR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i8 0, align 1
@TIOCM_RNG = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_uart_port*)* @sdio_uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %5 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %6 = load i32, i32* @UART_MSR, align 4
  %7 = call zeroext i8 @sdio_in(%struct.sdio_uart_port* %5, i32 %6)
  store i8 %7, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @UART_MSR_DCD, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @TIOCM_CAR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @UART_MSR_RI, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @TIOCM_RNG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @UART_MSR_DSR, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @TIOCM_DSR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i8, i8* %3, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @UART_MSR_CTS, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @TIOCM_CTS, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local zeroext i8 @sdio_in(%struct.sdio_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
