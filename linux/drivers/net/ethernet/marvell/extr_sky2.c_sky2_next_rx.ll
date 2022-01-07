; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_next_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_next_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_rx_le = type { i64 }
%struct.sky2_port = type { i32, %struct.sky2_rx_le* }

@RX_LE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sky2_rx_le* (%struct.sky2_port*)* @sky2_next_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sky2_rx_le* @sky2_next_rx(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_rx_le*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %4 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %5 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %4, i32 0, i32 1
  %6 = load %struct.sky2_rx_le*, %struct.sky2_rx_le** %5, align 8
  %7 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %8 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sky2_rx_le, %struct.sky2_rx_le* %6, i64 %10
  store %struct.sky2_rx_le* %11, %struct.sky2_rx_le** %3, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RX_LE_SIZE, align 4
  %16 = call i32 @RING_NEXT(i32 %14, i32 %15)
  %17 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %18 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sky2_rx_le*, %struct.sky2_rx_le** %3, align 8
  %20 = getelementptr inbounds %struct.sky2_rx_le, %struct.sky2_rx_le* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.sky2_rx_le*, %struct.sky2_rx_le** %3, align 8
  ret %struct.sky2_rx_le* %21
}

declare dso_local i32 @RING_NEXT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
