; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_update_sta_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_update_sta_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.sta_info = type { i32 }

@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_update_sta_ps(%struct.TYPE_5__* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_6__* %15, i32 %18)
  store %struct.sta_info* %19, %struct.sta_info** %6, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %21 = icmp ne %struct.sta_info* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc(i32* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = icmp ne %struct.sta_info* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %55

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @hostap_update_sta_ps2(%struct.TYPE_5__* %40, %struct.sta_info* %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = call i32 @atomic_dec(i32* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %35, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hostap_update_sta_ps2(%struct.TYPE_5__*, %struct.sta_info*, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
