; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_mgmt_tx_params = type { i64, i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.mwifiex_txinfo = type { i64, i32, i32 }
%struct.mwifiex_private = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid buffer and length\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"info: skip to send probe resp in AP or GO mode\0A\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i64 0, align 8
@MWIFIEX_MGMT_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"allocate skb failed for management frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_ACTION_TX_STATUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"info: management frame transmitted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_mgmt_tx_params*, i32*)* @mwifiex_cfg80211_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_mgmt_tx(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_mgmt_tx_params* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_mgmt_tx_params*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee80211_mgmt*, align 8
  %15 = alloca %struct.mwifiex_txinfo*, align 8
  %16 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.cfg80211_mgmt_tx_params* %2, %struct.cfg80211_mgmt_tx_params** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %18 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %21 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(i32 %25)
  store %struct.mwifiex_private* %26, %struct.mwifiex_private** %16, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29, %4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @mwifiex_dbg(i32 %35, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %133

40:                                               ; preds = %29
  %41 = load i32*, i32** %10, align 8
  %42 = bitcast i32* %41 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %42, %struct.ieee80211_mgmt** %14, align 8
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %44 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %43)
  %45 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %49 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ieee80211_is_probe_resp(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INFO, align 4
  %58 = call i32 @mwifiex_dbg(i32 %56, i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %133

59:                                               ; preds = %47, %40
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @ETH_ALEN, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %64 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = add nsw i64 %65, %66
  %68 = add i64 %67, 8
  %69 = call %struct.sk_buff* @dev_alloc_skb(i64 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %12, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %59
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ERROR, align 4
  %77 = call i32 @mwifiex_dbg(i32 %75, i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %133

80:                                               ; preds = %59
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %81)
  store %struct.mwifiex_txinfo* %82, %struct.mwifiex_txinfo** %15, align 8
  %83 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %15, align 8
  %84 = call i32 @memset(%struct.mwifiex_txinfo* %83, i32 0, i32 16)
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %86 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %15, align 8
  %89 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %15, align 8
  %94 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %15, align 8
  %97 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @mwifiex_form_mgmt_frame(%struct.sk_buff* %98, i32* %99, i64 %100)
  %102 = call i32 (...) @prandom_u32()
  %103 = or i32 %102, 1
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %106 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ieee80211_is_action(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %80
  %111 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = load i32, i32* @MWIFIEX_BUF_FLAG_ACTION_TX_STATUS, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = call %struct.sk_buff* @mwifiex_clone_skb_for_tx_status(%struct.mwifiex_private* %111, %struct.sk_buff* %112, i32 %113, i32* %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %12, align 8
  br label %124

116:                                              ; preds = %80
  %117 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i32, i32* @GFP_ATOMIC, align 4
  %123 = call i32 @cfg80211_mgmt_tx_status(%struct.wireless_dev* %117, i32 %119, i32* %120, i64 %121, i32 1, i32 %122)
  br label %124

124:                                              ; preds = %116, %110
  %125 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = call i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private* %125, %struct.sk_buff* %126)
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @INFO, align 4
  %132 = call i32 @mwifiex_dbg(i32 %130, i32 %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %124, %72, %53, %32
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_txinfo*, i32, i32) #1

declare dso_local i32 @mwifiex_form_mgmt_frame(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local %struct.sk_buff* @mwifiex_clone_skb_for_tx_status(%struct.mwifiex_private*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @cfg80211_mgmt_tx_status(%struct.wireless_dev*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
