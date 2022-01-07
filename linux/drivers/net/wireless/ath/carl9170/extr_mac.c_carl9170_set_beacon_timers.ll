; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_beacon_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_beacon_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.carl9170_vif_info = type { i64 }

@AR9170_MAC_BCN_DTIM = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_IBSS_MODE = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_AP_MODE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_STA_PS = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_PWR_MGT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CARL9170_PRETBTT_KUS = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_PERIOD = common dso_local global i32 0, align 4
@AR9170_MAC_PRETBTT = common dso_local global i32 0, align 4
@AR9170_MAC_PRETBTT2 = common dso_local global i32 0, align 4
@AR9170_MAC_REG_PRETBTT = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_set_beacon_timers(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.carl9170_vif_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %10 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %9)
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = icmp ne %struct.ieee80211_vif* %11, null
  br i1 %12, label %13, label %118

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.carl9170_vif_info*
  store %struct.carl9170_vif_info* %18, %struct.carl9170_vif_info** %7, align 8
  %19 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %20 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %13
  %24 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %23
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %36, %39
  %41 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %42 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AR9170_MAC_BCN_DTIM, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SET_VAL(i32 %43, i32 %44, i32 %48)
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %61 [
    i32 128, label %53
    i32 130, label %53
    i32 129, label %57
  ]

53:                                               ; preds = %32, %32
  %54 = load i32, i32* @AR9170_MAC_BCN_IBSS_MODE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %32
  %58 = load i32, i32* @AR9170_MAC_BCN_AP_MODE, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %32
  %62 = call i32 @WARN_ON_ONCE(i32 1)
  br label %63

63:                                               ; preds = %61, %57, %53
  br label %92

64:                                               ; preds = %23, %13
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %76 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @AR9170_MAC_BCN_DTIM, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %80 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SET_VAL(i32 %77, i32 %78, i32 %84)
  %86 = load i32, i32* @AR9170_MAC_BCN_STA_PS, align 4
  %87 = load i32, i32* @AR9170_MAC_BCN_PWR_MGT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %70, %64
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %94 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %99 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 15
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = call i32 (...) @rcu_read_unlock()
  %104 = load i32, i32* @ERANGE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %153

106:                                              ; preds = %97
  %107 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %108 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CARL9170_PRETBTT_KUS, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %113 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %117

114:                                              ; preds = %92
  %115 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %116 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %106
  br label %123

118:                                              ; preds = %1
  %119 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %120 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %122 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %118, %117
  %124 = call i32 (...) @rcu_read_unlock()
  %125 = load i32, i32* @AR9170_MAC_BCN_PERIOD, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %128 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SET_VAL(i32 %125, i32 %126, i32 %129)
  %131 = load i32, i32* @AR9170_MAC_PRETBTT, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %134 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @SET_VAL(i32 %131, i32 %132, i32 %135)
  %137 = load i32, i32* @AR9170_MAC_PRETBTT2, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %140 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @SET_VAL(i32 %137, i32 %138, i32 %141)
  %143 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %144 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %143)
  %145 = load i32, i32* @AR9170_MAC_REG_PRETBTT, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @carl9170_regwrite(i32 %145, i32 %146)
  %148 = load i32, i32* @AR9170_MAC_REG_BCN_PERIOD, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @carl9170_regwrite(i32 %148, i32 %149)
  %151 = call i32 (...) @carl9170_regwrite_finish()
  %152 = call i32 (...) @carl9170_regwrite_result()
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %123, %102
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @SET_VAL(i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
