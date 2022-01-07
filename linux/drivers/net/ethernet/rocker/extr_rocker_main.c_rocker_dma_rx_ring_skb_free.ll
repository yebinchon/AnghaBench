; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_RX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*, %struct.rocker_desc_info*)* @rocker_dma_rx_ring_skb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_rx_ring_skb_free(%struct.rocker* %0, %struct.rocker_desc_info* %1) #0 {
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.rocker_desc_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %4, align 8
  %9 = load i32, i32* @ROCKER_TLV_RX_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.rocker_tlv*, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %15 = call %struct.sk_buff* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @ROCKER_TLV_RX_MAX, align 4
  %21 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %22 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %13, i32 %20, %struct.rocker_desc_info* %21)
  %23 = load %struct.rocker*, %struct.rocker** %3, align 8
  %24 = call i32 @rocker_dma_rx_ring_skb_unmap(%struct.rocker* %23, %struct.rocker_tlv** %13)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %19, %18
  %28 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %28)
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %31 [
    i32 0, label %30
    i32 1, label %30
  ]

30:                                               ; preds = %27, %27
  ret void

31:                                               ; preds = %27
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_dma_rx_ring_skb_unmap(%struct.rocker*, %struct.rocker_tlv**) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
