; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pvr2_ctrl = type { i32 }

@PVR2_CID_HRES = common dso_local global i32 0, align 4
@PVR2_CID_VRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pvr2_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.pvr2_ctrl*, align 8
  %11 = alloca %struct.pvr2_ctrl*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %14, align 8
  store %struct.pvr2_v4l2_fh* %15, %struct.pvr2_v4l2_fh** %8, align 8
  %16 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %17 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %20, align 8
  store %struct.pvr2_hdw* %21, %struct.pvr2_hdw** %9, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = call i32 @pvr2_try_fmt_vid_cap(%struct.file* %22, %struct.pvr2_v4l2_fh* %23, %struct.v4l2_format* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %32 = load i32, i32* @PVR2_CID_HRES, align 4
  %33 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %31, i32 %32)
  store %struct.pvr2_ctrl* %33, %struct.pvr2_ctrl** %10, align 8
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %35 = load i32, i32* @PVR2_CID_VRES, align 4
  %36 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %34, i32 %35)
  store %struct.pvr2_ctrl* %36, %struct.pvr2_ctrl** %11, align 8
  %37 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %10, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl* %37, i32 %42)
  %44 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %11, align 8
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl* %44, i32 %49)
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %52 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %30, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @pvr2_try_fmt_vid_cap(%struct.file*, %struct.pvr2_v4l2_fh*, %struct.v4l2_format*) #1

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl*, i32) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
