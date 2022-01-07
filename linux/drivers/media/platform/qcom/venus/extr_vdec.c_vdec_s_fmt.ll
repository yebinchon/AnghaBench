; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i8*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.venus_inst = type { %struct.venus_format*, %struct.venus_format*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venus_format = type { i8* }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vdec_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.venus_inst*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane, align 8
  %10 = alloca %struct.venus_format*, align 8
  %11 = alloca %struct.v4l2_format, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call %struct.venus_inst* @to_inst(%struct.file* %14)
  store %struct.venus_inst* %15, %struct.venus_inst** %7, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %18, %struct.v4l2_pix_format_mplane** %8, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %20 = bitcast %struct.v4l2_pix_format_mplane* %9 to i8*
  %21 = bitcast %struct.v4l2_pix_format_mplane* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 40, i1 false)
  %22 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %24 = call %struct.venus_format* @vdec_try_fmt_common(%struct.venus_inst* %22, %struct.v4l2_format* %23)
  store %struct.venus_format* %24, %struct.venus_format** %10, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %35 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %34, i32 0, i32 0
  %36 = load %struct.venus_format*, %struct.venus_format** %35, align 8
  %37 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %13, align 8
  br label %55

39:                                               ; preds = %3
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %13, align 8
  %49 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %50 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %49, i32 0, i32 1
  %51 = load %struct.venus_format*, %struct.venus_format** %50, align 8
  %52 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %45, %39
  br label %55

55:                                               ; preds = %54, %30
  %56 = call i32 @memset(%struct.v4l2_format* %11, i32 0, i32 48)
  %57 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %9, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %74 = call %struct.venus_format* @vdec_try_fmt_common(%struct.venus_inst* %73, %struct.v4l2_format* %11)
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %55
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %86 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %92 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %97 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %102 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %107 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %112 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %120 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %80, %55
  %122 = call i32 @memset(%struct.v4l2_format* %11, i32 0, i32 48)
  %123 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %9, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %9, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %140 = call %struct.venus_format* @vdec_try_fmt_common(%struct.venus_inst* %139, %struct.v4l2_format* %11)
  %141 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %146 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %152 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %154 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %121
  %159 = load %struct.venus_format*, %struct.venus_format** %10, align 8
  %160 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %161 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %160, i32 0, i32 1
  store %struct.venus_format* %159, %struct.venus_format** %161, align 8
  br label %173

162:                                              ; preds = %121
  %163 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %164 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.venus_format*, %struct.venus_format** %10, align 8
  %170 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %171 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %170, i32 0, i32 0
  store %struct.venus_format* %169, %struct.venus_format** %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  br label %173

173:                                              ; preds = %172, %158
  ret i32 0
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.venus_format* @vdec_try_fmt_common(%struct.venus_inst*, %struct.v4l2_format*) #1

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
