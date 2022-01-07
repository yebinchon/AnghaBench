; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_irq_offload_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_irq_offload_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_rx_offload = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_rx_offload_irq_offload_fifo(%struct.can_rx_offload* %0) #0 {
  %2 = alloca %struct.can_rx_offload*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.can_rx_offload* %0, %struct.can_rx_offload** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %1, %11, %16
  %6 = load %struct.can_rx_offload*, %struct.can_rx_offload** %2, align 8
  %7 = call %struct.sk_buff* @can_rx_offload_offload_one(%struct.can_rx_offload* %6, i32 0)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i64 @IS_ERR(%struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %5

12:                                               ; preds = %5
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %23

16:                                               ; preds = %12
  %17 = load %struct.can_rx_offload*, %struct.can_rx_offload** %2, align 8
  %18 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @skb_queue_tail(i32* %18, %struct.sk_buff* %19)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.can_rx_offload*, %struct.can_rx_offload** %2, align 8
  %28 = call i32 @can_rx_offload_schedule(%struct.can_rx_offload* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.sk_buff* @can_rx_offload_offload_one(%struct.can_rx_offload*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @can_rx_offload_schedule(%struct.can_rx_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
