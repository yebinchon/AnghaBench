; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_add_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_add_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.napi_struct = type { i32 }
%struct.gve_rx_slot_page_info = type { i64, i32 }

@GVE_RX_PAD = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.napi_struct*, %struct.gve_rx_slot_page_info*, i32)* @gve_rx_add_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gve_rx_add_frags(%struct.net_device* %0, %struct.napi_struct* %1, %struct.gve_rx_slot_page_info* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.napi_struct*, align 8
  %8 = alloca %struct.gve_rx_slot_page_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %7, align 8
  store %struct.gve_rx_slot_page_info* %2, %struct.gve_rx_slot_page_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %12 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %8, align 8
  %23 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %8, align 8
  %26 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GVE_RX_PAD, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sdiv i32 %31, 2
  %33 = call i32 @skb_add_rx_frag(%struct.sk_buff* %21, i32 0, i32 %24, i64 %29, i32 %30, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %5, align 8
  br label %35

35:                                               ; preds = %20, %19
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
