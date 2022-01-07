; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_aux_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_aux_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@IWL_STA_AUX_ACTIVITY = common dso_local global i32 0, align 4
@MAC_INDEX_AUX = common dso_local global i32 0, align 4
@IWL_MVM_TX_FIFO_MCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 2
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %16 = load i32, i32* @IWL_STA_AUX_ACTIVITY, align 4
  %17 = call i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm* %8, i32* %10, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = load i32, i32* @MAC_INDEX_AUX, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 1
  %29 = load i32, i32* @IWL_MVM_TX_FIFO_MCAST, align 4
  %30 = call i32 @iwl_mvm_add_int_sta_with_queue(%struct.iwl_mvm* %23, i32 %24, i32 0, i32* %26, i32* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  %37 = call i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm* %34, i32* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm*, i32*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_mvm_add_int_sta_with_queue(%struct.iwl_mvm*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
