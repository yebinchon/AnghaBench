; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i64 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.wcn36xx_rx_bd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@WCN36XX_DBG_RX_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"BD   <<< \00", align 1
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@WCN36XX_DBG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"status.flags=%x\0A\00", align 1
@WCN36XX_DBG_BEACON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"beacon skb %p len %d fc %04x sn %d\0A\00", align 1
@WCN36XX_DBG_BEACON_DUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"SKB <<< \00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"rx skb %p len %d fc %04x sn %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_rx_skb(%struct.wcn36xx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.wcn36xx_rx_bd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = call i32 @memset(%struct.ieee80211_rx_status* %5, i32 0, i32 40)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.wcn36xx_rx_bd*
  store %struct.wcn36xx_rx_bd* %14, %struct.wcn36xx_rx_bd** %7, align 8
  %15 = load %struct.wcn36xx_rx_bd*, %struct.wcn36xx_rx_bd** %7, align 8
  %16 = bitcast %struct.wcn36xx_rx_bd* %15 to i32*
  %17 = call i32 @buff_to_be(i32* %16, i32 4)
  %18 = load i32, i32* @WCN36XX_DBG_RX_DUMP, align 4
  %19 = load %struct.wcn36xx_rx_bd*, %struct.wcn36xx_rx_bd** %7, align 8
  %20 = bitcast %struct.wcn36xx_rx_bd* %19 to i8*
  %21 = call i32 @wcn36xx_dbg_dump(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20, i32 16)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load %struct.wcn36xx_rx_bd*, %struct.wcn36xx_rx_bd** %7, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_rx_bd, %struct.wcn36xx_rx_bd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wcn36xx_rx_bd*, %struct.wcn36xx_rx_bd** %7, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_rx_bd, %struct.wcn36xx_rx_bd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = call i32 @skb_put(%struct.sk_buff* %22, i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.wcn36xx_rx_bd*, %struct.wcn36xx_rx_bd** %7, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_rx_bd, %struct.wcn36xx_rx_bd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @skb_pull(%struct.sk_buff* %33, i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %42, %struct.ieee80211_hdr** %6, align 8
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__le16_to_cpu(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__le16_to_cpu(i32 %49)
  %51 = call i32 @IEEE80211_SEQ_TO_SN(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ieee80211_is_beacon(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %2
  %58 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %59 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %64 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 7
  store i64 %65, i64* %66, align 8
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %68 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 6
  store i32 %69, i32* %70, align 4
  br label %78

71:                                               ; preds = %57, %2
  %72 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %73 = call i64 @WCN36XX_CENTER_FREQ(%struct.wcn36xx* %72)
  %74 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 7
  store i64 %73, i64* %74, align 8
  %75 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %76 = call i32 @WCN36XX_BAND(%struct.wcn36xx* %75)
  %77 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 6
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %62
  %79 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 0
  store i32 10, i32* %79, align 8
  %80 = load %struct.wcn36xx_rx_bd*, %struct.wcn36xx_rx_bd** %7, align 8
  %81 = call i32 @get_rssi0(%struct.wcn36xx_rx_bd* %80)
  %82 = sub nsw i32 0, %81
  %83 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 5
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %89 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @WCN36XX_DBG_RX, align 4
  %97 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %5, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %100)
  %102 = call i32 @memcpy(i32 %101, %struct.ieee80211_rx_status* %5, i32 40)
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ieee80211_is_beacon(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %78
  %109 = load i32, i32* @WCN36XX_DBG_BEACON, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %110, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @WCN36XX_DBG_BEACON_DUMP, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @wcn36xx_dbg_dump(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %121, i32 %124)
  br label %144

126:                                              ; preds = %78
  %127 = load i32, i32* @WCN36XX_DBG_RX, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i32, i8*, ...) @wcn36xx_dbg(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %128, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* @WCN36XX_DBG_RX_DUMP, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @wcn36xx_dbg_dump(i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %139, i32 %142)
  br label %144

144:                                              ; preds = %126, %108
  %145 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %146 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @ieee80211_rx_irqsafe(i32 %147, %struct.sk_buff* %148)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @buff_to_be(i32*, i32) #1

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @WCN36XX_CENTER_FREQ(%struct.wcn36xx*) #1

declare dso_local i32 @WCN36XX_BAND(%struct.wcn36xx*) #1

declare dso_local i32 @get_rssi0(%struct.wcn36xx_rx_bd*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
