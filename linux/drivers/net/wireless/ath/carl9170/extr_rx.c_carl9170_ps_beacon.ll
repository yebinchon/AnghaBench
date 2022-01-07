; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_ps_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_ps_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_6__, %struct.ath_common, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tim_ie = type { i32, i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@PS_OFF_BCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i8*, i32)* @carl9170_ps_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_ps_beacon(%struct.ar9170* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_tim_ie*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %14, %struct.ieee80211_hdr** %7, align 8
  %15 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 1
  store %struct.ath_common* %16, %struct.ath_common** %9, align 8
  %17 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %18 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %139

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @FCS_LEN, align 4
  %34 = add nsw i32 40, %33
  %35 = icmp ule i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %139

37:                                               ; preds = %31
  %38 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %40 = call i32 @ath_is_mybeacon(%struct.ath_common* %38, %struct.ieee80211_hdr* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %44 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %37
  br label %139

48:                                               ; preds = %42
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %51 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FCS_LEN, align 4
  %56 = sub i32 %54, %55
  %57 = load i32, i32* @WLAN_EID_TIM, align 4
  %58 = call i32* @carl9170_find_ie(i8* %53, i32 %56, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  br label %139

62:                                               ; preds = %48
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 8
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %139

69:                                               ; preds = %62
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = bitcast i32* %74 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %75, %struct.ieee80211_tim_ie** %8, align 8
  %76 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %77 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @WARN_ON_ONCE(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %69
  %88 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %93 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = srem i32 %91, %97
  %99 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %100 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %87, %69
  %103 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %106 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie* %103, i32 %104, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %102
  %123 = load i32, i32* @PS_OFF_BCN, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %126 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %124
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %131 = call i32 @carl9170_ps_check(%struct.ar9170* %130)
  br label %139

132:                                              ; preds = %102
  %133 = load i32, i32* @PS_OFF_BCN, align 4
  %134 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %135 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %30, %36, %47, %61, %68, %132, %122
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ath_is_mybeacon(%struct.ath_common*, %struct.ieee80211_hdr*) #1

declare dso_local i32* @carl9170_find_ie(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie*, i32, i32) #1

declare dso_local i32 @carl9170_ps_check(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
