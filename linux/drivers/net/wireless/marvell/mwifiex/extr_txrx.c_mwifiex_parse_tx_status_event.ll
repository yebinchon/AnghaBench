; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_txrx.c_mwifiex_parse_tx_status_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_txrx.c_mwifiex_parse_tx_status_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tx_status_event = type { i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.mwifiex_txinfo = type { i32, i32 }

@MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS = common dso_local global i32 0, align 4
@MWIFIEX_MGMT_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_parse_tx_status_event(%struct.mwifiex_private* %0, i8* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tx_status_event*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mwifiex_txinfo*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.tx_status_event*
  store %struct.tx_status_event* %14, %struct.tx_status_event** %5, align 8
  %15 = load %struct.tx_status_event*, %struct.tx_status_event** %5, align 8
  %16 = getelementptr inbounds %struct.tx_status_event, %struct.tx_status_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 2
  %26 = load %struct.tx_status_event*, %struct.tx_status_event** %5, align 8
  %27 = getelementptr inbounds %struct.tx_status_event, %struct.tx_status_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sk_buff* @idr_remove(i32* %25, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %115

35:                                               ; preds = %20
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %36)
  store %struct.mwifiex_txinfo* %37, %struct.mwifiex_txinfo** %7, align 8
  %38 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %7, align 8
  %39 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.tx_status_event*, %struct.tx_status_event** %5, align 8
  %47 = getelementptr inbounds %struct.tx_status_event, %struct.tx_status_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @skb_complete_wifi_ack(%struct.sk_buff* %45, i32 %51)
  br label %114

53:                                               ; preds = %35
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 4
  %58 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %59 = add i64 %57, %58
  %60 = add i64 %59, 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 4
  %65 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 4
  %68 = load i64, i64* @ETH_ALEN, align 8
  %69 = add i64 %67, %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %74 = add i64 4, %73
  %75 = add i64 %74, 4
  %76 = load i64, i64* @ETH_ALEN, align 8
  %77 = add i64 %75, %76
  %78 = sub i64 %72, %77
  %79 = call i32 @memmove(i64 %60, i64 %69, i64 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ETH_ALEN, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %88 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %87, i32 0, i32 0
  %89 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %7, align 8
  %90 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %96 = add nsw i64 %94, %95
  %97 = add i64 %96, 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %102 = add i64 %101, 4
  %103 = sub i64 %100, %102
  %104 = load %struct.tx_status_event*, %struct.tx_status_event** %5, align 8
  %105 = getelementptr inbounds %struct.tx_status_event, %struct.tx_status_event* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call i32 @cfg80211_mgmt_tx_status(i32* %88, i32 %91, i64 %97, i64 %103, i32 %109, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %53, %44
  br label %115

115:                                              ; preds = %19, %114, %20
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @skb_complete_wifi_ack(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @cfg80211_mgmt_tx_status(i32*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
