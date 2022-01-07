; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_notify_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_notify_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rxq_sync_cmd = type { i32, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@DATA_PATH_GROUP = common dso_local global i32 0, align 4
@TRIGGER_RX_QUEUES_NOTIF_CMD = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_notify_rx_queue(%struct.iwl_mvm* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [36 x i32], align 16
  %13 = alloca %struct.iwl_rxq_sync_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = getelementptr inbounds [36 x i32], [36 x i32]* %12, i64 0, i64 0
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_rxq_sync_cmd*
  store %struct.iwl_rxq_sync_cmd* %18, %struct.iwl_rxq_sync_cmd** %13, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 32, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 4
  br label %30

30:                                               ; preds = %26, %5
  %31 = phi i1 [ true, %5 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %70

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.iwl_rxq_sync_cmd*, %struct.iwl_rxq_sync_cmd** %13, align 8
  %42 = getelementptr inbounds %struct.iwl_rxq_sync_cmd, %struct.iwl_rxq_sync_cmd* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.iwl_rxq_sync_cmd*, %struct.iwl_rxq_sync_cmd** %13, align 8
  %46 = getelementptr inbounds %struct.iwl_rxq_sync_cmd, %struct.iwl_rxq_sync_cmd* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.iwl_rxq_sync_cmd*, %struct.iwl_rxq_sync_cmd** %13, align 8
  %48 = getelementptr inbounds %struct.iwl_rxq_sync_cmd, %struct.iwl_rxq_sync_cmd* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.iwl_rxq_sync_cmd*, %struct.iwl_rxq_sync_cmd** %13, align 8
  %50 = getelementptr inbounds %struct.iwl_rxq_sync_cmd, %struct.iwl_rxq_sync_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memcpy(i32 %51, i32* %52, i32 %53)
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %56 = load i32, i32* @DATA_PATH_GROUP, align 4
  %57 = load i32, i32* @TRIGGER_RX_QUEUES_NOTIF_CMD, align 4
  %58 = call i32 @WIDE_ID(i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = load i32, i32* @CMD_ASYNC, align 4
  br label %64

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.iwl_rxq_sync_cmd*, %struct.iwl_rxq_sync_cmd** %13, align 8
  %68 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %55, i32 %58, i32 %65, i32 %66, %struct.iwl_rxq_sync_cmd* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %35
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_rxq_sync_cmd*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
