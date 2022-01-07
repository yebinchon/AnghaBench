; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_get_free_phy_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_get_free_phy_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.iwl_mvm = type { %struct.iwl_mvm_phy_ctxt*, i32 }

@NUM_PHY_CTX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"No available PHY context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_mvm_phy_ctxt* (%struct.iwl_mvm*)* @iwl_mvm_get_free_phy_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_mvm_phy_ctxt* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @NUM_PHY_CTX, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %15, i64 %16
  %18 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %12
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %24, i64 %25
  store %struct.iwl_mvm_phy_ctxt* %26, %struct.iwl_mvm_phy_ctxt** %2, align 8
  br label %34

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = call i32 @IWL_ERR(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.iwl_mvm_phy_ctxt* null, %struct.iwl_mvm_phy_ctxt** %2, align 8
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %2, align 8
  ret %struct.iwl_mvm_phy_ctxt* %35
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
