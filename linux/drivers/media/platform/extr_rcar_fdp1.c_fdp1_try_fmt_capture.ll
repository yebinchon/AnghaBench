; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_try_fmt_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_try_fmt_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { %struct.fdp1_q_data }
%struct.fdp1_q_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.fdp1_fmt = type { i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_601 = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_709 = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_LIM_RANGE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.fdp1_fmt**, %struct.v4l2_pix_format_mplane*)* @fdp1_try_fmt_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_try_fmt_capture(%struct.fdp1_ctx* %0, %struct.fdp1_fmt** %1, %struct.v4l2_pix_format_mplane* %2) #0 {
  %4 = alloca %struct.fdp1_ctx*, align 8
  %5 = alloca %struct.fdp1_fmt**, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.fdp1_q_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdp1_fmt*, align 8
  %12 = alloca i32, align 4
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %4, align 8
  store %struct.fdp1_fmt** %1, %struct.fdp1_fmt*** %5, align 8
  store %struct.v4l2_pix_format_mplane* %2, %struct.v4l2_pix_format_mplane** %6, align 8
  %13 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %13, i32 0, i32 0
  store %struct.fdp1_q_data* %14, %struct.fdp1_q_data** %7, align 8
  %15 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %16 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %20 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %31 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 0, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @V4L2_YCBCR_ENC_601, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @V4L2_YCBCR_ENC_709, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @V4L2_QUANTIZATION_LIM_RANGE, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br label %55

55:                                               ; preds = %53, %41
  %56 = phi i1 [ true, %41 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.fdp1_fmt* @fdp1_find_format(i32 %60)
  store %struct.fdp1_fmt* %61, %struct.fdp1_fmt** %11, align 8
  %62 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %63 = icmp ne %struct.fdp1_fmt* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %69 = call i64 @fdp1_fmt_is_rgb(%struct.fdp1_fmt* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %55
  %72 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %73 = call %struct.fdp1_fmt* @fdp1_find_format(i32 %72)
  store %struct.fdp1_fmt* %73, %struct.fdp1_fmt** %11, align 8
  br label %74

74:                                               ; preds = %71, %67, %64
  %75 = load %struct.fdp1_fmt**, %struct.fdp1_fmt*** %5, align 8
  %76 = icmp ne %struct.fdp1_fmt** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %79 = load %struct.fdp1_fmt**, %struct.fdp1_fmt*** %5, align 8
  store %struct.fdp1_fmt* %78, %struct.fdp1_fmt** %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %82 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %87 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %92 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %95 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %101 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %107 = call i64 @fdp1_fmt_is_rgb(%struct.fdp1_fmt* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %80
  %110 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %111 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %114 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %129

116:                                              ; preds = %80
  %117 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %118 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %124 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %109
  %130 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %131 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %137 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %129
  %143 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %144 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 2, %146
  %148 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %149 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  br label %157

150:                                              ; preds = %129
  %151 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %152 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %142
  %158 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %159 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %11, align 8
  %160 = call i32 @fdp1_compute_stride(%struct.v4l2_pix_format_mplane* %158, %struct.fdp1_fmt* %159)
  ret void
}

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i32) #1

declare dso_local %struct.fdp1_fmt* @fdp1_find_format(i32) #1

declare dso_local i64 @fdp1_fmt_is_rgb(%struct.fdp1_fmt*) #1

declare dso_local i32 @fdp1_compute_stride(%struct.v4l2_pix_format_mplane*, %struct.fdp1_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
