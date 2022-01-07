; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.b43_dmaring* }
%struct.b43_dmaring = type { i32, i32, i8*, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@B43_DBG_DMAVERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Packet after queue stopped\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@TX_SLOTS_PER_FRAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA queue overflow\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DMA tx mapping failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Stopped TX ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_dma_tx(%struct.b43_wldev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.b43_dmaring*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %10)
  store %struct.ieee80211_tx_info* %11, %struct.ieee80211_tx_info** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %6, align 8
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.b43_dmaring*, %struct.b43_dmaring** %25, align 8
  store %struct.b43_dmaring* %26, %struct.b43_dmaring** %5, align 8
  %27 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i8* @skb_get_queue_mapping(%struct.sk_buff* %35)
  %37 = call %struct.b43_dmaring* @select_ring_by_priority(%struct.b43_wldev* %34, i8* %36)
  store %struct.b43_dmaring* %37, %struct.b43_dmaring** %5, align 8
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %40 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @B43_WARN_ON(i32 %44)
  %46 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %47 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %38
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_DBG_DMAVERBOSE, align 4
  %54 = call i64 @b43_debug(%struct.b43_wldev* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @b43err(%struct.TYPE_5__* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %155

64:                                               ; preds = %38
  %65 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %66 = call i64 @free_slots(%struct.b43_dmaring* %65)
  %67 = load i64, i64* @TX_SLOTS_PER_FRAME, align 8
  %68 = icmp slt i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @b43err(%struct.TYPE_5__* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENOSPC, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %155

79:                                               ; preds = %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i8* @skb_get_queue_mapping(%struct.sk_buff* %80)
  %82 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %83 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @dma_tx_fragment(%struct.b43_dmaring* %84, %struct.sk_buff* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ENOKEY, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %79
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %96 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @ieee80211_free_txskb(i32 %99, %struct.sk_buff* %100)
  store i32 0, i32* %7, align 4
  br label %155

102:                                              ; preds = %79
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = call i32 @b43err(%struct.TYPE_5__* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %155

111:                                              ; preds = %102
  %112 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %113 = call i64 @free_slots(%struct.b43_dmaring* %112)
  %114 = load i64, i64* @TX_SLOTS_PER_FRAME, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %118 = call i64 @should_inject_overflow(%struct.b43_dmaring* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %116, %111
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i8* @skb_get_queue_mapping(%struct.sk_buff* %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %125 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @ieee80211_stop_queue(i32 %128, i32 %129)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 1, i32* %138, align 4
  %139 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %140 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %142 = load i32, i32* @B43_DBG_DMAVERBOSE, align 4
  %143 = call i64 @b43_debug(%struct.b43_wldev* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %120
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %147 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %150 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @b43dbg(%struct.TYPE_5__* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %145, %120
  br label %154

154:                                              ; preds = %153, %116
  br label %155

155:                                              ; preds = %154, %106, %94, %72, %61
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.b43_dmaring* @select_ring_by_priority(%struct.b43_wldev*, i8*) #1

declare dso_local i8* @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43_debug(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @free_slots(%struct.b43_dmaring*) #1

declare dso_local i32 @dma_tx_fragment(%struct.b43_dmaring*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i64 @should_inject_overflow(%struct.b43_dmaring*) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @b43dbg(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
