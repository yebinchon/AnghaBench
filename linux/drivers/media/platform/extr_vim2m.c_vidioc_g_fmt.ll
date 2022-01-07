; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vim2m_ctx = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.vim2m_q_data = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vim2m_ctx*, %struct.v4l2_format*)* @vidioc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt(%struct.vim2m_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vim2m_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.vim2m_q_data*, align 8
  store %struct.vim2m_ctx* %0, %struct.vim2m_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %8 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %8, i32 0, i32 4
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
  br label %110

21:                                               ; preds = %2
  %22 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx* %22, i32 %25)
  store %struct.vim2m_q_data* %26, %struct.vim2m_q_data** %7, align 8
  %27 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %28 = icmp ne %struct.vim2m_q_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %110

32:                                               ; preds = %21
  %33 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %34 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %41 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 9
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 8
  store i32 %47, i32* %51, align 4
  %52 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %53 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 7
  store i32 %56, i32* %60, align 4
  %61 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %62 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %65 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %63, %68
  %70 = ashr i32 %69, 3
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %76 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 6
  store i32 %77, i32* %81, align 4
  %82 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  store i32 %84, i32* %88, align 4
  %89 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store i32 %91, i32* %95, align 4
  %96 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 4
  %103 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 4
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %32, %29, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
