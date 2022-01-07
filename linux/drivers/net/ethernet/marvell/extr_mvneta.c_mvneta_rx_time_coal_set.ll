; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_time_coal_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_time_coal_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_rx_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_queue*, i64)* @mvneta_rx_time_coal_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rx_time_coal_set(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1, i64 %2) #0 {
  %4 = alloca %struct.mvneta_port*, align 8
  %5 = alloca %struct.mvneta_rx_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %4, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %10 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = udiv i64 %13, 1000000
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %18 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MVNETA_RXQ_TIME_COAL_REG(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @mvreg_write(%struct.mvneta_port* %17, i32 %21, i64 %22)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i64) #1

declare dso_local i32 @MVNETA_RXQ_TIME_COAL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
