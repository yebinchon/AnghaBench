; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_tt_tx_backoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tt.c_iwl_mvm_tt_tx_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32 }

@REPLY_THERMAL_MNG_BACKOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set Thermal Tx backoff to: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to change Thermal Tx backoff\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_tt_tx_backoff(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %7 = ptrtoint i32* %4 to i32
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  store i32 4, i32* %8, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  %10 = load i32, i32* @REPLY_THERMAL_MNG_BACKOFF, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @max(i32 %11, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = call i64 @iwl_mvm_send_cmd(%struct.iwl_mvm* %17, %struct.iwl_host_cmd* %5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = call i32 @IWL_ERR(%struct.iwl_mvm* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %20
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
