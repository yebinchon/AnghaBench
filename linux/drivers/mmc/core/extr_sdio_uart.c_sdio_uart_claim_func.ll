; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_claim_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_claim_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_uart_port*)* @sdio_uart_claim_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_uart_port*, align 8
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %3, align 8
  %4 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %5 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @current, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sdio_claim_host(i32 %33)
  br label %35

35:                                               ; preds = %30, %21
  %36 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
