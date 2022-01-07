; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_new_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_new_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.v4l2_window = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vout_new_format(%struct.v4l2_pix_format* %0, %struct.v4l2_framebuffer* %1, %struct.v4l2_rect* %2, %struct.v4l2_window* %3) #0 {
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca %struct.v4l2_window*, align 8
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %5, align 8
  store %struct.v4l2_framebuffer* %1, %struct.v4l2_framebuffer** %6, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %7, align 8
  store %struct.v4l2_window* %3, %struct.v4l2_window** %8, align 8
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %10 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %11 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %12 = call i32 @omap_vout_default_crop(%struct.v4l2_pix_format* %9, %struct.v4l2_framebuffer* %10, %struct.v4l2_rect* %11)
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %30 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %28, %32
  %34 = ashr i32 %33, 1
  %35 = and i32 %34, -2
  %36 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %42, %46
  %48 = ashr i32 %47, 1
  %49 = and i32 %48, -2
  %50 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  ret void
}

declare dso_local i32 @omap_vout_default_crop(%struct.v4l2_pix_format*, %struct.v4l2_framebuffer*, %struct.v4l2_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
