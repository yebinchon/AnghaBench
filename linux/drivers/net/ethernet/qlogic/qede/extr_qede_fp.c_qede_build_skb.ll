; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qede_rx_queue = type { i32 }
%struct.sw_rx_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.qede_rx_queue*, %struct.sw_rx_data*, i32, i32)* @qede_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qede_build_skb(%struct.qede_rx_queue* %0, %struct.sw_rx_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qede_rx_queue*, align 8
  %6 = alloca %struct.sw_rx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.qede_rx_queue* %0, %struct.qede_rx_queue** %5, align 8
  store %struct.sw_rx_data* %1, %struct.sw_rx_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %12 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @page_address(i32 %13)
  %15 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %16 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %22 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sk_buff* @build_skb(i8* %20, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @skb_reserve(%struct.sk_buff* %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @skb_put(%struct.sk_buff* %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %31
}

declare dso_local i8* @page_address(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
