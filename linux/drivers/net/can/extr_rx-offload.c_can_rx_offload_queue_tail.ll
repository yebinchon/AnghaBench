; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_queue_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_queue_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_rx_offload = type { i64, i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_rx_offload_queue_tail(%struct.can_rx_offload* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.can_rx_offload*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.can_rx_offload* %0, %struct.can_rx_offload** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %7 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %6, i32 0, i32 1
  %8 = call i64 @skb_queue_len(i32* %7)
  %9 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %10 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @kfree_skb(%struct.sk_buff* %14)
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %20 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %19, i32 0, i32 1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_queue_tail(i32* %20, %struct.sk_buff* %21)
  %23 = load %struct.can_rx_offload*, %struct.can_rx_offload** %4, align 8
  %24 = call i32 @can_rx_offload_schedule(%struct.can_rx_offload* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @can_rx_offload_schedule(%struct.can_rx_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
