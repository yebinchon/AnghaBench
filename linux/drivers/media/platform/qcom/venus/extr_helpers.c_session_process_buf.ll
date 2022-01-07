; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_session_process_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_session_process_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.vb2_buffer }
%struct.vb2_buffer = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.venus_buffer = type { i32, i32 }
%struct.hfi_frame_data = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@HFI_BUFFER_INPUT = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@HFI_BUFFERFLAG_EOS = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_DEC = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_ENC = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, %struct.vb2_v4l2_buffer*)* @session_process_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_process_buf(%struct.venus_inst* %0, %struct.vb2_v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.venus_buffer*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi_frame_data, align 8
  %10 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  %11 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %12 = call %struct.venus_buffer* @to_venus_buffer(%struct.vb2_v4l2_buffer* %11)
  store %struct.venus_buffer* %12, %struct.venus_buffer** %6, align 8
  %13 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %13, i32 0, i32 1
  store %struct.vb2_buffer* %14, %struct.vb2_buffer** %7, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = call i32 @memset(%struct.hfi_frame_data* %9, i32 0, i32 40)
  %19 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 7
  store i32 %21, i32* %22, align 4
  %23 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 6
  store i32 %25, i32* %26, align 8
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NSEC_PER_USEC, align 4
  %34 = call i32 @do_div(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %2
  %45 = load i32, i32* @HFI_BUFFER_INPUT, align 4
  %46 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %48 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %47, i32 0)
  %49 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63, %44
  %68 = load i32, i32* @HFI_BUFFERFLAG_EOS, align 4
  %69 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %74 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VIDC_SESSION_TYPE_DEC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %80 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %81 = call i32 @put_ts_metadata(%struct.venus_inst* %79, %struct.vb2_v4l2_buffer* %80)
  br label %82

82:                                               ; preds = %78, %72
  br label %105

83:                                               ; preds = %2
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %89 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VIDC_SESSION_TYPE_ENC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %95 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %98 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %93
  %102 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %83
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %107 = call i32 @hfi_session_process_buf(%struct.venus_inst* %106, %struct.hfi_frame_data* %9)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.venus_buffer* @to_venus_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @memset(%struct.hfi_frame_data*, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @put_ts_metadata(%struct.venus_inst*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @hfi_session_process_buf(%struct.venus_inst*, %struct.hfi_frame_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
