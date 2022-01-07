; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_report_sent_bytes_to_bql.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_report_sent_bytes_to_bql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octnet_buf_free_info = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.octeon_soft_command = type { %struct.sk_buff* }
%struct.netdev_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_report_sent_bytes_to_bql(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octnet_buf_free_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.octeon_soft_command*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %23 [
    i32 131, label %11
    i32 130, label %11
    i32 128, label %17
    i32 129, label %17
  ]

11:                                               ; preds = %2, %2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.octnet_buf_free_info*
  store %struct.octnet_buf_free_info* %13, %struct.octnet_buf_free_info** %6, align 8
  %14 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %6, align 8
  %15 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  br label %24

17:                                               ; preds = %2, %2
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %19, %struct.octeon_soft_command** %8, align 8
  %20 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %21 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %7, align 8
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

24:                                               ; preds = %17, %11
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %28)
  %30 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %27, i32 %29)
  store %struct.netdev_queue* %30, %struct.netdev_queue** %9, align 8
  %31 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @netdev_tx_sent_queue(%struct.netdev_queue* %31, i32 %34)
  %36 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %37 = call i32 @netif_xmit_stopped(%struct.netdev_queue* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_sent_queue(%struct.netdev_queue*, i32) #1

declare dso_local i32 @netif_xmit_stopped(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
