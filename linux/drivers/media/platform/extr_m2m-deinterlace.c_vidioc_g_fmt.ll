; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_vidioc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_vidioc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinterlace_ctx = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.deinterlace_q_data = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.deinterlace_ctx*, %struct.v4l2_format*)* @vidioc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt(%struct.deinterlace_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.deinterlace_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.deinterlace_q_data*, align 8
  store %struct.deinterlace_ctx* %0, %struct.deinterlace_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %8 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %11, i32 %14)
  store %struct.vb2_queue* %15, %struct.vb2_queue** %6, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %17 = icmp ne %struct.vb2_queue* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.deinterlace_q_data* @get_q_data(i32 %24)
  store %struct.deinterlace_q_data* %25, %struct.deinterlace_q_data** %7, align 8
  %26 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %27 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %34 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  store i32 %35, i32* %39, align 4
  %40 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %41 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  store i32 %42, i32* %46, align 4
  %47 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %48 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %57 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %72 [
    i32 129, label %61
    i32 128, label %71
  ]

61:                                               ; preds = %21
  %62 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %63 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 3
  %66 = sdiv i32 %65, 2
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %66, i32* %70, align 4
  br label %81

71:                                               ; preds = %21
  br label %72

72:                                               ; preds = %21, %71
  %73 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %74 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 2
  %77 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %61
  %82 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %7, align 8
  %83 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store i32 %84, i32* %88, align 4
  %89 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %81, %18
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.deinterlace_q_data* @get_q_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
