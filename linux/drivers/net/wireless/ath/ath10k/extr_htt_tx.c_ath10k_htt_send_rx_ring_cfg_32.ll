; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_send_rx_ring_cfg_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_send_rx_ring_cfg_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.ath10k*, %struct.TYPE_10__ }
%struct.ath10k = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.htt_cmd = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.htt_rx_ring_setup_ring32* }
%struct.TYPE_7__ = type { i32 }
%struct.htt_rx_ring_setup_ring32 = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@HTT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@HTT_MAX_CACHE_LINE_SIZE_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTT_H2T_MSG_TYPE_RX_RING_CFG = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MAC80211_HDR = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MSDU_PAYLOAD = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_PPDU_START = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_PPDU_END = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MPDU_START = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MPDU_END = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MSDU_START = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MSDU_END = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_RX_ATTENTION = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_FRAG_INFO = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_UNICAST_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MULTICAST_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_CTRL_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_MGMT_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_NULL_RX = common dso_local global i32 0, align 4
@HTT_RX_RING_FLAGS_PHY_DATA_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_send_rx_ring_cfg_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_send_rx_ring_cfg_32(%struct.ath10k_htt* %0) #0 {
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
  %12 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %13 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %13, i32 0, i32 1
  %15 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  store %struct.ath10k* %15, %struct.ath10k** %4, align 8
  store i32 1, i32* %8, align 4
  %16 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %17 = call i32 @IS_ALIGNED(i32 %16, i32 4)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %23 = load i32, i32* @HTT_MAX_CACHE_LINE_SIZE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  store i32 56, i32* %11, align 4
  %28 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k* %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %164

36:                                               ; preds = %1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @skb_put(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.htt_cmd*
  store %struct.htt_cmd* %43, %struct.htt_cmd** %6, align 8
  %44 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %46, align 8
  %48 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %47, i64 0
  store %struct.htt_rx_ring_setup_ring32* %48, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %49 = load i32, i32* @HTT_H2T_MSG_TYPE_RX_RING_CFG, align 4
  %50 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  store i32 0, i32* %9, align 4
  %57 = load i32, i32* @HTT_RX_RING_FLAGS_MAC80211_HDR, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @HTT_RX_RING_FLAGS_MSDU_PAYLOAD, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @HTT_RX_RING_FLAGS_PPDU_START, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @HTT_RX_RING_FLAGS_PPDU_END, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @HTT_RX_RING_FLAGS_MPDU_START, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @HTT_RX_RING_FLAGS_MPDU_END, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @HTT_RX_RING_FLAGS_MSDU_START, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @HTT_RX_RING_FLAGS_MSDU_END, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @HTT_RX_RING_FLAGS_RX_ATTENTION, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @HTT_RX_RING_FLAGS_FRAG_INFO, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @HTT_RX_RING_FLAGS_UNICAST_RX, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* @HTT_RX_RING_FLAGS_MULTICAST_RX, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @HTT_RX_RING_FLAGS_CTRL_RX, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @HTT_RX_RING_FLAGS_MGMT_RX, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @HTT_RX_RING_FLAGS_NULL_RX, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @HTT_RX_RING_FLAGS_PHY_DATA_RX, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %106 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @__le32_to_cpu(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %113 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @__cpu_to_le32(i32 %116)
  %118 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %119 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %121 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @__cpu_to_le32(i32 %123)
  %125 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %126 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %128 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @__cpu_to_le16(i32 %130)
  %132 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %133 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %135 = call i8* @__cpu_to_le16(i32 %134)
  %136 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %137 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i8* @__cpu_to_le16(i32 %138)
  %140 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %141 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i8* @__cpu_to_le16(i32 %142)
  %144 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %145 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, %struct.htt_rx_ring_setup_ring32* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  %146 = load %struct.htt_rx_ring_setup_ring32*, %struct.htt_rx_ring_setup_ring32** %7, align 8
  %147 = call i32 @ath10k_htt_fill_rx_desc_offset_32(%struct.htt_rx_ring_setup_ring32* %146)
  %148 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %149 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %148, i32 0, i32 1
  %150 = load %struct.ath10k*, %struct.ath10k** %149, align 8
  %151 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %150, i32 0, i32 0
  %152 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %153 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 @ath10k_htc_send(i32* %151, i32 %154, %struct.sk_buff* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %36
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %160)
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %2, align 4
  br label %164

163:                                              ; preds = %36
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %159, %33
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @ath10k_htt_fill_rx_desc_offset_32(%struct.htt_rx_ring_setup_ring32*) #1

declare dso_local i32 @ath10k_htc_send(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
