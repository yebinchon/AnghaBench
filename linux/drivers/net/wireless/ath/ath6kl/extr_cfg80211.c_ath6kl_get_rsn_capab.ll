; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_get_rsn_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_get_rsn_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_beacon_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_beacon_data*, i64*)* @ath6kl_get_rsn_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_get_rsn_capab(%struct.cfg80211_beacon_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_beacon_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cfg80211_beacon_data* %0, %struct.cfg80211_beacon_data** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %10 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %97

16:                                               ; preds = %2
  %17 = load i32, i32* @WLAN_EID_RSN, align 4
  %18 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %22 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64* @cfg80211_find_ie(i32 %17, i32 %20, i32 %23)
  store i64* %24, i64** %6, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %97

30:                                               ; preds = %16
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64* %35, i64** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %97

41:                                               ; preds = %30
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  store i64* %43, i64** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 2
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %97

49:                                               ; preds = %41
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  store i64* %51, i64** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 4
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %97

57:                                               ; preds = %49
  %58 = load i64*, i64** %6, align 8
  %59 = call i32 @get_unaligned_le16(i64* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 %60, 4
  %62 = add nsw i32 2, %61
  %63 = load i64*, i64** %6, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64* %65, i64** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %97

75:                                               ; preds = %57
  %76 = load i64*, i64** %6, align 8
  %77 = call i32 @get_unaligned_le16(i64* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 4
  %80 = add nsw i32 2, %79
  %81 = load i64*, i64** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64* %83, i64** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 4
  %86 = add nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %97

93:                                               ; preds = %75
  %94 = load i64*, i64** %5, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = call i32 @memcpy(i64* %94, i64* %95, i32 2)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %92, %74, %56, %48, %38, %27, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
