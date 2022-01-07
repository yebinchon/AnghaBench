; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_try_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_try_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32 }
%struct.pvr2_ctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @pvr2_try_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_try_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.v4l2_ext_control*, align 8
  %11 = alloca %struct.pvr2_ctrl*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %14, align 8
  store %struct.pvr2_v4l2_fh* %15, %struct.pvr2_v4l2_fh** %8, align 8
  %16 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %17 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %20, align 8
  store %struct.pvr2_hdw* %21, %struct.pvr2_hdw** %9, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %49, %3
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 2
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i64 %33
  store %struct.v4l2_ext_control* %34, %struct.v4l2_ext_control** %10, align 8
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %36 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %37 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw* %35, i32 %38)
  store %struct.pvr2_ctrl* %39, %struct.pvr2_ctrl** %11, align 8
  %40 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %11, align 8
  %41 = icmp ne %struct.pvr2_ctrl* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %22

52:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
