; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_update_cs_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_update_cs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"TDLS channel switch state: %s -> %s\0A\00", align 1
@IWL_MVM_TDLS_SW_REQ_SENT = common dso_local global i32 0, align 4
@IWL_MVM_TDLS_SW_IDLE = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32)* @iwl_mvm_tdls_update_cs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iwl_mvm_tdls_cs_state_str(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @iwl_mvm_tdls_cs_state_str(i32 %19)
  %21 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IWL_MVM_TDLS_SW_REQ_SENT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %12
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %31 = call i32 @iwl_mvm_get_systime(%struct.iwl_mvm* %30)
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %12
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IWL_MVM_TDLS_SW_IDLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %11, %40, %36
  ret void
}

declare dso_local i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i32 @iwl_mvm_tdls_cs_state_str(i32) #1

declare dso_local i32 @iwl_mvm_get_systime(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
