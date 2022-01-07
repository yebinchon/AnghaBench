; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i64, %struct.TYPE_2__, i32, %struct.sdio_func* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_func = type { i32 }

@sdio_uart_table_lock = common dso_local global i32 0, align 4
@sdio_uart_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*)* @sdio_uart_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_port_remove(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %4 = call i32 @spin_lock(i32* @sdio_uart_table_lock)
  %5 = load i32**, i32*** @sdio_uart_table, align 8
  %6 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32*, i32** %5, i64 %8
  store i32* null, i32** %9, align 8
  %10 = call i32 @spin_unlock(i32* @sdio_uart_table_lock)
  %11 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %18, i32 0, i32 3
  %20 = load %struct.sdio_func*, %struct.sdio_func** %19, align 8
  store %struct.sdio_func* %20, %struct.sdio_func** %3, align 8
  %21 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %22 = call i32 @sdio_claim_host(%struct.sdio_func* %21)
  %23 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %23, i32 0, i32 3
  store %struct.sdio_func* null, %struct.sdio_func** %24, align 8
  %25 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %28, i32 0, i32 1
  %30 = call i32 @tty_port_tty_hangup(%struct.TYPE_2__* %29, i32 0)
  %31 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %36 = call i32 @sdio_release_irq(%struct.sdio_func* %35)
  %37 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %38 = call i32 @sdio_disable_func(%struct.sdio_func* %37)
  %39 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %40 = call i32 @sdio_release_host(%struct.sdio_func* %39)
  %41 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %42 = call i32 @sdio_uart_port_put(%struct.sdio_uart_port* %41)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_tty_hangup(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_uart_port_put(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
