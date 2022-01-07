; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_pass_packet_to_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_pass_packet_to_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.il_priv = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.il_rx_buf = type { i32* }
%struct.ieee80211_rx_status = type { i32 }
%struct.il_rx_pkt = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.il3945_rx_frame_hdr = type { i64, i32 }
%struct.il3945_rx_frame_end = type { i32 }
%struct.sk_buff = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@IL39_RX_FRAME_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Corruption detected!\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Dropping packet while interface is not open.\0A\00", align 1
@IL_STOP_REASON_PASSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Woke queues - frame received on passive channel\0A\00", align 1
@SMALL_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"dev_alloc_skb failed\0A\00", align 1
@il3945_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*, %struct.ieee80211_rx_status*)* @il3945_pass_packet_to_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_pass_packet_to_mac80211(%struct.il_priv* %0, %struct.il_rx_buf* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_rx_buf*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.il_rx_pkt*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.il3945_rx_frame_hdr*, align 8
  %10 = alloca %struct.il3945_rx_frame_end*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %15 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %16 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %15)
  store %struct.il_rx_pkt* %16, %struct.il_rx_pkt** %7, align 8
  %17 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %18 = call i64 @IL_RX_DATA(%struct.il_rx_pkt* %17)
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %8, align 8
  %20 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %21 = call %struct.il3945_rx_frame_hdr* @IL_RX_HDR(%struct.il_rx_pkt* %20)
  store %struct.il3945_rx_frame_hdr* %21, %struct.il3945_rx_frame_hdr** %9, align 8
  %22 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %23 = call %struct.il3945_rx_frame_end* @IL_RX_END(%struct.il_rx_pkt* %22)
  store %struct.il3945_rx_frame_end* %23, %struct.il3945_rx_frame_end** %10, align 8
  %24 = load %struct.il3945_rx_frame_hdr*, %struct.il3945_rx_frame_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.il3945_rx_frame_hdr, %struct.il3945_rx_frame_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @le16_to_cpu(i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 %31, %35
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @IL39_RX_FRAME_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %14, align 8
  %41 = icmp sgt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = call i32 @D_DROP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %139

47:                                               ; preds = %3
  %48 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @D_DROP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %139

58:                                               ; preds = %47
  %59 = load i32, i32* @IL_STOP_REASON_PASSIVE, align 4
  %60 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 2
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %67 = load i32, i32* @IL_STOP_REASON_PASSIVE, align 4
  %68 = call i32 @il_wake_queues_by_reason(%struct.il_priv* %66, i32 %67)
  %69 = call i32 @D_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i64, i64* @SMALL_PACKET_SIZE, align 8
  %72 = call %struct.sk_buff* @dev_alloc_skb(i64 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %12, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = call i32 @IL_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %139

77:                                               ; preds = %70
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @il3945_mod_params, i32 0, i32 0), align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %82 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %83 = bitcast %struct.il_rx_pkt* %82 to %struct.ieee80211_hdr*
  %84 = load %struct.il3945_rx_frame_end*, %struct.il3945_rx_frame_end** %10, align 8
  %85 = getelementptr inbounds %struct.il3945_rx_frame_end, %struct.il3945_rx_frame_end* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %89 = call i32 @il_set_decrypted_flag(%struct.il_priv* %81, %struct.ieee80211_hdr* %83, i32 %87, %struct.ieee80211_rx_status* %88)
  br label %90

90:                                               ; preds = %80, %77
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @SMALL_PACKET_SIZE, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = load %struct.il3945_rx_frame_hdr*, %struct.il3945_rx_frame_hdr** %9, align 8
  %97 = getelementptr inbounds %struct.il3945_rx_frame_hdr, %struct.il3945_rx_frame_hdr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @skb_put_data(%struct.sk_buff* %95, i64 %98, i64 %99)
  br label %125

101:                                              ; preds = %90
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %104 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.il3945_rx_frame_hdr*, %struct.il3945_rx_frame_hdr** %9, align 8
  %107 = getelementptr inbounds %struct.il3945_rx_frame_hdr, %struct.il3945_rx_frame_hdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %111 = bitcast %struct.il_rx_pkt* %110 to i8*
  %112 = ptrtoint i8* %109 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @skb_add_rx_frag(%struct.sk_buff* %102, i32 0, i32* %105, i32 %115, i64 %116, i64 %117)
  %119 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %120 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %124 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %101, %94
  %126 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @il_update_stats(%struct.il_priv* %126, i32 0, i32 %127, i64 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %130)
  %132 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %133 = call i32 @memcpy(i32 %131, %struct.ieee80211_rx_status* %132, i32 4)
  %134 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %135 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = call i32 @ieee80211_rx(i32 %136, %struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %125, %75, %56, %45
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i64 @IL_RX_DATA(%struct.il_rx_pkt*) #1

declare dso_local %struct.il3945_rx_frame_hdr* @IL_RX_HDR(%struct.il_rx_pkt*) #1

declare dso_local %struct.il3945_rx_frame_end* @IL_RX_END(%struct.il_rx_pkt*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @D_DROP(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il_wake_queues_by_reason(%struct.il_priv*, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il_set_decrypted_flag(%struct.il_priv*, %struct.ieee80211_hdr*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i32, i64, i64) #1

declare dso_local i32 @il_update_stats(%struct.il_priv*, i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
