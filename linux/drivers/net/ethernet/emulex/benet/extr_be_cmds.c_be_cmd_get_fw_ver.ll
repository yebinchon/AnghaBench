; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fw_version = type { i32 }
%struct.be_cmd_resp_get_fw_version = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_FW_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_fw_ver(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_mcc_wrb*, align 8
  %4 = alloca %struct.be_cmd_req_get_fw_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_cmd_resp_get_fw_version*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %11 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %10)
  store %struct.be_mcc_wrb* %11, %struct.be_mcc_wrb** %3, align 8
  %12 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %13 = icmp ne %struct.be_mcc_wrb* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %19 = call i8* @embedded_payload(%struct.be_mcc_wrb* %18)
  %20 = bitcast i8* %19 to %struct.be_cmd_req_get_fw_version*
  store %struct.be_cmd_req_get_fw_version* %20, %struct.be_cmd_req_get_fw_version** %4, align 8
  %21 = load %struct.be_cmd_req_get_fw_version*, %struct.be_cmd_req_get_fw_version** %4, align 8
  %22 = getelementptr inbounds %struct.be_cmd_req_get_fw_version, %struct.be_cmd_req_get_fw_version* %21, i32 0, i32 0
  %23 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %24 = load i32, i32* @OPCODE_COMMON_GET_FW_VERSION, align 4
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %26 = call i32 @be_wrb_cmd_hdr_prepare(i32* %22, i32 %23, i32 %24, i32 4, %struct.be_mcc_wrb* %25, i32* null)
  %27 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %28 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %17
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %33 = call i8* @embedded_payload(%struct.be_mcc_wrb* %32)
  %34 = bitcast i8* %33 to %struct.be_cmd_resp_get_fw_version*
  store %struct.be_cmd_resp_get_fw_version* %34, %struct.be_cmd_resp_get_fw_version** %6, align 8
  %35 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.be_cmd_resp_get_fw_version*, %struct.be_cmd_resp_get_fw_version** %6, align 8
  %39 = getelementptr inbounds %struct.be_cmd_resp_get_fw_version, %struct.be_cmd_resp_get_fw_version* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strlcpy(i32 %37, i32 %40, i32 4)
  %42 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.be_cmd_resp_get_fw_version*, %struct.be_cmd_resp_get_fw_version** %6, align 8
  %46 = getelementptr inbounds %struct.be_cmd_resp_get_fw_version, %struct.be_cmd_resp_get_fw_version* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlcpy(i32 %44, i32 %47, i32 4)
  br label %49

49:                                               ; preds = %31, %17
  br label %50

50:                                               ; preds = %49, %14
  %51 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
