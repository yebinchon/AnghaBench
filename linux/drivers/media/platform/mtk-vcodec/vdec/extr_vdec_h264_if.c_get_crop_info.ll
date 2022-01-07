; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_get_crop_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_get_crop_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"l=%d, t=%d, w=%d, h=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_h264_inst*, %struct.v4l2_rect*)* @get_crop_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_crop_info(%struct.vdec_h264_inst* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.vdec_h264_inst*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %5 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %6 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %14 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %22 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %30 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mtk_vcodec_debug(%struct.vdec_h264_inst* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_h264_inst*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
