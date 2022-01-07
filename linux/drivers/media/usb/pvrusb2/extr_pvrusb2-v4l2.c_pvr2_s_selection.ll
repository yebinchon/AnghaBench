; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_selection = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PVR2_CID_CROPL = common dso_local global i32 0, align 4
@PVR2_CID_CROPT = common dso_local global i32 0, align 4
@PVR2_CID_CROPW = common dso_local global i32 0, align 4
@PVR2_CID_CROPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @pvr2_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %12, align 8
  store %struct.pvr2_v4l2_fh* %13, %struct.pvr2_v4l2_fh** %8, align 8
  %14 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %15 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %18, align 8
  store %struct.pvr2_hdw* %19, %struct.pvr2_hdw** %9, align 8
  %20 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %83

34:                                               ; preds = %25
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %36 = load i32, i32* @PVR2_CID_CROPL, align 4
  %37 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %35, i32 %36)
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pvr2_ctrl_set_value(i32 %37, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %79

46:                                               ; preds = %34
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %48 = load i32, i32* @PVR2_CID_CROPT, align 4
  %49 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %47, i32 %48)
  %50 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pvr2_ctrl_set_value(i32 %49, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %79

58:                                               ; preds = %46
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %60 = load i32, i32* @PVR2_CID_CROPW, align 4
  %61 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %59, i32 %60)
  %62 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pvr2_ctrl_set_value(i32 %61, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %79

70:                                               ; preds = %58
  %71 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %72 = load i32, i32* @PVR2_CID_CROPH, align 4
  %73 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %71, i32 %72)
  %74 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pvr2_ctrl_set_value(i32 %73, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %70, %69, %57, %45
  %80 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %81 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %31
  %84 = load i32, i32* %4, align 4
  ret i32 %84
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
