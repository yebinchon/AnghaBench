; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_add_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.cfg80211_wowlan = type { i64, %struct.cfg80211_pkt_pattern* }
%struct.cfg80211_pkt_pattern = type { i32, i32, i32 }

@MAX_PATTERN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.cfg80211_wowlan*)* @ath9k_wow_add_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_wow_add_pattern(%struct.ath_softc* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.cfg80211_wowlan*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.cfg80211_pkt_pattern*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %4, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %5, align 8
  %16 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %17 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %16, i32 0, i32 1
  %18 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %17, align 8
  store %struct.cfg80211_pkt_pattern* %18, %struct.cfg80211_pkt_pattern** %6, align 8
  %19 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %74, %2
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %6, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %33, i64 %34
  %36 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DIV_ROUND_UP(i32 %37, i32 8)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %40 = call i32 @memset(i32* %22, i32 0, i32 %39)
  %41 = load i32, i32* @MAX_PATTERN_SIZE, align 4
  %42 = call i32 @memset(i32* %25, i32 0, i32 %41)
  %43 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %6, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %43, i64 %44
  %46 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %48, i64 %49
  %51 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32* %22, i32 %47, i32 %52)
  %54 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %6, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %54, i64 %55
  %57 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i32* %25, i32 %58, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 2
  %64 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %64, i64 %65
  %67 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ath9k_hw_wow_apply_pattern(%struct.ath_hw* %61, i32* %22, i32* %25, i64 %63, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %32
  br label %77

73:                                               ; preds = %32
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %26

77:                                               ; preds = %72, %26
  %78 = load i32, i32* %11, align 4
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @ath9k_hw_wow_apply_pattern(%struct.ath_hw*, i32*, i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
