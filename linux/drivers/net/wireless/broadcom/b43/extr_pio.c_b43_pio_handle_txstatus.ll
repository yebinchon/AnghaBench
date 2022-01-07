; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_handle_txstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_handle_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.b43_txstatus = type { i32 }
%struct.b43_pio_txqueue = type { i32, i32, i32, i32, i32 }
%struct.b43_pio_txpacket = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_pio_handle_txstatus(%struct.b43_wldev* %0, %struct.b43_txstatus* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_txstatus*, align 8
  %5 = alloca %struct.b43_pio_txqueue*, align 8
  %6 = alloca %struct.b43_pio_txpacket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_txstatus* %1, %struct.b43_txstatus** %4, align 8
  store %struct.b43_pio_txpacket* null, %struct.b43_pio_txpacket** %6, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = load %struct.b43_txstatus*, %struct.b43_txstatus** %4, align 8
  %11 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.b43_pio_txqueue* @parse_cookie(%struct.b43_wldev* %9, i32 %12, %struct.b43_pio_txpacket** %6)
  store %struct.b43_pio_txqueue* %13, %struct.b43_pio_txqueue** %5, align 8
  %14 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %15 = icmp ne %struct.b43_pio_txqueue* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %86

21:                                               ; preds = %2
  %22 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %6, align 8
  %23 = icmp ne %struct.b43_pio_txpacket* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @B43_WARN_ON(i32 %25)
  %27 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %6, align 8
  %28 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_5__* %29)
  store %struct.ieee80211_tx_info* %30, %struct.ieee80211_tx_info** %8, align 8
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %33 = load %struct.b43_txstatus*, %struct.b43_txstatus** %4, align 8
  %34 = call i32 @b43_fill_txstatus_report(%struct.b43_wldev* %31, %struct.ieee80211_tx_info* %32, %struct.b43_txstatus* %33)
  %35 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %6, align 8
  %36 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = call i32 @b43_txhdr_size(%struct.b43_wldev* %40)
  %42 = add i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @roundup(i32 %43, i32 4)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %47 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %51 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %6, align 8
  %60 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @ieee80211_tx_status(i32 %58, %struct.TYPE_5__* %61)
  %63 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %6, align 8
  %64 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %63, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %6, align 8
  %66 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %65, i32 0, i32 0
  %67 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %68 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %67, i32 0, i32 4
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %71 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %21
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %76 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %81 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ieee80211_wake_queue(i32 %79, i32 %82)
  %84 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %85 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %84, i32 0, i32 2
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %20, %74, %21
  ret void
}

declare dso_local %struct.b43_pio_txqueue* @parse_cookie(%struct.b43_wldev*, i32, %struct.b43_pio_txpacket**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_5__*) #1

declare dso_local i32 @b43_fill_txstatus_report(%struct.b43_wldev*, %struct.ieee80211_tx_info*, %struct.b43_txstatus*) #1

declare dso_local i32 @b43_txhdr_size(%struct.b43_wldev*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
