; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_power_vifs = type { i64, i64, %struct.iwl_mvm* }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_power_get_vifs_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_power_vifs, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 2
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %8, align 8
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %17 = load i32, i32* @iwl_mvm_power_get_vifs_iterator, align 4
  %18 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %15, i32 %16, i32 %17, %struct.iwl_power_vifs* %4)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = call i32 @iwl_mvm_power_set_pm(%struct.iwl_mvm* %19, %struct.iwl_power_vifs* %4)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = call i32 @iwl_mvm_power_set_ps(%struct.iwl_mvm* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @iwl_mvm_power_send_cmd(%struct.iwl_mvm* %32, i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %65

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @iwl_mvm_power_send_cmd(%struct.iwl_mvm* %46, i64 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %65

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %41
  %56 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @iwl_mvm_power_set_ba(%struct.iwl_mvm* %60, i64 %62)
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %59, %52, %38, %25
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_power_vifs*) #1

declare dso_local i32 @iwl_mvm_power_set_pm(%struct.iwl_mvm*, %struct.iwl_power_vifs*) #1

declare dso_local i32 @iwl_mvm_power_set_ps(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_power_send_cmd(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @iwl_mvm_power_set_ba(%struct.iwl_mvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
