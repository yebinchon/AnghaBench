; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_rxq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_rxq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_queue_info = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_q_destroy = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_RX_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_rxq_destroy(%struct.be_adapter* %0, %struct.be_queue_info* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_queue_info*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_cmd_req_q_destroy*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %4, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %12 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %11)
  store %struct.be_mcc_wrb* %12, %struct.be_mcc_wrb** %5, align 8
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %14 = icmp ne %struct.be_mcc_wrb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %20 = call %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb* %19)
  store %struct.be_cmd_req_q_destroy* %20, %struct.be_cmd_req_q_destroy** %6, align 8
  %21 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %6, align 8
  %22 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %21, i32 0, i32 1
  %23 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %24 = load i32, i32* @OPCODE_ETH_RX_DESTROY, align 4
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %26 = call i32 @be_wrb_cmd_hdr_prepare(i32* %22, i32 %23, i32 %24, i32 8, %struct.be_mcc_wrb* %25, i32* null)
  %27 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %28 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %6, align 8
  %32 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %36 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %18, %15
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
