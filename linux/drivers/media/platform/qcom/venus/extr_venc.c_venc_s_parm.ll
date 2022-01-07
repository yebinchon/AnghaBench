; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_outputparm }
%struct.v4l2_outputparm = type { i32, i32, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.venus_inst = type { i32, %struct.v4l2_fract }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @venc_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.v4l2_outputparm*, align 8
  %10 = alloca %struct.v4l2_fract*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.venus_inst* @to_inst(%struct.file* %13)
  store %struct.venus_inst* %14, %struct.venus_inst** %8, align 8
  %15 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.v4l2_outputparm* %17, %struct.v4l2_outputparm** %9, align 8
  %18 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %18, i32 0, i32 2
  store %struct.v4l2_fract* %19, %struct.v4l2_fract** %10, align 8
  %20 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %96

34:                                               ; preds = %25, %3
  %35 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32 %37, i32 0, i32 4)
  %39 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %45 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %34
  %51 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %57 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %61 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %64 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %67 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @USEC_PER_SEC, align 8
  %70 = trunc i64 %69 to i32
  %71 = mul nsw i32 %68, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @do_div(i32 %72, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %96

82:                                               ; preds = %62
  %83 = load i64, i64* @USEC_PER_SEC, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @do_div(i32 %85, i32 %86)
  %88 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %89 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %88, i32 0, i32 1
  %90 = load %struct.v4l2_fract*, %struct.v4l2_fract** %10, align 8
  %91 = bitcast %struct.v4l2_fract* %89 to i8*
  %92 = bitcast %struct.v4l2_fract* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %95 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %82, %79, %31
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
