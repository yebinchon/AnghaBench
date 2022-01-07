; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_handle_sta_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_handle_sta_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.lib80211_crypt_data = type { i32 }
%struct.sta_info = type { i32, %struct.lib80211_crypt_data* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_handle_sta_crypto(%struct.TYPE_4__* %0, %struct.ieee80211_hdr* %1, %struct.lib80211_crypt_data** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.lib80211_crypt_data**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store %struct.lib80211_crypt_data** %2, %struct.lib80211_crypt_data*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_5__* %18, i32 %21)
  store %struct.sta_info* %22, %struct.sta_info** %10, align 8
  %23 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %24 = icmp ne %struct.sta_info* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = call i32 @atomic_inc(i32* %27)
  br label %29

29:                                               ; preds = %25, %4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %36 = icmp ne %struct.sta_info* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %56

38:                                               ; preds = %29
  %39 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 1
  %41 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %40, align 8
  %42 = icmp ne %struct.lib80211_crypt_data* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 1
  %46 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %45, align 8
  %47 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  store %struct.lib80211_crypt_data* %46, %struct.lib80211_crypt_data** %47, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %49 = bitcast %struct.sta_info* %48 to i8*
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  br label %55

51:                                               ; preds = %38
  %52 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = call i32 @atomic_dec(i32* %53)
  br label %55

55:                                               ; preds = %51, %43
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
