; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.pxp_fmt = type { i32 }

@MIN_W = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@ALIGN_W = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@ALIGN_H = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_format*, %struct.pxp_fmt*)* @pxp_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_try_fmt(%struct.v4l2_format* %0, %struct.pxp_fmt* %1) #0 {
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.pxp_fmt*, align 8
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store %struct.pxp_fmt* %1, %struct.pxp_fmt** %4, align 8
  %5 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* @MIN_W, align 4
  %10 = load i32, i32* @MAX_W, align 4
  %11 = load i32, i32* @ALIGN_W, align 4
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* @MIN_H, align 4
  %17 = load i32, i32* @MAX_H, align 4
  %18 = load i32, i32* @ALIGN_H, align 4
  %19 = call i32 @v4l_bound_align_image(i32* %8, i32 %9, i32 %10, i32 %11, i32* %15, i32 %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.pxp_fmt*, %struct.pxp_fmt** %4, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pxp_bytesperline(%struct.pxp_fmt* %20, i32 %25)
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load %struct.pxp_fmt*, %struct.pxp_fmt** %4, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pxp_sizeimage(%struct.pxp_fmt* %31, i32 %36, i32 %41)
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pxp_bytesperline(%struct.pxp_fmt*, i32) #1

declare dso_local i32 @pxp_sizeimage(%struct.pxp_fmt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
