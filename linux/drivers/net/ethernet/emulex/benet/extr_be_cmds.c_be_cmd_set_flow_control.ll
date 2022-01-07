; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_flow_control = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OPCODE_COMMON_SET_FLOW_CONTROL = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MCC_STATUS_FEATURE_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_flow_control(%struct.be_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_set_flow_control*, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %12 = load i32, i32* @OPCODE_COMMON_SET_FLOW_CONTROL, align 4
  %13 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %14 = call i32 @be_cmd_allowed(%struct.be_adapter* %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %24 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %23)
  store %struct.be_mcc_wrb* %24, %struct.be_mcc_wrb** %8, align 8
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %26 = icmp ne %struct.be_mcc_wrb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %54

30:                                               ; preds = %19
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %32 = call %struct.be_cmd_req_set_flow_control* @embedded_payload(%struct.be_mcc_wrb* %31)
  store %struct.be_cmd_req_set_flow_control* %32, %struct.be_cmd_req_set_flow_control** %9, align 8
  %33 = load %struct.be_cmd_req_set_flow_control*, %struct.be_cmd_req_set_flow_control** %9, align 8
  %34 = getelementptr inbounds %struct.be_cmd_req_set_flow_control, %struct.be_cmd_req_set_flow_control* %33, i32 0, i32 2
  %35 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %36 = load i32, i32* @OPCODE_COMMON_SET_FLOW_CONTROL, align 4
  %37 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %38 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %34, i32 %35, i32 %36, i32 24, %struct.be_mcc_wrb* %37, i32* null)
  %39 = load %struct.be_cmd_req_set_flow_control*, %struct.be_cmd_req_set_flow_control** %9, align 8
  %40 = getelementptr inbounds %struct.be_cmd_req_set_flow_control, %struct.be_cmd_req_set_flow_control* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.be_cmd_req_set_flow_control*, %struct.be_cmd_req_set_flow_control** %9, align 8
  %46 = getelementptr inbounds %struct.be_cmd_req_set_flow_control, %struct.be_cmd_req_set_flow_control* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.be_cmd_req_set_flow_control*, %struct.be_cmd_req_set_flow_control** %9, align 8
  %51 = getelementptr inbounds %struct.be_cmd_req_set_flow_control, %struct.be_cmd_req_set_flow_control* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %53 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %30, %27
  %55 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @base_status(i32 %58)
  %60 = load i64, i64* @MCC_STATUS_FEATURE_NOT_SUPPORTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %62, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_set_flow_control* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @base_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
