; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @sdio_uart_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_uart_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %12, align 8
  store %struct.sdio_uart_port* %13, %struct.sdio_uart_port** %8, align 8
  %14 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %15 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %23 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %22, i32 0, i32 3
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %27 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %26, i32 0, i32 2
  %28 = call i32 @kfifo_in_locked(i32* %23, i8* %24, i32 %25, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %30 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UART_IER_THRI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %21
  %36 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %37 = call i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %42 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %41)
  %43 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %44 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sdio_uart_irq(i32 %45)
  %47 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %48 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %47)
  br label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_irq(i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
