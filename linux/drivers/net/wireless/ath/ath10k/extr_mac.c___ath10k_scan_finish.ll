; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c___ath10k_scan_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c___ath10k_scan_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_scan_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ath10k_scan_finish(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 3
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %62 [
    i32 130, label %11
    i32 129, label %12
    i32 131, label %12
    i32 128, label %43
  ]

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1, %1
  %13 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %3, i32 0, i32 0
  %20 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 131
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %19, align 4
  %26 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ieee80211_scan_completed(i32 %28, %struct.cfg80211_scan_info* %3)
  br label %42

30:                                               ; preds = %12
  %31 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ieee80211_remain_on_channel_expired(i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %18
  br label %43

43:                                               ; preds = %1, %42
  %44 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 130, i32* %46, align 8
  %47 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %53 = call i32 @ath10k_offchan_tx_purge(%struct.ath10k* %52)
  %54 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %55 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = call i32 @cancel_delayed_work(i32* %56)
  %58 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @complete(i32* %60)
  br label %62

62:                                               ; preds = %1, %43, %11
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i32 @ath10k_offchan_tx_purge(%struct.ath10k*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
