; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_set_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_set_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_power_vifs = type { i64, i64, i64, i64, i64, i64 }
%struct.iwl_mvm_vif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_power_disable_pm_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_power_vifs*)* @iwl_mvm_power_set_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_power_set_pm(%struct.iwl_mvm* %0, %struct.iwl_power_vifs* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_power_vifs*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_power_vifs* %1, %struct.iwl_power_vifs** %4, align 8
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %5, align 8
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %6, align 8
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %17 = load i32, i32* @iwl_mvm_power_disable_pm_iterator, align 4
  %18 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %15, i32 %16, i32 %17, i32* null)
  %19 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i64 %26)
  store %struct.iwl_mvm_vif* %27, %struct.iwl_mvm_vif** %5, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i64 %36)
  store %struct.iwl_mvm_vif* %37, %struct.iwl_mvm_vif** %6, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i64 %46)
  store %struct.iwl_mvm_vif* %47, %struct.iwl_mvm_vif** %7, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %50 = call i64 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm* %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %171

53:                                               ; preds = %48
  %54 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %60 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %171

71:                                               ; preds = %63, %58, %53
  %72 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %83 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %171

89:                                               ; preds = %81, %76, %71
  %90 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %91 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %104, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %99, %94, %89
  %113 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %114 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %119 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %127, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %122, %117, %112
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %138
  %142 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %143 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %148 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %151 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %156 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %149
  br label %171

158:                                              ; preds = %138, %135
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %4, align 8
  %163 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %168 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %52, %68, %86, %157, %166, %161, %158
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, i32*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i64) #1

declare dso_local i64 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
