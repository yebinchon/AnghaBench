; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, %struct.sk_buff* }
%struct.wcn36xx_sta = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.wcn36xx_vif = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.wcn36xx_tx_bd = type { i32, i32, i32 }

@WCN36XX_DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"tx skb %p len %d fc %04x sn %d %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ucast\00", align 1
@WCN36XX_DBG_TX_DUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WCN36XX_BMU_WQ_TX = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@WCN36XX_DBG_DXE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"TX_ACK status requested\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"tx_ack_skb already set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_start_tx(%struct.wcn36xx* %0, %struct.wcn36xx_sta* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca %struct.wcn36xx_sta*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.wcn36xx_vif*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wcn36xx_tx_bd, align 4
  %15 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store %struct.wcn36xx_sta* %1, %struct.wcn36xx_sta** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %8, align 8
  store %struct.wcn36xx_vif* null, %struct.wcn36xx_vif** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %20)
  store %struct.ieee80211_tx_info* %21, %struct.ieee80211_tx_info** %10, align 8
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_is_data(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_broadcast_ether_addr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_multicast_ether_addr(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %31, %3
  %38 = phi i1 [ true, %3 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = call i32 @memset(%struct.wcn36xx_tx_bd* %14, i32 0, i32 12)
  %41 = load i32, i32* @WCN36XX_DBG_TX, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__le16_to_cpu(i32 %48)
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__le16_to_cpu(i32 %52)
  %54 = call i32 @IEEE80211_SEQ_TO_SN(i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %63 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %42, i32 %45, i32 %49, i32 %54, i8* %58, i8* %62)
  %64 = load i32, i32* @WCN36XX_DBG_TX_DUMP, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wcn36xx_dbg_dump(i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 %67, i32 %70)
  %72 = load i32, i32* @WCN36XX_BMU_WQ_TX, align 4
  %73 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %14, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %14, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %37
  %88 = load i32, i32* @WCN36XX_DBG_DXE, align 4
  %89 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %90 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %91 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %90, i32 0, i32 1
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %95 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %94, i32 0, i32 2
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %87
  %99 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %100 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %99, i32 0, i32 1
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %164

106:                                              ; preds = %87
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %109 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %108, i32 0, i32 2
  store %struct.sk_buff* %107, %struct.sk_buff** %109, align 8
  %110 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %111 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %110, i32 0, i32 1
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %115 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ieee80211_stop_queues(i32 %116)
  br label %118

118:                                              ; preds = %106, %37
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %123 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %6, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @wcn36xx_set_tx_data(%struct.wcn36xx_tx_bd* %14, %struct.wcn36xx* %122, %struct.wcn36xx_vif** %9, %struct.wcn36xx_sta* %123, %struct.sk_buff* %124, i32 %125)
  br label %132

127:                                              ; preds = %118
  %128 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @wcn36xx_set_tx_mgmt(%struct.wcn36xx_tx_bd* %14, %struct.wcn36xx* %128, %struct.wcn36xx_vif** %9, %struct.sk_buff* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %121
  %133 = bitcast %struct.wcn36xx_tx_bd* %14 to i32*
  %134 = call i32 @buff_to_be(i32* %133, i32 3)
  %135 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %14, i32 0, i32 1
  store i32 -1111638595, i32* %135, align 4
  %136 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %137 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %9, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @wcn36xx_dxe_tx_frame(%struct.wcn36xx* %136, %struct.wcn36xx_vif* %137, %struct.wcn36xx_tx_bd* %14, %struct.sk_buff* %138, i32 %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %14, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %149 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %148, i32 0, i32 1
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @spin_lock_irqsave(i32* %149, i64 %150)
  %152 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %153 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %152, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %153, align 8
  %154 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %155 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %154, i32 0, i32 1
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  %158 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %159 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ieee80211_wake_queues(i32 %160)
  br label %162

162:                                              ; preds = %147, %143, %132
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %98
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @memset(%struct.wcn36xx_tx_bd*, i32, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, ...) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wcn36xx_warn(i8*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @wcn36xx_set_tx_data(%struct.wcn36xx_tx_bd*, %struct.wcn36xx*, %struct.wcn36xx_vif**, %struct.wcn36xx_sta*, %struct.sk_buff*, i32) #1

declare dso_local i32 @wcn36xx_set_tx_mgmt(%struct.wcn36xx_tx_bd*, %struct.wcn36xx*, %struct.wcn36xx_vif**, %struct.sk_buff*, i32) #1

declare dso_local i32 @buff_to_be(i32*, i32) #1

declare dso_local i32 @wcn36xx_dxe_tx_frame(%struct.wcn36xx*, %struct.wcn36xx_vif*, %struct.wcn36xx_tx_bd*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
