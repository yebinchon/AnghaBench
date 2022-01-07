; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_get_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_get_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_rx_queue = type { i32 }
%struct.mvpp2_port = type { %struct.mvpp2_rx_queue** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvpp2_rx_queue* (%struct.mvpp2_port*, i32)* @mvpp2_get_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvpp2_rx_queue* @mvpp2_get_rx_queue(%struct.mvpp2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @fls(i32 %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 0
  %11 = load %struct.mvpp2_rx_queue**, %struct.mvpp2_rx_queue*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %11, i64 %13
  %15 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %14, align 8
  ret %struct.mvpp2_rx_queue* %15
}

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
