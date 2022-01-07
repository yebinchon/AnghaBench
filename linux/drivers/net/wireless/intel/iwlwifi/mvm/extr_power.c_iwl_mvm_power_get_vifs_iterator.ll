; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_get_vifs_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_get_vifs_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_power_vifs = type { i32, i32, i32, i32, %struct.ieee80211_vif*, %struct.ieee80211_vif*, %struct.ieee80211_vif*, %struct.ieee80211_vif* }

@NUM_PHY_CTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_power_get_vifs_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_power_get_vifs_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_power_vifs*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iwl_power_vifs*
  store %struct.iwl_power_vifs* %13, %struct.iwl_power_vifs** %8, align 8
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NUM_PHY_CTX, align 8
  %25 = icmp slt i64 %23, %24
  br label %26

26:                                               ; preds = %18, %3
  %27 = phi i1 [ false, %3 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %29)
  switch i32 %30, label %84 [
    i32 130, label %31
    i32 129, label %32
    i32 133, label %32
    i32 132, label %46
    i32 131, label %60
    i32 128, label %74
  ]

31:                                               ; preds = %26
  br label %85

32:                                               ; preds = %26, %26
  %33 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %33, i32 0, i32 7
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %34, align 8
  %36 = call i32 @WARN_ON(%struct.ieee80211_vif* %35)
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %38 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %38, i32 0, i32 7
  store %struct.ieee80211_vif* %37, %struct.ieee80211_vif** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %44 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %32
  br label %85

46:                                               ; preds = %26
  %47 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %47, i32 0, i32 6
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %48, align 8
  %50 = call i32 @WARN_ON(%struct.ieee80211_vif* %49)
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %52 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %53 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %52, i32 0, i32 6
  store %struct.ieee80211_vif* %51, %struct.ieee80211_vif** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %46
  br label %85

60:                                               ; preds = %26
  %61 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %61, i32 0, i32 5
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %62, align 8
  %64 = call i32 @WARN_ON(%struct.ieee80211_vif* %63)
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %67 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %66, i32 0, i32 5
  store %struct.ieee80211_vif* %65, %struct.ieee80211_vif** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %60
  br label %85

74:                                               ; preds = %26
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %76 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %76, i32 0, i32 4
  store %struct.ieee80211_vif* %75, %struct.ieee80211_vif** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.iwl_power_vifs*, %struct.iwl_power_vifs** %8, align 8
  %82 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %74
  br label %85

84:                                               ; preds = %26
  br label %85

85:                                               ; preds = %84, %83, %73, %59, %45, %31
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @WARN_ON(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
