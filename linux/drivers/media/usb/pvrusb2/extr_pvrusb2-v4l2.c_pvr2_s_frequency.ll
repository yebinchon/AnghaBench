; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_frequency = type { i64, i64 }
%struct.v4l2_tuner = type { i32 }
%struct.pvr2_ctrl = type { i32 }

@PVR2_CID_INPUT = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@PVR2_CVAL_INPUT_RADIO = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_TV = common dso_local global i64 0, align 8
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@PVR2_CID_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @pvr2_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.v4l2_tuner, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pvr2_ctrl*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %16, align 8
  store %struct.pvr2_v4l2_fh* %17, %struct.pvr2_v4l2_fh** %8, align 8
  %18 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %19 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %22, align 8
  store %struct.pvr2_hdw* %23, %struct.pvr2_hdw** %9, align 8
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %25 = call i32 @pvr2_hdw_get_tuner_status(%struct.pvr2_hdw* %24, %struct.v4l2_tuner* %11)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %4, align 4
  br label %90

30:                                               ; preds = %3
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %32 = load i32, i32* @PVR2_CID_INPUT, align 4
  %33 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %31, i32 %32)
  store %struct.pvr2_ctrl* %33, %struct.pvr2_ctrl** %13, align 8
  %34 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %13, align 8
  %35 = call i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl* %34, i32* %12)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %4, align 4
  br label %90

40:                                               ; preds = %30
  %41 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @PVR2_CVAL_INPUT_RADIO, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %13, align 8
  %52 = load i32, i32* @PVR2_CVAL_INPUT_RADIO, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl* %51, i64 %53)
  br label %55

55:                                               ; preds = %50, %46
  br label %65

56:                                               ; preds = %40
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @PVR2_CVAL_INPUT_RADIO, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %13, align 8
  %62 = load i64, i64* @PVR2_CVAL_INPUT_TV, align 8
  %63 = call i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %55
  %66 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  %69 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i64, i64* %10, align 8
  %76 = mul i64 %75, 125
  %77 = udiv i64 %76, 2
  store i64 %77, i64* %10, align 8
  br label %81

78:                                               ; preds = %65
  %79 = load i64, i64* %10, align 8
  %80 = mul i64 %79, 62500
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %83 = load i32, i32* @PVR2_CID_FREQUENCY, align 4
  %84 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %82, i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl* %84, i64 %85)
  store i32 %86, i32* %14, align 4
  %87 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %88 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %81, %38, %28
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @pvr2_hdw_get_tuner_status(%struct.pvr2_hdw*, %struct.v4l2_tuner*) #1

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl*, i32*) #1

declare dso_local i32 @pvr2_ctrl_set_value(%struct.pvr2_ctrl*, i64) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
