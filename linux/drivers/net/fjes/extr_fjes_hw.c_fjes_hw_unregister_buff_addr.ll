; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_unregister_buff_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_unregister_buff_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.fjes_device_shared_info*, %union.fjes_device_command_res*, %union.fjes_device_command_res* }
%struct.fjes_device_shared_info = type { i32 }
%union.fjes_device_command_res = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%union.fjes_device_command_req = type { %struct.TYPE_3__ }

@EPERM = common dso_local global i32 0, align 4
@FJES_DEV_COMMAND_UNSHARE_BUFFER_REQ_LEN = common dso_local global i64 0, align 8
@FJES_CMD_REQ_UNSHARE_BUFFER = common dso_local global i32 0, align 4
@FJES_COMMAND_REQ_BUFF_TIMEOUT = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_NORMAL = common dso_local global i32 0, align 4
@FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid res_buf\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Busy Timeout\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_unregister_buff_addr(%struct.fjes_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fjes_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.fjes_device_command_req*, align 8
  %7 = alloca %union.fjes_device_command_res*, align 8
  %8 = alloca %struct.fjes_device_shared_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %13 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %14, align 8
  %16 = bitcast %union.fjes_device_command_res* %15 to %union.fjes_device_command_req*
  store %union.fjes_device_command_req* %16, %union.fjes_device_command_req** %6, align 8
  %17 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %18 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %19, align 8
  store %union.fjes_device_command_res* %20, %union.fjes_device_command_res** %7, align 8
  %21 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %22 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load %struct.fjes_device_shared_info*, %struct.fjes_device_shared_info** %23, align 8
  store %struct.fjes_device_shared_info* %24, %struct.fjes_device_shared_info** %8, align 8
  %25 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %26 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %187

32:                                               ; preds = %2
  %33 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %6, align 8
  %34 = icmp ne %union.fjes_device_command_req* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %37 = icmp ne %union.fjes_device_command_res* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.fjes_device_shared_info*, %struct.fjes_device_shared_info** %8, align 8
  %40 = icmp ne %struct.fjes_device_shared_info* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %35, %32
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %187

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %47 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @test_bit(i32 %45, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %187

52:                                               ; preds = %44
  %53 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %6, align 8
  %54 = bitcast %union.fjes_device_command_req* %53 to %union.fjes_device_command_res*
  %55 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %56 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memset(%union.fjes_device_command_res* %54, i32 0, i32 %58)
  %60 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %61 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %62 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(%union.fjes_device_command_res* %60, i32 0, i32 %64)
  %66 = load i64, i64* @FJES_DEV_COMMAND_UNSHARE_BUFFER_REQ_LEN, align 8
  %67 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %6, align 8
  %68 = bitcast %union.fjes_device_command_req* %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %6, align 8
  %72 = bitcast %union.fjes_device_command_req* %71 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %75 = bitcast %union.fjes_device_command_res* %74 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %78 = bitcast %union.fjes_device_command_res* %77 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %6, align 8
  %81 = bitcast %union.fjes_device_command_req* %80 to %union.fjes_device_command_res*
  %82 = call i32 @trace_fjes_hw_unregister_buff_addr_req(%union.fjes_device_command_res* %81)
  %83 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %84 = load i32, i32* @FJES_CMD_REQ_UNSHARE_BUFFER, align 4
  %85 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @FJES_COMMAND_REQ_BUFF_TIMEOUT, align 4
  %87 = mul nsw i32 %86, 1000
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %110, %52
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %94 = bitcast %union.fjes_device_command_res* %93 to %struct.TYPE_3__*
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %101 = bitcast %union.fjes_device_command_res* %100 to %struct.TYPE_3__*
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 133
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 0
  br label %108

108:                                              ; preds = %105, %99, %92, %88
  %109 = phi i1 [ false, %99 ], [ false, %92 ], [ false, %88 ], [ %107, %105 ]
  br i1 %109, label %110, label %133

110:                                              ; preds = %108
  %111 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %112 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %113, 20
  %115 = add nsw i32 200, %114
  %116 = call i32 @msleep(i32 %115)
  %117 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %118 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 20
  %121 = add nsw i32 200, %120
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %125 = bitcast %union.fjes_device_command_res* %124 to %struct.TYPE_3__*
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %128 = bitcast %union.fjes_device_command_res* %127 to %struct.TYPE_3__*
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  store i32 0, i32* %129, align 4
  %130 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %131 = load i32, i32* @FJES_CMD_REQ_UNSHARE_BUFFER, align 4
  %132 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  br label %88

133:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  %134 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @trace_fjes_hw_unregister_buff_addr(%union.fjes_device_command_res* %134, i32 %135)
  %137 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %138 = bitcast %union.fjes_device_command_res* %137 to %struct.TYPE_3__*
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = call i32 @trace_fjes_hw_unregister_buff_addr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %145 = load i32, i32* @ENOMSG, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %11, align 4
  br label %185

147:                                              ; preds = %133
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %7, align 8
  %153 = bitcast %union.fjes_device_command_res* %152 to %struct.TYPE_3__*
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %166 [
    i32 132, label %156
    i32 133, label %162
  ]

156:                                              ; preds = %151
  store i32 0, i32* %11, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %159 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @clear_bit(i32 %157, i32* %160)
  br label %169

162:                                              ; preds = %151
  %163 = call i32 @trace_fjes_hw_unregister_buff_addr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* @EBUSY, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %11, align 4
  br label %169

166:                                              ; preds = %151
  %167 = load i32, i32* @EPERM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %166, %162, %156
  br label %184

170:                                              ; preds = %147
  %171 = load i32, i32* %9, align 4
  switch i32 %171, label %180 [
    i32 128, label %172
    i32 129, label %175
    i32 131, label %179
    i32 130, label %179
  ]

172:                                              ; preds = %170
  %173 = load i32, i32* @EPERM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %11, align 4
  br label %183

175:                                              ; preds = %170
  %176 = call i32 @trace_fjes_hw_unregister_buff_addr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i32, i32* @EBUSY, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %11, align 4
  br label %183

179:                                              ; preds = %170, %170
  br label %180

180:                                              ; preds = %170, %179
  %181 = load i32, i32* @EPERM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %180, %175, %172
  br label %184

184:                                              ; preds = %183, %169
  br label %185

185:                                              ; preds = %184, %143
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %51, %41, %29
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%union.fjes_device_command_res*, i32, i32) #1

declare dso_local i32 @trace_fjes_hw_unregister_buff_addr_req(%union.fjes_device_command_res*) #1

declare dso_local i32 @fjes_hw_issue_request_command(%struct.fjes_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @trace_fjes_hw_unregister_buff_addr(%union.fjes_device_command_res*, i32) #1

declare dso_local i32 @trace_fjes_hw_unregister_buff_addr_err(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
