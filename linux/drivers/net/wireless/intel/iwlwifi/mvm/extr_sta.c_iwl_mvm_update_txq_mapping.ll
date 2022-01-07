; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_update_txq_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_update_txq_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_txq = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Trying to enable TXQ %d with existing TID %d\0A\00", align 1
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@tid_to_mac80211_ac = common dso_local global i32* null, align 8
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Enabling TXQ #%d tids=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i64, i64)* @iwl_mvm_update_txq_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_update_txq_mapping(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_mvm_txq*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 1, i32* %12, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @BIT(i64 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @IWL_ERR(%struct.iwl_mvm* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29)
  store i32 0, i32* %6, align 4
  br label %121

31:                                               ; preds = %5
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @BIT(i64 %43)
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %44
  store i32 %53, i32* %51, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %54, i64* %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %42
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32*, i32** @tid_to_mac80211_ac, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %72, i32* %79, align 8
  br label %89

80:                                               ; preds = %64
  %81 = load i32, i32* @IEEE80211_AC_VO, align 4
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i32 %81, i32* %88, align 8
  br label %89

89:                                               ; preds = %80, %68
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i64 %90, i64* %97, align 8
  br label %98

98:                                               ; preds = %89, %42
  %99 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %100 = icmp ne %struct.ieee80211_sta* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call %struct.iwl_mvm_txq* @iwl_mvm_txq_from_tid(%struct.ieee80211_sta* %102, i64 %103)
  store %struct.iwl_mvm_txq* %104, %struct.iwl_mvm_txq** %13, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %13, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %108, %26
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, i64) #1

declare dso_local %struct.iwl_mvm_txq* @iwl_mvm_txq_from_tid(%struct.ieee80211_sta*, i64) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
