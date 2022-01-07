; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_try_fmt_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_try_fmt_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_format = type { i32 }
%struct.venus_inst = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i64, i8*, i8*, i32, i64, i32, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i8*, i8*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.venus_format* (%struct.venus_inst*, %struct.v4l2_format*)* @venc_try_fmt_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.venus_format* @venc_try_fmt_common(%struct.venus_inst* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.venus_format*, align 8
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.v4l2_plane_pix_format*, align 8
  %8 = alloca %struct.venus_format*, align 8
  %9 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %12, %struct.v4l2_pix_format_mplane** %6, align 8
  %13 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %13, i32 0, i32 7
  %15 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  store %struct.v4l2_plane_pix_format* %15, %struct.v4l2_plane_pix_format** %7, align 8
  %16 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %16, i64 0
  %18 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memset(i32 %19, i32 0, i32 4)
  %21 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %26 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.venus_format* @find_format(%struct.venus_inst* %25, i32 %28, i32 %31)
  store %struct.venus_format* %32, %struct.venus_format** %8, align 8
  %33 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %34 = icmp ne %struct.venus_format* %33, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %2
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @V4L2_PIX_FMT_H264, align 4
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %57

45:                                               ; preds = %35
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %56

55:                                               ; preds = %45
  store %struct.venus_format* null, %struct.venus_format** %3, align 8
  br label %169

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.venus_format* @find_format(%struct.venus_inst* %58, i32 %61, i32 %64)
  store %struct.venus_format* %65, %struct.venus_format** %8, align 8
  br label %66

66:                                               ; preds = %57, %2
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %71 = call i32 @frame_width_min(%struct.venus_inst* %70)
  %72 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %73 = call i32 @frame_width_max(%struct.venus_inst* %72)
  %74 = call i8* @clamp(i8* %69, i32 %71, i32 %73)
  %75 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %81 = call i32 @frame_height_min(%struct.venus_inst* %80)
  %82 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %83 = call i32 @frame_height_max(%struct.venus_inst* %82)
  %84 = call i8* @clamp(i8* %79, i32 %81, i32 %83)
  %85 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %66
  %93 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @ALIGN(i8* %95, i32 32)
  %97 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %92, %66
  %100 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @ALIGN(i8* %102, i32 2)
  %104 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @ALIGN(i8* %108, i32 2)
  %110 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %99
  %118 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %119 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %99
  %122 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %123 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %133 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @venus_helper_get_framesz(i32 %131, i8* %134, i8* %137)
  store i32 %138, i32* %9, align 4
  %139 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %140 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %139, i64 0
  %141 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @SZ_4K, align 4
  %144 = call i8* @ALIGN(i8* %142, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = call i8* @max(i8* %144, i32 %145)
  %147 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %147, i64 0
  %149 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %148, i32 0, i32 1
  store i8* %146, i8** %149, align 8
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %121
  %156 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %157 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @ALIGN(i8* %158, i32 128)
  %160 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %161 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %160, i64 0
  %162 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  br label %167

163:                                              ; preds = %121
  %164 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %165 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %164, i64 0
  %166 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %165, i32 0, i32 0
  store i8* null, i8** %166, align 8
  br label %167

167:                                              ; preds = %163, %155
  %168 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  store %struct.venus_format* %168, %struct.venus_format** %3, align 8
  br label %169

169:                                              ; preds = %167, %55
  %170 = load %struct.venus_format*, %struct.venus_format** %3, align 8
  ret %struct.venus_format* %170
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.venus_format* @find_format(%struct.venus_inst*, i32, i32) #1

declare dso_local i8* @clamp(i8*, i32, i32) #1

declare dso_local i32 @frame_width_min(%struct.venus_inst*) #1

declare dso_local i32 @frame_width_max(%struct.venus_inst*) #1

declare dso_local i32 @frame_height_min(%struct.venus_inst*) #1

declare dso_local i32 @frame_height_max(%struct.venus_inst*) #1

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @venus_helper_get_framesz(i32, i8*, i8*) #1

declare dso_local i8* @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
