; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_handle_txstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_handle_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.b43legacy_txstatus = type { i64, i32, i64, i32 }
%struct.b43legacy_pioqueue = type { i32, i32, i32, i32 }
%struct.b43legacy_pio_txpacket = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_pio_handle_txstatus(%struct.b43legacy_wldev* %0, %struct.b43legacy_txstatus* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_txstatus*, align 8
  %5 = alloca %struct.b43legacy_pioqueue*, align 8
  %6 = alloca %struct.b43legacy_pio_txpacket*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store %struct.b43legacy_txstatus* %1, %struct.b43legacy_txstatus** %4, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %11 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.b43legacy_pioqueue* @parse_cookie(%struct.b43legacy_wldev* %9, i32 %12, %struct.b43legacy_pio_txpacket** %6)
  store %struct.b43legacy_pioqueue* %13, %struct.b43legacy_pioqueue** %5, align 8
  %14 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %15 = icmp ne %struct.b43legacy_pioqueue* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @B43legacy_WARN_ON(i32 %17)
  %19 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %6, align 8
  %20 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %157

24:                                               ; preds = %2
  %25 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %26 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %6, align 8
  %30 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 4
  %35 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %36 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %6, align 8
  %42 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_13__* %43)
  store %struct.ieee80211_tx_info* %44, %struct.ieee80211_tx_info** %7, align 8
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %53 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %52)
  %54 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %55 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %24
  %59 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %24
  %65 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %66 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %69 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %67, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %64
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %85 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %86, i32* %92, align 4
  br label %135

93:                                               ; preds = %64
  %94 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %95 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 4
  %107 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %108 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 4
  br label %134

118:                                              ; preds = %93
  %119 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %120 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 %121, i32* %127, align 4
  %128 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i32 -1, i32* %133, align 4
  br label %134

134:                                              ; preds = %118, %99
  br label %135

135:                                              ; preds = %134, %77
  %136 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %137 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %6, align 8
  %142 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = call i32 @ieee80211_tx_status_irqsafe(%struct.TYPE_12__* %140, %struct.TYPE_13__* %143)
  %145 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %6, align 8
  %146 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %145, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %146, align 8
  %147 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %6, align 8
  %148 = call i32 @free_txpacket(%struct.b43legacy_pio_txpacket* %147, i32 1)
  %149 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %150 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %149, i32 0, i32 1
  %151 = call i32 @list_empty(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %135
  %154 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %155 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %154, i32 0, i32 0
  %156 = call i32 @tasklet_schedule(i32* %155)
  br label %157

157:                                              ; preds = %23, %153, %135
  ret void
}

declare dso_local %struct.b43legacy_pioqueue* @parse_cookie(%struct.b43legacy_wldev*, i32, %struct.b43legacy_pio_txpacket**) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_13__*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @free_txpacket(%struct.b43legacy_pio_txpacket*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
