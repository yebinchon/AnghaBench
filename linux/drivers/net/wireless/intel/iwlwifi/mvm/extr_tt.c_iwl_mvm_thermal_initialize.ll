; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_thermal_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_thermal_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__*, %struct.iwl_mvm_tt_mgmt }
%struct.TYPE_2__ = type { i32* }
%struct.iwl_mvm_tt_mgmt = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Initialize Thermal Throttling\0A\00", align 1
@iwl_mvm_default_tt_params = common dso_local global i32 0, align 4
@check_exit_ctkill = common dso_local global i32 0, align 4
@IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_thermal_initialize(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm_tt_mgmt*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 2
  store %struct.iwl_mvm_tt_mgmt* %7, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @iwl_mvm_default_tt_params, align 4
  %27 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.iwl_mvm_tt_mgmt*, %struct.iwl_mvm_tt_mgmt** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_tt_mgmt* %37, i32 0, i32 2
  %39 = load i32, i32* @check_exit_ctkill, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load i32, i32* @IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE, align 4
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  ret void
}

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
