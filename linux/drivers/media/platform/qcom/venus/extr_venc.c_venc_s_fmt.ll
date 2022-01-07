; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_4__*, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.venus_inst = type { i32, %struct.venus_format*, %struct.venus_format*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venus_format = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @venc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane, align 8
  %11 = alloca %struct.venus_format*, align 8
  %12 = alloca %struct.v4l2_format, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.venus_inst* @to_inst(%struct.file* %15)
  store %struct.venus_inst* %16, %struct.venus_inst** %8, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %19, %struct.v4l2_pix_format_mplane** %9, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %21 = bitcast %struct.v4l2_pix_format_mplane* %10 to i8*
  %22 = bitcast %struct.v4l2_pix_format_mplane* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 40, i1 false)
  %23 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = call %struct.venus_format* @venc_try_fmt_common(%struct.venus_inst* %23, %struct.v4l2_format* %24)
  store %struct.venus_format* %25, %struct.venus_format** %11, align 8
  %26 = load %struct.venus_format*, %struct.venus_format** %11, align 8
  %27 = icmp ne %struct.venus_format* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %181

31:                                               ; preds = %3
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %13, align 8
  %41 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %42 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %41, i32 0, i32 1
  %43 = load %struct.venus_format*, %struct.venus_format** %42, align 8
  %44 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  br label %62

46:                                               ; preds = %31
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %14, align 8
  %56 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %57 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %56, i32 0, i32 2
  %58 = load %struct.venus_format*, %struct.venus_format** %57, align 8
  %59 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %52, %46
  br label %62

62:                                               ; preds = %61, %37
  %63 = call i32 @memset(%struct.v4l2_format* %12, i32 0, i32 48)
  %64 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 3
  store i8* %66, i8** %69, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %10, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %81 = call %struct.venus_format* @venc_try_fmt_common(%struct.venus_inst* %80, %struct.v4l2_format* %12)
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %62
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %93 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %99 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 8
  %100 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %104 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %109 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  %110 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %114 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %119 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %87, %62
  %121 = call i32 @memset(%struct.v4l2_format* %12, i32 0, i32 48)
  %122 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  store i64 %122, i64* %123, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %126, i32 0, i32 3
  store i8* %124, i8** %127, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %10, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %10, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %139 = call %struct.venus_format* @venc_try_fmt_common(%struct.venus_inst* %138, %struct.v4l2_format* %12)
  %140 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %145 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %151 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %153 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %120
  %158 = load %struct.venus_format*, %struct.venus_format** %11, align 8
  %159 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %160 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %159, i32 0, i32 2
  store %struct.venus_format* %158, %struct.venus_format** %160, align 8
  br label %180

161:                                              ; preds = %120
  %162 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %163 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.venus_format*, %struct.venus_format** %11, align 8
  %169 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %170 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %169, i32 0, i32 1
  store %struct.venus_format* %168, %struct.venus_format** %170, align 8
  %171 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %172 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %178 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %167, %161
  br label %180

180:                                              ; preds = %179, %157
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %28
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.venus_format* @venc_try_fmt_common(%struct.venus_inst*, %struct.v4l2_format*) #1

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
