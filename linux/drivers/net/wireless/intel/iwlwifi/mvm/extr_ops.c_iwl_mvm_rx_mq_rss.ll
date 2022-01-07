; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_mq_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_mq_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LEGACY_GROUP = common dso_local global i32 0, align 4
@FRAME_RELEASE = common dso_local global i32 0, align 4
@DATA_PATH_GROUP = common dso_local global i32 0, align 4
@RX_QUEUES_NOTIFICATION = common dso_local global i32 0, align 4
@REPLY_RX_MPDU_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32)* @iwl_mvm_rx_mq_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_mq_rss(%struct.iwl_op_mode* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_op_mode*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_rx_packet*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %5, align 8
  %13 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %12)
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %9, align 8
  %14 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %15 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %14)
  store %struct.iwl_rx_packet* %15, %struct.iwl_rx_packet** %10, align 8
  %16 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %17 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %21 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WIDE_ID(i32 %19, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @LEGACY_GROUP, align 4
  %27 = load i32, i32* @FRAME_RELEASE, align 4
  %28 = call i32 @WIDE_ID(i32 %26, i32 %27)
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %35 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %36 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @iwl_mvm_rx_frame_release(%struct.iwl_mvm* %34, %struct.napi_struct* %35, %struct.iwl_rx_cmd_buffer* %36, i32 %37)
  br label %71

39:                                               ; preds = %4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @DATA_PATH_GROUP, align 4
  %42 = load i32, i32* @RX_QUEUES_NOTIFICATION, align 4
  %43 = call i32 @WIDE_ID(i32 %41, i32 %42)
  %44 = icmp eq i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %50 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %51 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @iwl_mvm_rx_queue_notif(%struct.iwl_mvm* %49, %struct.napi_struct* %50, %struct.iwl_rx_cmd_buffer* %51, i32 %52)
  br label %70

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @LEGACY_GROUP, align 4
  %57 = load i32, i32* @REPLY_RX_MPDU_CMD, align 4
  %58 = call i32 @WIDE_ID(i32 %56, i32 %57)
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %65 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %66 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @iwl_mvm_rx_mpdu_mq(%struct.iwl_mvm* %64, %struct.napi_struct* %65, %struct.iwl_rx_cmd_buffer* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %54
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %33
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_mvm_rx_frame_release(%struct.iwl_mvm*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32) #1

declare dso_local i32 @iwl_mvm_rx_queue_notif(%struct.iwl_mvm*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iwl_mvm_rx_mpdu_mq(%struct.iwl_mvm*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
