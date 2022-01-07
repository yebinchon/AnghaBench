; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_buffer_mark_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_buffer_mark_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_csi = type { %struct.vb2_v4l2_buffer**, %struct.TYPE_3__, i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Scratch buffer was used, ignoring..\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_csi*, i32, i32)* @sun4i_csi_buffer_mark_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_csi_buffer_mark_done(%struct.sun4i_csi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_csi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.sun4i_csi* %0, %struct.sun4i_csi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %9 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %8, i32 0, i32 0
  %10 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, i64 %12
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %13, align 8
  %15 = icmp ne %struct.vb2_v4l2_buffer* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %18 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %23 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %22, i32 0, i32 0
  %24 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %24, i64 %26
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %27, align 8
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %7, align 8
  %29 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %30 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = call i32 (...) @ktime_get_ns()
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %45 = call i32 @vb2_buffer_done(%struct.TYPE_4__* %43, i32 %44)
  %46 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %47 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %46, i32 0, i32 0
  %48 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %48, i64 %50
  store %struct.vb2_v4l2_buffer* null, %struct.vb2_v4l2_buffer** %51, align 8
  br label %52

52:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
