; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pvr2_ctrl = type { i32 }

@PVR2_CID_HRES = common dso_local global i32 0, align 4
@PVR2_CID_VRES = common dso_local global i32 0, align 4
@pvr_format = common dso_local global i32* null, align 8
@PVR_FORMAT_PIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pvr2_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.pvr2_v4l2_fh*, align 8
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pvr2_ctrl*, align 8
  %13 = alloca %struct.pvr2_ctrl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %17, align 8
  store %struct.pvr2_v4l2_fh* %18, %struct.pvr2_v4l2_fh** %7, align 8
  %19 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %20 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %23, align 8
  store %struct.pvr2_hdw* %24, %struct.pvr2_hdw** %8, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %36 = load i32, i32* @PVR2_CID_HRES, align 4
  %37 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %35, i32 %36)
  store %struct.pvr2_ctrl* %37, %struct.pvr2_ctrl** %12, align 8
  %38 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %39 = load i32, i32* @PVR2_CID_VRES, align 4
  %40 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %38, i32 %39)
  store %struct.pvr2_ctrl* %40, %struct.pvr2_ctrl** %13, align 8
  %41 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %12, align 8
  %42 = call i32 @pvr2_ctrl_get_min(%struct.pvr2_ctrl* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %12, align 8
  %44 = call i32 @pvr2_ctrl_get_max(%struct.pvr2_ctrl* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %12, align 8
  %46 = call i32 @pvr2_ctrl_get_def(%struct.pvr2_ctrl* %45, i32* %11)
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %15, align 4
  br label %65

51:                                               ; preds = %3
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %15, align 4
  br label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %13, align 8
  %67 = call i32 @pvr2_ctrl_get_min(%struct.pvr2_ctrl* %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %13, align 8
  %69 = call i32 @pvr2_ctrl_get_max(%struct.pvr2_ctrl* %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %13, align 8
  %71 = call i32 @pvr2_ctrl_get_def(%struct.pvr2_ctrl* %70, i32* %11)
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %14, align 4
  br label %90

76:                                               ; preds = %65
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %14, align 4
  br label %89

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %92 = load i32*, i32** @pvr_format, align 8
  %93 = load i64, i64* @PVR_FORMAT_PIX, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @memcpy(%struct.v4l2_format* %91, i32* %94, i32 8)
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %98 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 4
  ret i32 0
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_min(%struct.pvr2_ctrl*) #1

declare dso_local i32 @pvr2_ctrl_get_max(%struct.pvr2_ctrl*) #1

declare dso_local i32 @pvr2_ctrl_get_def(%struct.pvr2_ctrl*, i32*) #1

declare dso_local i32 @memcpy(%struct.v4l2_format*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
