; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_send_rx_ring_cfg_hl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_send_rx_ring_cfg_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.htt_cmd = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.htt_rx_ring_setup_ring32* }
%struct.TYPE_5__ = type { i32 }
%struct.htt_rx_ring_setup_ring32 = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@HTT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@HTT_MAX_CACHE_LINE_SIZE_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTT_H2T_MSG_TYPE_RX_RING_CFG = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MSDU_PAYLOAD = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_UNICAST_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MULTICAST_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_SIZE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_send_rx_ring_cfg_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_send_rx_ring_cfg_hl(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.htt_cmd*, align 8
  %7 = alloca %struct.htt_rx_ring_setup_ring32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %12 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %12, i32 0, i32 1
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  store %struct.ath10k* %14, %struct.ath10k** %4, align 8
  store i32 1, i32* %8, align 4
  %15 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %16 = call i32 @IS_ALIGNED(i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %22 = load i32, i32* @HTT_MAX_CACHE_LINE_SIZE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  store i32 32, i32* %10, align 4
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k* %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @skb_put(%struct.sk_buff* %36, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.htt_cmd*
  store %struct.htt_cmd* %42, %struct.htt_cmd** %6, align 8
  %43 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %45, align 8
  %47 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %46, i64 0
  store %struct.htt_rx_ring_setup_ring32* %47, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %48 = load i32, i32* @HTT_H2T_MSG_TYPE_RX_RING_CFG, align 4
  %49 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  store i32 0, i32* %9, align 4
  %56 = load i32, i32* @HTT_RX_RING_FLAGS_MSDU_PAYLOAD, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @HTT_RX_RING_FLAGS_UNICAST_RX, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @HTT_RX_RING_FLAGS_MULTICAST_RX, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %66 = call i32 @memset(%struct.htt_rx_ring_setup_ring32* %65, i32 0, i32 24)
  %67 = load i32, i32* @HTT_RX_RING_SIZE_MIN, align 4
  %68 = call i8* @__cpu_to_le16(i32 %67)
  %69 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %70 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %72 = call i8* @__cpu_to_le16(i32 %71)
  %73 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %74 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i8* @__cpu_to_le16(i32 %75)
  %77 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %78 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %80 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %79, i32 0, i32 1
  %81 = load %struct.ath10k*, %struct.ath10k** %80, align 8
  %82 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %81, i32 0, i32 0
  %83 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %84 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @ath10k_htc_send(i32* %82, i32 %85, %struct.sk_buff* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %35
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %90, %32
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.htt_rx_ring_setup_ring32*, i32, i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @ath10k_htc_send(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
