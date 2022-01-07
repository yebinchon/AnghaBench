; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_stop_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_stop_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %union.fjes_device_command_res*, %union.fjes_device_command_res* }
%union.fjes_device_command_res = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%union.fjes_device_command_req = type { %struct.TYPE_4__ }

@EPERM = common dso_local global i32 0, align 4
@FJES_DEV_COMMAND_STOP_DBG_REQ_LEN = common dso_local global i64 0, align 8
@FJES_CMD_REQ_STOP_DEBUG = common dso_local global i32 0, align 4
@FJES_DEV_COMMAND_STOP_DBG_RES_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid res_buf\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_NORMAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Busy Timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_stop_debug(%struct.fjes_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fjes_hw*, align 8
  %4 = alloca %union.fjes_device_command_req*, align 8
  %5 = alloca %union.fjes_device_command_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %3, align 8
  %8 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %9 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %10, align 8
  %12 = bitcast %union.fjes_device_command_res* %11 to %union.fjes_device_command_req*
  store %union.fjes_device_command_req* %12, %union.fjes_device_command_req** %4, align 8
  %13 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %14 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %15, align 8
  store %union.fjes_device_command_res* %16, %union.fjes_device_command_res** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %18 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %1
  %26 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %27 = bitcast %union.fjes_device_command_req* %26 to %union.fjes_device_command_res*
  %28 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %29 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(%union.fjes_device_command_res* %27, i32 0, i32 %31)
  %33 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %34 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %35 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(%union.fjes_device_command_res* %33, i32 0, i32 %37)
  %39 = load i64, i64* @FJES_DEV_COMMAND_STOP_DBG_REQ_LEN, align 8
  %40 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %41 = bitcast %union.fjes_device_command_req* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %44 = bitcast %union.fjes_device_command_res* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %47 = bitcast %union.fjes_device_command_res* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %50 = load i32, i32* @FJES_CMD_REQ_STOP_DEBUG, align 4
  %51 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %53 = call i32 @trace_fjes_hw_stop_debug(%union.fjes_device_command_res* %52)
  %54 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %55 = bitcast %union.fjes_device_command_res* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FJES_DEV_COMMAND_STOP_DBG_RES_LEN, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %25
  %61 = call i32 @trace_fjes_hw_stop_debug_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOMSG, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %95

64:                                               ; preds = %25
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %70 = bitcast %union.fjes_device_command_res* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %76 [
    i32 132, label %73
  ]

73:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  %74 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %75 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %94

80:                                               ; preds = %64
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %90 [
    i32 128, label %82
    i32 129, label %85
    i32 131, label %89
    i32 130, label %89
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %93

85:                                               ; preds = %80
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  %88 = call i32 @trace_fjes_hw_stop_debug_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %93

89:                                               ; preds = %80, %80
  br label %90

90:                                               ; preds = %80, %89
  %91 = load i32, i32* @EPERM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %85, %82
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %60
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %22
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%union.fjes_device_command_res*, i32, i32) #1

declare dso_local i32 @fjes_hw_issue_request_command(%struct.fjes_hw*, i32) #1

declare dso_local i32 @trace_fjes_hw_stop_debug(%union.fjes_device_command_res*) #1

declare dso_local i32 @trace_fjes_hw_stop_debug_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
