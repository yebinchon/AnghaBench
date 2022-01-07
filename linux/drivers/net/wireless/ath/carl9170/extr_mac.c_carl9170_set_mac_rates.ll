; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_mac_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_mac_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@AR9170_MAC_REG_BASIC_RATE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_MANDATORY_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_set_mac_rates(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %9 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %8)
  store %struct.ieee80211_vif* %9, %struct.ieee80211_vif** %4, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = icmp ne %struct.ieee80211_vif* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 15
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4080
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %30 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %14
  store i32 65280, i32* %6, align 4
  br label %42

41:                                               ; preds = %14
  store i32 65295, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %44 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %43)
  %45 = load i32, i32* @AR9170_MAC_REG_BASIC_RATE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @carl9170_regwrite(i32 %45, i32 %46)
  %48 = load i32, i32* @AR9170_MAC_REG_MANDATORY_RATE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @carl9170_regwrite(i32 %48, i32 %49)
  %51 = call i32 (...) @carl9170_regwrite_finish()
  %52 = call i32 (...) @carl9170_regwrite_result()
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %42, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170*) #1

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
