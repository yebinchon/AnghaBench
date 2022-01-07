; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i32, i64 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @sdio_uart_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.sdio_uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  store %struct.sdio_uart_port* %6, %struct.sdio_uart_port** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = call i64 @I_IXOFF(%struct.tty_struct* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = call i64 @C_CRTSCTS(%struct.tty_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %55

15:                                               ; preds = %10, %1
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %17 = call i64 @sdio_uart_claim_func(%struct.sdio_uart_port* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %55

20:                                               ; preds = %15
  %21 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %22 = call i64 @I_IXOFF(%struct.tty_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %34 = call i64 @START_CHAR(%struct.tty_struct* %33)
  %35 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %38 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %37)
  br label %39

39:                                               ; preds = %32, %29
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %42 = call i64 @C_CRTSCTS(%struct.tty_struct* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %46 = load i32, i32* @TIOCM_RTS, align 4
  %47 = call i32 @sdio_uart_set_mctrl(%struct.sdio_uart_port* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sdio_uart_irq(i32 %51)
  %53 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %54 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %53)
  br label %55

55:                                               ; preds = %48, %19, %14
  ret void
}

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i64 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i64 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_set_mctrl(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_irq(i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
