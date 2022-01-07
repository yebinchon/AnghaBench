; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_ht_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_ht_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__, %struct.il_ht_config }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.il_ht_config = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"enter:\0A\00", align 1
@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_vif*)* @il_ht_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_ht_conf(%struct.il_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.il_ht_config*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 1
  store %struct.il_ht_config* %11, %struct.il_ht_config** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %13, %struct.ieee80211_bss_conf** %7, align 8
  %14 = call i32 @D_ASSOC(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.il_ht_config*, %struct.il_ht_config** %5, align 8
  %43 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %102 [
    i32 128, label %47
    i32 129, label %99
  ]

47:                                               ; preds = %21
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %50 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %49, i32 %52)
  store %struct.ieee80211_sta* %53, %struct.ieee80211_sta** %6, align 8
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %55 = icmp ne %struct.ieee80211_sta* %54, null
  br i1 %55, label %56, label %94

56:                                               ; preds = %47
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %58, %struct.ieee80211_sta_ht_cap** %8, align 8
  %59 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %56
  %77 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.il_ht_config*, %struct.il_ht_config** %5, align 8
  %86 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %76, %56
  %88 = load i32, i32* %9, align 4
  %89 = icmp sle i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.il_ht_config*, %struct.il_ht_config** %5, align 8
  %92 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %97

94:                                               ; preds = %47
  %95 = load %struct.il_ht_config*, %struct.il_ht_config** %5, align 8
  %96 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %93
  %98 = call i32 (...) @rcu_read_unlock()
  br label %103

99:                                               ; preds = %21
  %100 = load %struct.il_ht_config*, %struct.il_ht_config** %5, align 8
  %101 = getelementptr inbounds %struct.il_ht_config, %struct.il_ht_config* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %103

102:                                              ; preds = %21
  br label %103

103:                                              ; preds = %102, %99, %97
  %104 = call i32 @D_ASSOC(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %20
  ret void
}

declare dso_local i32 @D_ASSOC(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
