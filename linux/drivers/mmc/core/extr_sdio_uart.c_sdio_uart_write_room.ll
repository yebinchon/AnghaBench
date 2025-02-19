; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_write_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_write_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i32 }

@FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @sdio_uart_write_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_write_room(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.sdio_uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  store %struct.sdio_uart_port* %6, %struct.sdio_uart_port** %3, align 8
  %7 = load i32, i32* @FIFO_SIZE, align 4
  %8 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %8, i32 0, i32 0
  %10 = call i32 @kfifo_len(i32* %9)
  %11 = sub nsw i32 %7, %10
  ret i32 %11
}

declare dso_local i32 @kfifo_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
