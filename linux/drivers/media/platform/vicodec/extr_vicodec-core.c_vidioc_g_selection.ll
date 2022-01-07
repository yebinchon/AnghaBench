; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.vicodec_ctx = type { i64 }
%struct.vicodec_q_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vicodec_ctx*, align 8
  %9 = alloca %struct.vicodec_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vicodec_ctx* @file2ctx(%struct.file* %10)
  store %struct.vicodec_ctx* %11, %struct.vicodec_ctx** %8, align 8
  %12 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %12, i32 %15)
  store %struct.vicodec_q_data* %16, %struct.vicodec_q_data** %9, align 8
  %17 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %18 = icmp ne %struct.vicodec_q_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %134

22:                                               ; preds = %3
  %23 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %27
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %75 [
    i32 130, label %37
    i32 128, label %56
    i32 129, label %56
  ]

37:                                               ; preds = %33
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %45 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %51 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %134

56:                                               ; preds = %33, %33
  %57 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %64 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %70 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %134

75:                                               ; preds = %33
  br label %131

76:                                               ; preds = %27, %22
  %77 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %130, label %81

81:                                               ; preds = %76
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %130

87:                                               ; preds = %81
  %88 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %129 [
    i32 133, label %91
    i32 131, label %110
    i32 132, label %110
  ]

91:                                               ; preds = %87
  %92 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 0, i32* %94, align 4
  %95 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 0, i32* %97, align 4
  %98 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %99 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %105 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %134

110:                                              ; preds = %87, %87
  %111 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i32 0, i32* %113, align 4
  %114 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %118 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %124 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  store i32 0, i32* %4, align 4
  br label %134

129:                                              ; preds = %87
  br label %130

130:                                              ; preds = %129, %81, %76
  br label %131

131:                                              ; preds = %130, %75
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %110, %91, %56, %37, %19
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.vicodec_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
