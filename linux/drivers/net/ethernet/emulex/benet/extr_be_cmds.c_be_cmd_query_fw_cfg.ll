; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_query_fw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_query_fw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_query_fw_cfg = type { i32 }
%struct.be_cmd_resp_query_fw_cfg = type { i32, i32, i32, i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_QUERY_FIRMWARE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"FW config: function_mode=0x%x, function_caps=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_query_fw_cfg(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_query_fw_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_resp_query_fw_cfg*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 4
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %4, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %17 = call i8* @embedded_payload(%struct.be_mcc_wrb* %16)
  %18 = bitcast i8* %17 to %struct.be_cmd_req_query_fw_cfg*
  store %struct.be_cmd_req_query_fw_cfg* %18, %struct.be_cmd_req_query_fw_cfg** %5, align 8
  %19 = load %struct.be_cmd_req_query_fw_cfg*, %struct.be_cmd_req_query_fw_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.be_cmd_req_query_fw_cfg, %struct.be_cmd_req_query_fw_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %22 = load i32, i32* @OPCODE_COMMON_QUERY_FIRMWARE_CONFIG, align 4
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %24 = call i32 @be_wrb_cmd_hdr_prepare(i32* %20, i32 %21, i32 %22, i32 4, %struct.be_mcc_wrb* %23, i32* null)
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %13
  %30 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %31 = call i8* @embedded_payload(%struct.be_mcc_wrb* %30)
  %32 = bitcast i8* %31 to %struct.be_cmd_resp_query_fw_cfg*
  store %struct.be_cmd_resp_query_fw_cfg* %32, %struct.be_cmd_resp_query_fw_cfg** %7, align 8
  %33 = load %struct.be_cmd_resp_query_fw_cfg*, %struct.be_cmd_resp_query_fw_cfg** %7, align 8
  %34 = getelementptr inbounds %struct.be_cmd_resp_query_fw_cfg, %struct.be_cmd_resp_query_fw_cfg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.be_cmd_resp_query_fw_cfg*, %struct.be_cmd_resp_query_fw_cfg** %7, align 8
  %40 = getelementptr inbounds %struct.be_cmd_resp_query_fw_cfg, %struct.be_cmd_resp_query_fw_cfg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.be_cmd_resp_query_fw_cfg*, %struct.be_cmd_resp_query_fw_cfg** %7, align 8
  %46 = getelementptr inbounds %struct.be_cmd_resp_query_fw_cfg, %struct.be_cmd_resp_query_fw_cfg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.be_cmd_resp_query_fw_cfg*, %struct.be_cmd_resp_query_fw_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.be_cmd_resp_query_fw_cfg, %struct.be_cmd_resp_query_fw_cfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = and i32 %54, 255
  %56 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %29, %13
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %70, i32 0, i32 4
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
