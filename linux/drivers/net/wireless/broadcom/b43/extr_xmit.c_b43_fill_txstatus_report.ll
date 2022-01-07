; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_xmit.c_b43_fill_txstatus_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_xmit.c_b43_fill_txstatus_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.b43_txstatus = type { i32, i64, i64 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_fill_txstatus_report(%struct.b43_wldev* %0, %struct.ieee80211_tx_info* %1, %struct.b43_txstatus* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.b43_txstatus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %5, align 8
  store %struct.b43_txstatus* %2, %struct.b43_txstatus** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %17 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %16)
  %18 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %19 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %37

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %28
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %39 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %121

49:                                               ; preds = %37
  %50 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %51 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %54 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %52, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %49
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %70 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 4
  br label %120

78:                                               ; preds = %49
  %79 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %80 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  %92 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %93 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 4
  br label %119

103:                                              ; preds = %78
  %104 = load %struct.b43_txstatus*, %struct.b43_txstatus** %6, align 8
  %105 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 4
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 -1, i32* %118, align 4
  br label %119

119:                                              ; preds = %103, %84
  br label %120

120:                                              ; preds = %119, %62
  br label %121

121:                                              ; preds = %120, %42
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
