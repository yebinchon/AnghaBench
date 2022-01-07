; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { %struct.fdp1_q_data }
%struct.fdp1_q_data = type { i32, i32, i32, %struct.v4l2_pix_format_mplane, %struct.fdp1_fmt* }
%struct.v4l2_pix_format_mplane = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fdp1_fmt = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_BT = common dso_local global i64 0, align 8
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.v4l2_pix_format_mplane*, i32)* @fdp1_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_set_format(%struct.fdp1_ctx* %0, %struct.v4l2_pix_format_mplane* %1, i32 %2) #0 {
  %4 = alloca %struct.fdp1_ctx*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdp1_q_data*, align 8
  %8 = alloca %struct.fdp1_fmt*, align 8
  %9 = alloca %struct.fdp1_q_data*, align 8
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %4, align 8
  store %struct.v4l2_pix_format_mplane* %1, %struct.v4l2_pix_format_mplane** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.fdp1_q_data* @get_q_data(%struct.fdp1_ctx* %10, i32 %11)
  store %struct.fdp1_q_data* %12, %struct.fdp1_q_data** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %18 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %19 = call i32 @fdp1_try_fmt_output(%struct.fdp1_ctx* %17, %struct.fdp1_fmt** %8, %struct.v4l2_pix_format_mplane* %18)
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %22 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %23 = call i32 @fdp1_try_fmt_capture(%struct.fdp1_ctx* %21, %struct.fdp1_fmt** %8, %struct.v4l2_pix_format_mplane* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %8, align 8
  %26 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %27 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %26, i32 0, i32 4
  store %struct.fdp1_fmt* %25, %struct.fdp1_fmt** %27, align 8
  %28 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %29 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %28, i32 0, i32 3
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %31 = bitcast %struct.v4l2_pix_format_mplane* %29 to i8*
  %32 = bitcast %struct.v4l2_pix_format_mplane* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %37 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %45 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %24
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %56 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %64 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %48
  %71 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_FIELD_INTERLACED_TB, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76, %70, %48
  %83 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %84 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, i32* %84, align 4
  %87 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %88 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %82, %76
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %155

95:                                               ; preds = %91
  %96 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %96, i32 0, i32 0
  store %struct.fdp1_q_data* %97, %struct.fdp1_q_data** %9, align 8
  %98 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %99 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %98, i32 0, i32 3
  %100 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %101 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %100, i32 0, i32 3
  %102 = bitcast %struct.v4l2_pix_format_mplane* %99 to i8*
  %103 = bitcast %struct.v4l2_pix_format_mplane* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  %104 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %105 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = call i32 @memset(%struct.TYPE_2__* %107, i32 0, i32 8)
  %109 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %110 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %111 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %95
  %119 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %120 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 2
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %95
  %125 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %126 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %127 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %126, i32 0, i32 4
  %128 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %129 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %128, i32 0, i32 3
  %130 = call i32 @fdp1_try_fmt_capture(%struct.fdp1_ctx* %125, %struct.fdp1_fmt** %127, %struct.v4l2_pix_format_mplane* %129)
  %131 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %132 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %136 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %138 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %145 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %147 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %9, align 8
  %154 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %124, %91
  ret void
}

declare dso_local %struct.fdp1_q_data* @get_q_data(%struct.fdp1_ctx*, i32) #1

declare dso_local i32 @fdp1_try_fmt_output(%struct.fdp1_ctx*, %struct.fdp1_fmt**, %struct.v4l2_pix_format_mplane*) #1

declare dso_local i32 @fdp1_try_fmt_capture(%struct.fdp1_ctx*, %struct.fdp1_fmt**, %struct.v4l2_pix_format_mplane*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
