; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_handle_uap_rx_forward.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_handle_uap_rx_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32 }
%struct.sk_buff = type { i64 }
%struct.uap_rxpd = type { i32 }
%struct.rx_packet_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"drop packet in disconnected state.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_handle_uap_rx_forward(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.uap_rxpd*, align 8
  %8 = alloca %struct.rx_packet_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 1
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %6, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.uap_rxpd*
  store %struct.uap_rxpd* %23, %struct.uap_rxpd** %7, align 8
  %24 = load %struct.uap_rxpd*, %struct.uap_rxpd** %7, align 8
  %25 = bitcast %struct.uap_rxpd* %24 to i8*
  %26 = load %struct.uap_rxpd*, %struct.uap_rxpd** %7, align 8
  %27 = getelementptr inbounds %struct.uap_rxpd, %struct.uap_rxpd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %25, i64 %30
  %32 = bitcast i8* %31 to %struct.rx_packet_hdr*
  store %struct.rx_packet_hdr* %32, %struct.rx_packet_hdr** %8, align 8
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %38, i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %41)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

43:                                               ; preds = %2
  %44 = load %struct.rx_packet_hdr*, %struct.rx_packet_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.rx_packet_hdr, %struct.rx_packet_hdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32* %19, i32 %47, i32 %48)
  %50 = call i64 @is_multicast_ether_addr(i32* %19)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %11, align 8
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = call i32 @mwifiex_uap_queue_bridged_pkt(%struct.mwifiex_private* %56, %struct.sk_buff* %57)
  br label %68

59:                                               ; preds = %43
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %61 = call i64 @mwifiex_get_sta_entry(%struct.mwifiex_private* %60, i32* %19)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @mwifiex_uap_queue_bridged_pkt(%struct.mwifiex_private* %64, %struct.sk_buff* %65)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @mwifiex_process_rx_packet(%struct.mwifiex_private* %69, %struct.sk_buff* %70)
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %63, %37
  %73 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i64 @is_multicast_ether_addr(i32*) #2

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #2

declare dso_local i32 @mwifiex_uap_queue_bridged_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #2

declare dso_local i64 @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #2

declare dso_local i32 @mwifiex_process_rx_packet(%struct.mwifiex_private*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
