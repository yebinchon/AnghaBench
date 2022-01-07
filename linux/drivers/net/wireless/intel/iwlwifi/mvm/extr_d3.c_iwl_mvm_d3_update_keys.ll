; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_update_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_update_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32 }
%struct.iwl_mvm_d3_gtk_iter_data = type { i32, i32, %struct.TYPE_14__*, i32, %struct.ieee80211_key_conf*, i64, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %union.iwl_all_tsc_rsc }
%union.iwl_all_tsc_rsc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ieee80211_key_seq = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*, i8*)* @iwl_mvm_d3_update_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_d3_update_keys(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3, i8* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iwl_mvm_d3_gtk_iter_data*, align 8
  %12 = alloca %struct.ieee80211_key_seq, align 4
  %13 = alloca %union.iwl_all_tsc_rsc*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.iwl_mvm_d3_gtk_iter_data*
  store %struct.iwl_mvm_d3_gtk_iter_data* %15, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %16 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %139

21:                                               ; preds = %5
  %22 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %27 [
    i32 128, label %25
    i32 129, label %25
    i32 131, label %26
    i32 130, label %26
  ]

25:                                               ; preds = %21, %21
  br label %139

26:                                               ; preds = %21, %21
  br label %30

27:                                               ; preds = %21
  %28 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %139

30:                                               ; preds = %26
  %31 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %36 = icmp ne %struct.ieee80211_sta* %35, null
  br i1 %36, label %37, label %99

37:                                               ; preds = %30
  %38 = bitcast %struct.ieee80211_key_seq* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 8, i1 false)
  %39 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %union.iwl_all_tsc_rsc* %46, %union.iwl_all_tsc_rsc** %13, align 8
  %47 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %139

52:                                               ; preds = %37
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %98 [
    i32 131, label %56
    i32 130, label %76
  ]

56:                                               ; preds = %52
  %57 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %union.iwl_all_tsc_rsc*, %union.iwl_all_tsc_rsc** %13, align 8
  %61 = bitcast %union.iwl_all_tsc_rsc* %60 to %struct.TYPE_11__*
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %65 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %66 = call i32 @iwl_mvm_set_aes_rx_seq(i32 %59, i32 %63, %struct.ieee80211_sta* %64, %struct.ieee80211_key_conf* %65)
  %67 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %67, i32 0, i32 1
  %69 = load %union.iwl_all_tsc_rsc*, %union.iwl_all_tsc_rsc** %13, align 8
  %70 = bitcast %union.iwl_all_tsc_rsc* %69 to %struct.TYPE_11__*
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le64_to_cpu(i32 %73)
  %75 = call i32 @atomic64_set(i32* %68, i32 %74)
  br label %98

76:                                               ; preds = %52
  %77 = load %union.iwl_all_tsc_rsc*, %union.iwl_all_tsc_rsc** %13, align 8
  %78 = bitcast %union.iwl_all_tsc_rsc* %77 to %struct.TYPE_12__*
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = call i32 @iwl_mvm_tkip_sc_to_seq(i32* %79, %struct.ieee80211_key_seq* %12)
  %81 = load %union.iwl_all_tsc_rsc*, %union.iwl_all_tsc_rsc** %13, align 8
  %82 = bitcast %union.iwl_all_tsc_rsc* %81 to %struct.TYPE_12__*
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %86 = call i32 @iwl_mvm_set_tkip_rx_seq(i32 %84, %struct.ieee80211_key_conf* %85)
  %87 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %88 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %12, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %12, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %91, %95
  %97 = call i32 @atomic64_set(i32* %88, i32 %96)
  br label %98

98:                                               ; preds = %52, %76, %56
  br label %139

99:                                               ; preds = %30
  %100 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %106 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %106, i32 0, i32 4
  store %struct.ieee80211_key_conf* %105, %struct.ieee80211_key_conf** %107, align 8
  %108 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %109 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %139

113:                                              ; preds = %99
  %114 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %114, i32 0, i32 2
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %122 = call i32 @ieee80211_remove_key(%struct.ieee80211_key_conf* %121)
  br label %139

123:                                              ; preds = %113
  %124 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %125 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %124, i32 0, i32 4
  %126 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %125, align 8
  %127 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %128 = icmp eq %struct.ieee80211_key_conf* %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %131 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %134 = load %struct.iwl_mvm_d3_gtk_iter_data*, %struct.iwl_mvm_d3_gtk_iter_data** %11, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %134, i32 0, i32 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = call i32 @iwl_mvm_set_key_rx_seq(i32 %132, %struct.ieee80211_key_conf* %133, %struct.TYPE_14__* %136)
  br label %138

138:                                              ; preds = %129, %123
  br label %139

139:                                              ; preds = %20, %25, %27, %51, %98, %104, %138, %120
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_mvm_set_aes_rx_seq(i32, i32, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #2

declare dso_local i32 @atomic64_set(i32*, i32) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @iwl_mvm_tkip_sc_to_seq(i32*, %struct.ieee80211_key_seq*) #2

declare dso_local i32 @iwl_mvm_set_tkip_rx_seq(i32, %struct.ieee80211_key_conf*) #2

declare dso_local i32 @ieee80211_remove_key(%struct.ieee80211_key_conf*) #2

declare dso_local i32 @iwl_mvm_set_key_rx_seq(i32, %struct.ieee80211_key_conf*, %struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
