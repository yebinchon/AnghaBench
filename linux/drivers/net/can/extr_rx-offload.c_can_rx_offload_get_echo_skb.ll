; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_get_echo_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_get_echo_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_rx_offload = type { %struct.net_device* }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_rx_offload_get_echo_skb(%struct.can_rx_offload* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.can_rx_offload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.can_rx_offload* %0, %struct.can_rx_offload** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %14 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.net_device_stats* %17, %struct.net_device_stats** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.sk_buff* @__can_get_echo_skb(%struct.net_device* %18, i32 %19, i32* %11)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @can_rx_offload_queue_sorted(%struct.can_rx_offload* %25, %struct.sk_buff* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %33 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %24
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.sk_buff* @__can_get_echo_skb(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @can_rx_offload_queue_sorted(%struct.can_rx_offload*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
