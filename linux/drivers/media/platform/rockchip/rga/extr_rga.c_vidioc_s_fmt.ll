; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.rga_ctx = type { %struct.TYPE_5__, %struct.rockchip_rga* }
%struct.TYPE_5__ = type { i32 }
%struct.rockchip_rga = type { i32 }
%struct.vb2_queue = type { i32 }
%struct.rga_frame = type { i32, %struct.TYPE_8__, i32, i32, i32, %struct.rga_fmt*, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.rga_fmt = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"queue (%d) bust\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.rga_ctx*, align 8
  %9 = alloca %struct.rockchip_rga*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.rga_frame*, align 8
  %12 = alloca %struct.rga_fmt*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.rga_ctx*
  store %struct.rga_ctx* %15, %struct.rga_ctx** %8, align 8
  %16 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %16, i32 0, i32 1
  %18 = load %struct.rockchip_rga*, %struct.rockchip_rga** %17, align 8
  store %struct.rockchip_rga* %18, %struct.rockchip_rga** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = call i32 @vidioc_try_fmt(%struct.file* %19, i8* %20, %struct.v4l2_format* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %4, align 4
  br label %125

27:                                               ; preds = %3
  %28 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %31, i32 %34)
  store %struct.vb2_queue* %35, %struct.vb2_queue** %10, align 8
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %37 = call i64 @vb2_is_busy(%struct.vb2_queue* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load %struct.rockchip_rga*, %struct.rockchip_rga** %9, align 8
  %41 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %40, i32 0, i32 0
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l2_err(i32* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %125

48:                                               ; preds = %27
  %49 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.rga_frame* @rga_get_frame(%struct.rga_ctx* %49, i32 %52)
  store %struct.rga_frame* %53, %struct.rga_frame** %11, align 8
  %54 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %55 = call i64 @IS_ERR(%struct.rga_frame* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %59 = call i32 @PTR_ERR(%struct.rga_frame* %58)
  store i32 %59, i32* %4, align 4
  br label %125

60:                                               ; preds = %48
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %62 = call %struct.rga_fmt* @rga_fmt_find(%struct.v4l2_format* %61)
  store %struct.rga_fmt* %62, %struct.rga_fmt** %12, align 8
  %63 = load %struct.rga_fmt*, %struct.rga_fmt** %12, align 8
  %64 = icmp ne %struct.rga_fmt* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %125

68:                                               ; preds = %60
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %75 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %82 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %89 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.rga_fmt*, %struct.rga_fmt** %12, align 8
  %91 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %92 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %91, i32 0, i32 5
  store %struct.rga_fmt* %90, %struct.rga_fmt** %92, align 8
  %93 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %99 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %106 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %108 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %111 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %114 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %117 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %120 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.rga_frame*, %struct.rga_frame** %11, align 8
  %123 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %68, %65, %57, %39, %25
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @vidioc_try_fmt(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local %struct.rga_frame* @rga_get_frame(%struct.rga_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rga_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.rga_frame*) #1

declare dso_local %struct.rga_fmt* @rga_fmt_find(%struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
