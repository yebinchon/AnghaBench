; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i8* }
%struct.be_cmd_resp_set_features = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.be_cmd_req_set_features = type { %struct.TYPE_8__, i8*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_FEATURES = common dso_local global i32 0, align 4
@BE_FEATURE_UE_RECOVERY = common dso_local global i32 0, align 4
@BE_UE_RECOVERY_UER_MASK = common dso_local global i32 0, align 4
@MCC_STATUS_ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@MCC_STATUS_INVALID_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Adapter does not support HW error recovery\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_features(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_cmd_resp_set_features*, align 8
  %5 = alloca %struct.be_cmd_req_set_features*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %95

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %6, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %17 = icmp ne %struct.be_mcc_wrb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %74

21:                                               ; preds = %13
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %23 = call i8* @embedded_payload(%struct.be_mcc_wrb* %22)
  %24 = bitcast i8* %23 to %struct.be_cmd_req_set_features*
  store %struct.be_cmd_req_set_features* %24, %struct.be_cmd_req_set_features** %5, align 8
  %25 = load %struct.be_cmd_req_set_features*, %struct.be_cmd_req_set_features** %5, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_set_features, %struct.be_cmd_req_set_features* %25, i32 0, i32 3
  %27 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %28 = load i32, i32* @OPCODE_COMMON_SET_FEATURES, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(i32* %26, i32 %27, i32 %28, i32 32, %struct.be_mcc_wrb* %29, i32* null)
  %31 = load i32, i32* @BE_FEATURE_UE_RECOVERY, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.be_cmd_req_set_features*, %struct.be_cmd_req_set_features** %5, align 8
  %34 = getelementptr inbounds %struct.be_cmd_req_set_features, %struct.be_cmd_req_set_features* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i8* @cpu_to_le32(i32 4)
  %36 = load %struct.be_cmd_req_set_features*, %struct.be_cmd_req_set_features** %5, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_set_features, %struct.be_cmd_req_set_features* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @BE_UE_RECOVERY_UER_MASK, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.be_cmd_req_set_features*, %struct.be_cmd_req_set_features** %5, align 8
  %41 = getelementptr inbounds %struct.be_cmd_req_set_features, %struct.be_cmd_req_set_features* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %21
  br label %74

49:                                               ; preds = %21
  %50 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %51 = call i8* @embedded_payload(%struct.be_mcc_wrb* %50)
  %52 = bitcast i8* %51 to %struct.be_cmd_resp_set_features*
  store %struct.be_cmd_resp_set_features* %52, %struct.be_cmd_resp_set_features** %4, align 8
  %53 = load %struct.be_cmd_resp_set_features*, %struct.be_cmd_resp_set_features** %4, align 8
  %54 = getelementptr inbounds %struct.be_cmd_resp_set_features, %struct.be_cmd_resp_set_features* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load %struct.be_cmd_resp_set_features*, %struct.be_cmd_resp_set_features** %4, align 8
  %63 = getelementptr inbounds %struct.be_cmd_resp_set_features, %struct.be_cmd_resp_set_features* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le16_to_cpu(i32 %66)
  %68 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %49, %48, %18
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @base_status(i32 %75)
  %77 = load i64, i64* @MCC_STATUS_ILLEGAL_REQUEST, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @base_status(i32 %80)
  %82 = load i64, i64* @MCC_STATUS_INVALID_LENGTH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %79, %74
  %85 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = call i32 @dev_info(i32* %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @base_status(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
