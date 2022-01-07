; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-wm8775.c_pvr2_wm8775_subdev_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-wm8775.c_pvr2_wm8775_subdev_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64, i64 }
%struct.v4l2_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)* }

@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"subdev wm8775 set_input(val=%d route=0x%x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_wm8775_subdev_update(%struct.pvr2_hdw* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %4, align 8
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10, %2
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %20 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %21

20:                                               ; preds = %15
  store i32 2, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pvr2_trace(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)** %33, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 %34(%struct.v4l2_subdev* %35, i32 %36, i32 0, i32 0)
  br label %38

38:                                               ; preds = %21, %10
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
