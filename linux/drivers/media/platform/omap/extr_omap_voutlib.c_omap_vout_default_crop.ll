; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_default_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_default_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i32, i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vout_default_crop(%struct.v4l2_pix_format* %0, %struct.v4l2_framebuffer* %1, %struct.v4l2_rect* %2) #0 {
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca %struct.v4l2_framebuffer*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %4, align 8
  store %struct.v4l2_framebuffer* %1, %struct.v4l2_framebuffer** %5, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %6, align 8
  %7 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ %18, %15 ], [ %23, %19 ]
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %45

40:                                               ; preds = %24
  %41 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i32 [ %39, %36 ], [ %44, %40 ]
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -2
  store i32 %52, i32* %50, align 4
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -2
  store i32 %56, i32* %54, align 4
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = ashr i32 %63, 1
  %65 = and i32 %64, -2
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = ashr i32 %74, 1
  %76 = and i32 %75, -2
  %77 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
