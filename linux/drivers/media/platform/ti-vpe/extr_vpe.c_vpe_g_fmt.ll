; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vpe_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_queue = type { i32 }
%struct.vpe_q_data = type { i32, i32*, i32*, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpe_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.vpe_ctx*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.vpe_q_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vpe_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %16, %struct.v4l2_pix_format_mplane** %8, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.vpe_ctx* @file2ctx(%struct.file* %17)
  store %struct.vpe_ctx* %18, %struct.vpe_ctx** %9, align 8
  %19 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %22, i32 %25)
  store %struct.vb2_queue* %26, %struct.vb2_queue** %10, align 8
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %28 = icmp ne %struct.vb2_queue* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %125

32:                                               ; preds = %3
  %33 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %33, i32 %36)
  store %struct.vpe_q_data* %37, %struct.vpe_q_data** %11, align 8
  %38 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %39 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %44 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %49 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %48, i32 0, i32 5
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %56 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %32
  %66 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %67 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %80

71:                                               ; preds = %32
  %72 = load %struct.vpe_ctx*, %struct.vpe_ctx** %9, align 8
  %73 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %74 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %72, i32 %73)
  store %struct.vpe_q_data* %74, %struct.vpe_q_data** %13, align 8
  %75 = load %struct.vpe_q_data*, %struct.vpe_q_data** %13, align 8
  %76 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %71, %65
  %81 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %82 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %121, %80
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %86
  %93 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %94 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %99, i32* %106, align 4
  %107 = load %struct.vpe_q_data*, %struct.vpe_q_data** %11, align 8
  %108 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %86

124:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %29
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.vpe_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
