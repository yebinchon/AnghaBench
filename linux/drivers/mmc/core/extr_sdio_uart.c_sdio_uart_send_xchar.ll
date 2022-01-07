; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_send_xchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i8, i32, i32 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @sdio_uart_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.sdio_uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %7, align 8
  store %struct.sdio_uart_port* %8, %struct.sdio_uart_port** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 4
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %17 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UART_IER_THRI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %15
  %23 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %24 = call i64 @sdio_uart_claim_func(%struct.sdio_uart_port* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %36

27:                                               ; preds = %22
  %28 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %29 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %28)
  %30 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %31 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdio_uart_irq(i32 %32)
  %34 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %35 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %34)
  br label %36

36:                                               ; preds = %26, %27, %15, %2
  ret void
}

declare dso_local i64 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_irq(i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
