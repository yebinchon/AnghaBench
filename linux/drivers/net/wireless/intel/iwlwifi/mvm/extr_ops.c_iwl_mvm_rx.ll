; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm = type { i32 }

@LEGACY_GROUP = common dso_local global i32 0, align 4
@REPLY_RX_MPDU_CMD = common dso_local global i32 0, align 4
@REPLY_RX_PHY_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*)* @iwl_mvm_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx(%struct.iwl_op_mode* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2) #0 {
  %4 = alloca %struct.iwl_op_mode*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %6, align 8
  %10 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %11 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %11, %struct.iwl_rx_packet** %7, align 8
  %12 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %4, align 8
  %13 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %12)
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %8, align 8
  %14 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WIDE_ID(i32 %17, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @LEGACY_GROUP, align 4
  %25 = load i32, i32* @REPLY_RX_MPDU_CMD, align 4
  %26 = call i32 @WIDE_ID(i32 %24, i32 %25)
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %33 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %34 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %35 = call i32 @iwl_mvm_rx_rx_mpdu(%struct.iwl_mvm* %32, %struct.napi_struct* %33, %struct.iwl_rx_cmd_buffer* %34)
  br label %52

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @LEGACY_GROUP, align 4
  %39 = load i32, i32* @REPLY_RX_PHY_CMD, align 4
  %40 = call i32 @WIDE_ID(i32 %38, i32 %39)
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %44 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %45 = call i32 @iwl_mvm_rx_rx_phy_cmd(%struct.iwl_mvm* %43, %struct.iwl_rx_cmd_buffer* %44)
  br label %51

46:                                               ; preds = %36
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %48 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %49 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %50 = call i32 @iwl_mvm_rx_common(%struct.iwl_mvm* %47, %struct.iwl_rx_cmd_buffer* %48, %struct.iwl_rx_packet* %49)
  br label %51

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %31
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iwl_mvm_rx_rx_mpdu(%struct.iwl_mvm*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_mvm_rx_rx_phy_cmd(%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_mvm_rx_common(%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
