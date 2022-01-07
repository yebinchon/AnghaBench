; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxp_ctx = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.pxp_q_data = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxp_ctx*, %struct.v4l2_format*)* @pxp_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_g_fmt(%struct.pxp_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxp_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.pxp_q_data*, align 8
  store %struct.pxp_ctx* %0, %struct.pxp_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %8 = load %struct.pxp_ctx*, %struct.pxp_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %8, i32 0, i32 2
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
  br label %97

21:                                               ; preds = %2
  %22 = load %struct.pxp_ctx*, %struct.pxp_ctx** %4, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pxp_q_data* @get_q_data(%struct.pxp_ctx* %22, i32 %25)
  store %struct.pxp_q_data* %26, %struct.pxp_q_data** %7, align 8
  %27 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %28 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 9
  store i32 %29, i32* %33, align 4
  %34 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %35 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 7
  store i32 %41, i32* %45, align 4
  %46 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %47 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 6
  store i32 %50, i32* %54, align 4
  %55 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %56 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 5
  store i32 %57, i32* %61, align 4
  %62 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %63 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  store i32 %64, i32* %68, align 4
  %69 = load %struct.pxp_ctx*, %struct.pxp_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store i32 %71, i32* %75, align 4
  %76 = load %struct.pxp_ctx*, %struct.pxp_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %84 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.pxp_q_data*, %struct.pxp_q_data** %7, align 8
  %91 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %21, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.pxp_q_data* @get_q_data(%struct.pxp_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
