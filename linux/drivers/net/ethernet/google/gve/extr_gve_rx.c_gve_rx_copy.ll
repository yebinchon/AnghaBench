; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.napi_struct = type { i32 }
%struct.gve_rx_slot_page_info = type { i32, i8* }

@GVE_RX_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.napi_struct*, %struct.gve_rx_slot_page_info*, i32)* @gve_rx_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gve_rx_copy(%struct.net_device* %0, %struct.napi_struct* %1, %struct.gve_rx_slot_page_info* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.napi_struct*, align 8
  %8 = alloca %struct.gve_rx_slot_page_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %7, align 8
  store %struct.gve_rx_slot_page_info* %2, %struct.gve_rx_slot_page_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  %15 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %8, align 8
  %16 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @GVE_RX_PAD, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %17, i64 %19
  %21 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %8, align 8
  %22 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %20, i64 %24
  store i8* %25, i8** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %47

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @__skb_put(%struct.sk_buff* %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %37, i8* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @eth_type_trans(%struct.sk_buff* %41, %struct.net_device* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %5, align 8
  br label %47

47:                                               ; preds = %33, %32
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %48
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
