; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_lq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_lq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_cmd = type { i64 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@LQ_CMD = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %0, %struct.iwl_lq_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_lq_cmd*, align 8
  %6 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_lq_cmd* %1, %struct.iwl_lq_cmd** %5, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %8 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %5, align 8
  %9 = ptrtoint %struct.iwl_lq_cmd* %8 to i32
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %11 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store i32 8, i32* %12, align 4
  %13 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %14 = load i32, i32* @LQ_CMD, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = call i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %34 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %33, %struct.iwl_host_cmd* %6)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
