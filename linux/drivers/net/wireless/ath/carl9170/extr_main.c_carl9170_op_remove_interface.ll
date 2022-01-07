; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.carl9170_vif_info = type { i32, i32, i32, i32*, i32 }

@PS_OFF_VIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @carl9170_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_op_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.carl9170_vif_info*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.carl9170_vif_info*
  store %struct.carl9170_vif_info* %13, %struct.carl9170_vif_info** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ar9170*, %struct.ar9170** %15, align 8
  store %struct.ar9170* %16, %struct.ar9170** %7, align 8
  %17 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %18 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %21 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %122

29:                                               ; preds = %2
  %30 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %36 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %35)
  store %struct.ieee80211_vif* %36, %struct.ieee80211_vif** %6, align 8
  %37 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %38 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %41 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %43 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %47 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %49 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %48, i32 0, i32 4
  %50 = call i32 @list_del_rcu(i32* %49)
  %51 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %52 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RCU_INIT_POINTER(i32 %58, i32* null)
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %62 = icmp eq %struct.ieee80211_vif* %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %29
  %64 = call i32 (...) @rcu_read_unlock()
  %65 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %66 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %71 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %72 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %71)
  %73 = call i32 @carl9170_init_interface(%struct.ar9170* %70, %struct.ieee80211_vif* %72)
  %74 = call i32 @WARN_ON(i32 %73)
  br label %78

75:                                               ; preds = %63
  %76 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %77 = call i32 @carl9170_set_operating_mode(%struct.ar9170* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %85

79:                                               ; preds = %29
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @carl9170_mod_virtual_mac(%struct.ar9170* %81, i32 %82, i32* null)
  %84 = call i32 @WARN_ON(i32 %83)
  br label %85

85:                                               ; preds = %79, %78
  %86 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %87 = call i32 @carl9170_update_beacon(%struct.ar9170* %86, i32 0)
  %88 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @carl9170_flush_cab(%struct.ar9170* %88, i32 %89)
  %91 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %92 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %91, i32 0, i32 4
  %93 = call i32 @spin_lock_bh(i32* %92)
  %94 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %95 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @dev_kfree_skb_any(i32* %96)
  %98 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %99 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %98, i32 0, i32 3
  store i32* null, i32** %99, align 8
  %100 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %101 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %100, i32 0, i32 4
  %102 = call i32 @spin_unlock_bh(i32* %101)
  %103 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %104 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %103, i32 0, i32 3
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @bitmap_release_region(i32* %104, i32 %105, i32 0)
  %107 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %108 = call i32 @carl9170_set_beacon_timers(%struct.ar9170* %107)
  %109 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %110 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %85
  %114 = load i32, i32* @PS_OFF_VIF, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %117 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %115
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %85
  br label %122

122:                                              ; preds = %121, %28
  %123 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %124 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @carl9170_init_interface(%struct.ar9170*, %struct.ieee80211_vif*) #1

declare dso_local i32 @carl9170_set_operating_mode(%struct.ar9170*) #1

declare dso_local i32 @carl9170_mod_virtual_mac(%struct.ar9170*, i32, i32*) #1

declare dso_local i32 @carl9170_update_beacon(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_flush_cab(%struct.ar9170*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bitmap_release_region(i32*, i32, i32) #1

declare dso_local i32 @carl9170_set_beacon_timers(%struct.ar9170*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
