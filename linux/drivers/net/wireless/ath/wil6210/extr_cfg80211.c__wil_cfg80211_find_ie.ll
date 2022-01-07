; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_find_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_find_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vendor_ie = type { i32*, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32)* @_wil_cfg80211_find_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_wil_cfg80211_find_ie(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_vendor_ie*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 2, %17
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %4
  store i32* null, i32** %5, align 8
  br label %70

22:                                               ; preds = %14
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32* @cfg80211_find_ie(i32 %31, i32* %32, i32 %33)
  store i32* %34, i32** %5, align 8
  br label %70

35:                                               ; preds = %22
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %70

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = bitcast i32* %42 to %struct.ieee80211_vendor_ie*
  store %struct.ieee80211_vendor_ie* %43, %struct.ieee80211_vendor_ie** %10, align 8
  %44 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_vendor_ie, %struct.ieee80211_vendor_ie* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_vendor_ie, %struct.ieee80211_vendor_ie* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %49, %55
  %57 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %10, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vendor_ie, %struct.ieee80211_vendor_ie* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %56, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_vendor_ie, %struct.ieee80211_vendor_ie* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32* @cfg80211_find_vendor_ie(i32 %63, i32 %66, i32* %67, i32 %68)
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %41, %40, %28, %21
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i32) #1

declare dso_local i32* @cfg80211_find_vendor_ie(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
