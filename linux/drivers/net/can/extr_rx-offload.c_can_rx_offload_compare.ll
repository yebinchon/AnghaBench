; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.can_rx_offload_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*)* @can_rx_offload_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_rx_offload_compare(%struct.sk_buff* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.can_rx_offload_cb*, align 8
  %6 = alloca %struct.can_rx_offload_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.can_rx_offload_cb* @can_rx_offload_get_cb(%struct.sk_buff* %7)
  store %struct.can_rx_offload_cb* %8, %struct.can_rx_offload_cb** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.can_rx_offload_cb* @can_rx_offload_get_cb(%struct.sk_buff* %9)
  store %struct.can_rx_offload_cb* %10, %struct.can_rx_offload_cb** %6, align 8
  %11 = load %struct.can_rx_offload_cb*, %struct.can_rx_offload_cb** %6, align 8
  %12 = getelementptr inbounds %struct.can_rx_offload_cb, %struct.can_rx_offload_cb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.can_rx_offload_cb*, %struct.can_rx_offload_cb** %5, align 8
  %15 = getelementptr inbounds %struct.can_rx_offload_cb, %struct.can_rx_offload_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  ret i32 %17
}

declare dso_local %struct.can_rx_offload_cb* @can_rx_offload_get_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
