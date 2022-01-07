; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sdio_uart_table_lock = common dso_local global i32 0, align 4
@UART_NR = common dso_local global i32 0, align 4
@sdio_uart_table = common dso_local global %struct.sdio_uart_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_uart_port*)* @sdio_uart_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_add_port(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %3, align 8
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %8, i32 0, i32 3
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %14, i32 0, i32 1
  %16 = load i32, i32* @FIFO_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @kfifo_alloc(i32* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = call i32 @spin_lock(i32* @sdio_uart_table_lock)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %46, %23
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @UART_NR, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %30, i64 %32
  %34 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %33, align 8
  %35 = icmp ne %struct.sdio_uart_port* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %41 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %41, i64 %43
  store %struct.sdio_uart_port* %40, %struct.sdio_uart_port** %44, align 8
  store i32 0, i32* %5, align 4
  br label %49

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %25

49:                                               ; preds = %36, %25
  %50 = call i32 @spin_unlock(i32* @sdio_uart_table_lock)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
