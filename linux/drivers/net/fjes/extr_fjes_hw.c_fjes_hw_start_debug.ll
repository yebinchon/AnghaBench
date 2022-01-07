; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_start_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_start_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %union.fjes_device_command_res*, i32, i32, %union.fjes_device_command_res*, %union.fjes_device_command_res* }
%union.fjes_device_command_res = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i64*, i32 }
%union.fjes_device_command_req = type { %struct.TYPE_4__ }

@EPERM = common dso_local global i32 0, align 4
@FJES_DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4
@FJES_DEBUG_PAGE_SIZE = common dso_local global i32 0, align 4
@FJES_CMD_REQ_START_DEBUG = common dso_local global i32 0, align 4
@FJES_DEV_COMMAND_START_DBG_RES_LEN = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid res_buf\00", align 1
@FJES_CMD_STATUS_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Busy Timeout\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_start_debug(%struct.fjes_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fjes_hw*, align 8
  %4 = alloca %union.fjes_device_command_req*, align 8
  %5 = alloca %union.fjes_device_command_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %3, align 8
  %11 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %12 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %13, align 8
  %15 = bitcast %union.fjes_device_command_res* %14 to %union.fjes_device_command_req*
  store %union.fjes_device_command_req* %15, %union.fjes_device_command_req** %4, align 8
  %16 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %17 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %18, align 8
  store %union.fjes_device_command_res* %19, %union.fjes_device_command_res** %5, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %21 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %22, align 8
  %24 = icmp ne %union.fjes_device_command_res* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %163

28:                                               ; preds = %1
  %29 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %30 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %31, align 8
  %33 = load i32, i32* @FJES_DEBUG_BUFFER_SIZE, align 4
  %34 = call i32 @memset(%union.fjes_device_command_res* %32, i32 0, i32 %33)
  %35 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %36 = bitcast %union.fjes_device_command_req* %35 to %union.fjes_device_command_res*
  %37 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %38 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(%union.fjes_device_command_res* %36, i32 0, i32 %40)
  %42 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %43 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %44 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memset(%union.fjes_device_command_res* %42, i32 0, i32 %46)
  %48 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %49 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @FJES_DEV_COMMAND_START_DBG_REQ_LEN(i32 %51)
  %53 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %54 = bitcast %union.fjes_device_command_req* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %57 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %60 = bitcast %union.fjes_device_command_req* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %63 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %67 = bitcast %union.fjes_device_command_req* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %70 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FJES_DEBUG_PAGE_SIZE, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %104, %28
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %81 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %82, align 8
  %84 = bitcast %union.fjes_device_command_res* %83 to i32*
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @FJES_DEBUG_PAGE_SIZE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = bitcast i32* %89 to i8*
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @vmalloc_to_page(i8* %91)
  %93 = call i64 @page_to_phys(i32 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @offset_in_page(i8* %94)
  %96 = add nsw i64 %93, %95
  %97 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %98 = bitcast %union.fjes_device_command_req* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %96, i64* %103, align 8
  br label %104

104:                                              ; preds = %79
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %75

107:                                              ; preds = %75
  %108 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %109 = bitcast %union.fjes_device_command_res* %108 to %struct.TYPE_4__*
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %112 = bitcast %union.fjes_device_command_res* %111 to %struct.TYPE_4__*
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32 0, i32* %113, align 4
  %114 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %4, align 8
  %115 = bitcast %union.fjes_device_command_req* %114 to %union.fjes_device_command_res*
  %116 = call i32 @trace_fjes_hw_start_debug_req(%union.fjes_device_command_res* %115)
  %117 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %118 = load i32, i32* @FJES_CMD_REQ_START_DEBUG, align 4
  %119 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %121 = call i32 @trace_fjes_hw_start_debug(%union.fjes_device_command_res* %120)
  %122 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %123 = bitcast %union.fjes_device_command_res* %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FJES_DEV_COMMAND_START_DBG_RES_LEN, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %107
  %129 = load i32, i32* @ENOMSG, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  %131 = call i32 @trace_fjes_hw_start_debug_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %161

132:                                              ; preds = %107
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %5, align 8
  %138 = bitcast %union.fjes_device_command_res* %137 to %struct.TYPE_4__*
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %142 [
    i32 132, label %141
  ]

141:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  br label %145

142:                                              ; preds = %136
  %143 = load i32, i32* @EPERM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %141
  br label %160

146:                                              ; preds = %132
  %147 = load i32, i32* %6, align 4
  switch i32 %147, label %156 [
    i32 128, label %148
    i32 129, label %151
    i32 131, label %155
    i32 130, label %155
  ]

148:                                              ; preds = %146
  %149 = load i32, i32* @EPERM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %8, align 4
  br label %159

151:                                              ; preds = %146
  %152 = call i32 @trace_fjes_hw_start_debug_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @EBUSY, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %159

155:                                              ; preds = %146, %146
  br label %156

156:                                              ; preds = %146, %155
  %157 = load i32, i32* @EPERM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %151, %148
  br label %160

160:                                              ; preds = %159, %145
  br label %161

161:                                              ; preds = %160, %128
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %25
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @memset(%union.fjes_device_command_res*, i32, i32) #1

declare dso_local i64 @FJES_DEV_COMMAND_START_DBG_REQ_LEN(i32) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i32 @trace_fjes_hw_start_debug_req(%union.fjes_device_command_res*) #1

declare dso_local i32 @fjes_hw_issue_request_command(%struct.fjes_hw*, i32) #1

declare dso_local i32 @trace_fjes_hw_start_debug(%union.fjes_device_command_res*) #1

declare dso_local i32 @trace_fjes_hw_start_debug_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
