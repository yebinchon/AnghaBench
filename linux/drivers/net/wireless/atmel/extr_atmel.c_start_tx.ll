; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i8* }
%struct.net_device = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.atmel_private = type { i64, i64, i32*, i32*, i32, i32, i32, i64, i64, i64, i32 (i64)* }
%struct.ieee80211_hdr = type { i32, i32, i32, i32, i32, i64, i64 }

@start_tx.SNAP_RFC1024 = internal constant [6 x i32] [i32 170, i32 170, i32 3, i32 0, i32 0, i32 0], align 16
@ETH_ZLEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@STATION_STATE_READY = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@DATA_FRAME_WS_HEADER_SIZE = common dso_local global i32 0, align 4
@TX_PACKET_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atmel_private*, align 8
  %7 = alloca %struct.ieee80211_hdr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %12)
  store %struct.atmel_private* %13, %struct.atmel_private** %6, align 8
  %14 = load i64, i64* @ETH_ZLEN, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ETH_ZLEN, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  %33 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %33, i32 0, i32 10
  %35 = load i32 (i64)*, i32 (i64)** %34, align 8
  %36 = icmp ne i32 (i64)* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 10
  %40 = load i32 (i64)*, i32 (i64)** %39, align 8
  %41 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %42 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = call i32 %40(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @dev_kfree_skb(%struct.sk_buff* %52)
  %54 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %54, i32* %3, align 4
  br label %219

55:                                               ; preds = %37, %32, %25
  %56 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @STATION_STATE_READY, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @dev_kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %219

70:                                               ; preds = %55
  %71 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %71, i32 0, i32 4
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %75 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %74, i32 0, i32 5
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 18
  %81 = call i32 @find_tx_buff(%struct.atmel_private* %78, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %70
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %90 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %89, i32 0, i32 5
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %94 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %93, i32 0, i32 4
  %95 = call i32 @spin_unlock_bh(i32* %94)
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netif_stop_queue(%struct.net_device* %96)
  %98 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %98, i32* %3, align 4
  br label %219

99:                                               ; preds = %70
  %100 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  store i32 %100, i32* %10, align 4
  %101 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %104 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %113 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IW_MODE_ADHOC, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 4
  %120 = load i32, i32* @ETH_ALEN, align 4
  %121 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %118, i32* %119, i32 %120)
  %122 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 3
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @ETH_ALEN, align 4
  %127 = call i32 @memcpy(i32* %122, i32* %125, i32 %126)
  %128 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 2
  %129 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %130 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(i32* %128, i32* %131, i32 %132)
  br label %154

134:                                              ; preds = %111
  %135 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 4
  %139 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %140 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @ETH_ALEN, align 4
  %143 = call i32 @memcpy(i32* %138, i32* %141, i32 %142)
  %144 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 3
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @ETH_ALEN, align 4
  %149 = call i32 @memcpy(i32* %144, i32* %147, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 2
  %152 = load i32, i32* @ETH_ALEN, align 4
  %153 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %150, i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %134, %117
  %155 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %156 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 1
  %161 = load i32, i32* @ETH_ALEN, align 4
  %162 = call i32 @memcpy(i32* %160, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @start_tx.SNAP_RFC1024, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @cpu_to_le16(i32 %164)
  %166 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %7, i32 0, i32 0
  store i32 %165, i32* %166, align 8
  %167 = load %struct.net_device*, %struct.net_device** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = bitcast %struct.ieee80211_hdr* %7 to i8*
  %170 = load i32, i32* @DATA_FRAME_WS_HEADER_SIZE, align 4
  %171 = call i32 @atmel_copy_to_card(%struct.net_device* %167, i32 %168, i8* %169, i32 %170)
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @DATA_FRAME_WS_HEADER_SIZE, align 4
  %175 = add nsw i32 %173, %174
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 12
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %180, 12
  %182 = call i32 @atmel_copy_to_card(%struct.net_device* %172, i32 %175, i8* %179, i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %183, 12
  %185 = load i32, i32* @DATA_FRAME_WS_HEADER_SIZE, align 4
  %186 = add nsw i32 %184, %185
  %187 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %188 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %196, 1
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 18
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @TX_PACKET_TYPE_DATA, align 4
  %202 = call i32 @tx_update_descriptor(%struct.atmel_private* %191, i32 %197, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.net_device*, %struct.net_device** %5, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, %203
  store i32 %208, i32* %206, align 8
  %209 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %210 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %209, i32 0, i32 5
  %211 = load i64, i64* %8, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %214 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %213, i32 0, i32 4
  %215 = call i32 @spin_unlock_bh(i32* %214)
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = call i32 @dev_kfree_skb(%struct.sk_buff* %216)
  %218 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %163, %83, %61, %46
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_tx_buff(%struct.atmel_private*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atmel_copy_to_card(%struct.net_device*, i32, i8*, i32) #1

declare dso_local i32 @tx_update_descriptor(%struct.atmel_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
