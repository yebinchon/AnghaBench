; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_request_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_request_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, %union.fjes_device_command_res*, %union.fjes_device_command_res* }
%union.fjes_device_command_res = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%union.fjes_device_command_req = type { %struct.TYPE_4__ }

@FJES_DEV_COMMAND_INFO_REQ_LEN = common dso_local global i64 0, align 8
@FJES_CMD_REQ_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid res_buf\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_NORMAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_request_info(%struct.fjes_hw* %0) #0 {
  %2 = alloca %struct.fjes_hw*, align 8
  %3 = alloca %union.fjes_device_command_req*, align 8
  %4 = alloca %union.fjes_device_command_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %2, align 8
  %7 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %8 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %11 = bitcast %union.fjes_device_command_res* %10 to %union.fjes_device_command_req*
  store %union.fjes_device_command_req* %11, %union.fjes_device_command_req** %3, align 8
  %12 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %13 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %14, align 8
  store %union.fjes_device_command_res* %15, %union.fjes_device_command_res** %4, align 8
  %16 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %3, align 8
  %17 = bitcast %union.fjes_device_command_req* %16 to %union.fjes_device_command_res*
  %18 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %19 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memset(%union.fjes_device_command_res* %17, i32 0, i32 %21)
  %23 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %4, align 8
  %24 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %25 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(%union.fjes_device_command_res* %23, i32 0, i32 %27)
  %29 = load i64, i64* @FJES_DEV_COMMAND_INFO_REQ_LEN, align 8
  %30 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %3, align 8
  %31 = bitcast %union.fjes_device_command_req* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %4, align 8
  %34 = bitcast %union.fjes_device_command_res* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %4, align 8
  %37 = bitcast %union.fjes_device_command_res* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %40 = load i32, i32* @FJES_CMD_REQ_INFO, align 4
  %41 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %43 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %4, align 8
  %44 = call i32 @trace_fjes_hw_request_info(%struct.fjes_hw* %42, %union.fjes_device_command_res* %43)
  store i32 0, i32* %6, align 4
  %45 = load %struct.fjes_hw*, %struct.fjes_hw** %2, align 8
  %46 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @FJES_DEV_COMMAND_INFO_RES_LEN(i32 %49)
  %51 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %4, align 8
  %52 = bitcast %union.fjes_device_command_res* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %1
  %57 = call i32 @trace_fjes_hw_request_info_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOMSG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %94

60:                                               ; preds = %1
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %4, align 8
  %66 = bitcast %union.fjes_device_command_res* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %70 [
    i32 132, label %69
  ]

69:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %69
  br label %93

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  switch i32 %75, label %89 [
    i32 128, label %76
    i32 129, label %79
    i32 131, label %83
    i32 130, label %86
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %92

79:                                               ; preds = %74
  %80 = call i32 @trace_fjes_hw_request_info_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %92

83:                                               ; preds = %74
  %84 = load i32, i32* @EPERM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %92

86:                                               ; preds = %74
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %74
  %90 = load i32, i32* @EPERM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %86, %83, %79, %76
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %56
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%union.fjes_device_command_res*, i32, i32) #1

declare dso_local i32 @fjes_hw_issue_request_command(%struct.fjes_hw*, i32) #1

declare dso_local i32 @trace_fjes_hw_request_info(%struct.fjes_hw*, %union.fjes_device_command_res*) #1

declare dso_local i64 @FJES_DEV_COMMAND_INFO_RES_LEN(i32) #1

declare dso_local i32 @trace_fjes_hw_request_info_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
