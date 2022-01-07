; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_q_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_q_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_queue_info = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_q_destroy = type { i32, i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_EQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_CQ_DESTROY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_TX_DESTROY = common dso_local global i32 0, align 4
@OPCODE_ETH_RX_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_MCC_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_q_destroy(%struct.be_adapter* %0, %struct.be_queue_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.be_queue_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_q_destroy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %20 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %19)
  store %struct.be_mcc_wrb* %20, %struct.be_mcc_wrb** %8, align 8
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %22 = call %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb* %21)
  store %struct.be_cmd_req_q_destroy* %22, %struct.be_cmd_req_q_destroy** %9, align 8
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %39 [
    i32 131, label %24
    i32 132, label %27
    i32 128, label %30
    i32 129, label %33
    i32 130, label %36
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @OPCODE_COMMON_EQ_DESTROY, align 4
  store i32 %26, i32* %11, align 4
  br label %41

27:                                               ; preds = %18
  %28 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @OPCODE_COMMON_CQ_DESTROY, align 4
  store i32 %29, i32* %11, align 4
  br label %41

30:                                               ; preds = %18
  %31 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @OPCODE_ETH_TX_DESTROY, align 4
  store i32 %32, i32* %11, align 4
  br label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @OPCODE_ETH_RX_DESTROY, align 4
  store i32 %35, i32* %11, align 4
  br label %41

36:                                               ; preds = %18
  %37 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @OPCODE_COMMON_MCC_DESTROY, align 4
  store i32 %38, i32* %11, align 4
  br label %41

39:                                               ; preds = %18
  %40 = call i32 (...) @BUG()
  br label %41

41:                                               ; preds = %39, %36, %33, %30, %27, %24
  %42 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %9, align 8
  %43 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %42, i32 0, i32 1
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %47 = call i32 @be_wrb_cmd_hdr_prepare(i32* %43, i32 %44, i32 %45, i32 8, %struct.be_mcc_wrb* %46, i32* null)
  %48 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %49 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %9, align 8
  %53 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %55 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %57 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %41, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
