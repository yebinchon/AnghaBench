; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_decoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_decoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_decoder_cmd = type { i64 }
%struct.venus_inst = type { i64, i32, i64, i64 }
%struct.hfi_frame_data = type { i32, i32, i32, i32 }

@V4L2_DEC_CMD_STOP = common dso_local global i64 0, align 8
@HFI_BUFFER_INPUT = common dso_local global i32 0, align 4
@HFI_BUFFERFLAG_EOS = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_DECODING = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_DRAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)* @vdec_decoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_decoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_decoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_decoder_cmd*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.hfi_frame_data, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_decoder_cmd* %2, %struct.v4l2_decoder_cmd** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.venus_inst* @to_inst(%struct.file* %11)
  store %struct.venus_inst* %12, %struct.venus_inst** %8, align 8
  %13 = bitcast %struct.hfi_frame_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %17 = call i32 @v4l2_m2m_ioctl_try_decoder_cmd(%struct.file* %14, i8* %15, %struct.v4l2_decoder_cmd* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %24 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_DEC_CMD_STOP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %22
  %32 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %33 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %38 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %31
  br label %66

42:                                               ; preds = %36
  %43 = load i32, i32* @HFI_BUFFER_INPUT, align 4
  %44 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @HFI_BUFFERFLAG_EOS, align 4
  %46 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %9, i32 0, i32 0
  store i32 -559042560, i32* %49, align 4
  %50 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %51 = call i32 @hfi_session_process_buf(%struct.venus_inst* %50, %struct.hfi_frame_data* %9)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %42
  %55 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %56 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VENUS_DEC_STATE_DECODING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* @VENUS_DEC_STATE_DRAIN, align 8
  %62 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %63 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54, %42
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %68 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(%struct.file*, i8*, %struct.v4l2_decoder_cmd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfi_session_process_buf(%struct.venus_inst*, %struct.hfi_frame_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
