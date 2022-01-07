; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_update_bf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_update_bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_dbgfs_bf }
%struct.iwl_dbgfs_bf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_vif*, i32, i32)* @iwl_dbgfs_update_bf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_dbgfs_update_bf(%struct.ieee80211_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_dbgfs_bf*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %7, align 8
  %11 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %11, i32 0, i32 0
  store %struct.iwl_dbgfs_bf* %12, %struct.iwl_dbgfs_bf** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %15 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %63 [
    i32 134, label %19
    i32 132, label %23
    i32 131, label %27
    i32 128, label %31
    i32 130, label %35
    i32 129, label %39
    i32 135, label %43
    i32 136, label %47
    i32 133, label %51
    i32 138, label %55
    i32 137, label %59
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  br label %63

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  br label %63

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  br label %63

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  br label %63

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  br label %63

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %50 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  br label %63

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %54 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  br label %63

55:                                               ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %3
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.iwl_dbgfs_bf*, %struct.iwl_dbgfs_bf** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_dbgfs_bf, %struct.iwl_dbgfs_bf* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %3, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
