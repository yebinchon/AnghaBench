; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_dispatch_amsdu_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_dispatch_amsdu_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rxpd = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.rx_packet_hdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PKT_TYPE_AMSDU = common dso_local global i64 0, align 8
@ETH_P_TDLS = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Rx of A-MSDU failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_11n_dispatch_amsdu_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_11n_dispatch_amsdu_pkt(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxpd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rx_packet_hdr*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rxpd*
  store %struct.rxpd* %14, %struct.rxpd** %6, align 8
  %15 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %16 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  %19 = load i64, i64* @PKT_TYPE_AMSDU, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %2
  %22 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %25 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = call i32 @skb_pull(%struct.sk_buff* %23, i64 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.rxpd*, %struct.rxpd** %6, align 8
  %31 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le16_to_cpu(i32 %32)
  %34 = call i32 @skb_trim(%struct.sk_buff* %29, i64 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ieee80211_amsdu_to_8023s(%struct.sk_buff* %35, %struct.sk_buff_head* %8, i32 %38, i32 %42, i32 0, i32* null, i32* null)
  br label %44

44:                                               ; preds = %100, %21
  %45 = call i32 @skb_queue_empty(%struct.sk_buff_head* %8)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %8)
  store %struct.sk_buff* %49, %struct.sk_buff** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.rx_packet_hdr*
  store %struct.rx_packet_hdr* %53, %struct.rx_packet_hdr** %10, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ISSUPP_TDLS_ENABLED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %48
  %62 = load %struct.rx_packet_hdr*, %struct.rx_packet_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.rx_packet_hdr, %struct.rx_packet_hdr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ntohs(i32 %65)
  %67 = load i64, i64* @ETH_P_TDLS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %71 = load %struct.rx_packet_hdr*, %struct.rx_packet_hdr** %10, align 8
  %72 = bitcast %struct.rx_packet_hdr* %71 to i32*
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @mwifiex_process_tdls_action_frame(%struct.mwifiex_private* %70, i32* %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %61, %48
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call i32 @mwifiex_uap_recv_packet(%struct.mwifiex_private* %84, %struct.sk_buff* %85)
  store i32 %86, i32* %7, align 4
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call i32 @mwifiex_recv_packet(%struct.mwifiex_private* %88, %struct.sk_buff* %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* @ERROR, align 4
  %99 = call i32 @mwifiex_dbg(%struct.TYPE_6__* %97, i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %94, %91
  br label %44

101:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %103

102:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %101
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @ieee80211_amsdu_to_8023s(%struct.sk_buff*, %struct.sk_buff_head*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @mwifiex_process_tdls_action_frame(%struct.mwifiex_private*, i32*, i32) #1

declare dso_local i32 @mwifiex_uap_recv_packet(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_recv_packet(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
