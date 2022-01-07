; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PVR2_CID_AUDIOMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @pvr2_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %12, align 8
  store %struct.pvr2_v4l2_fh* %13, %struct.pvr2_v4l2_fh** %8, align 8
  %14 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %15 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %18, align 8
  store %struct.pvr2_hdw* %19, %struct.pvr2_hdw** %9, align 8
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %29 = load i32, i32* @PVR2_CID_AUDIOMODE, align 4
  %30 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %28, i32 %29)
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pvr2_ctrl_set_value(i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %36 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @pvr2_ctrl_set_value(i32, i32) #1

declare dso_local i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
