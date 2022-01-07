; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }
%struct.v4l2_tuner = type { i32 }

@PVR2_CID_FREQUENCY = common dso_local global i32 0, align 4
@PVR2_CID_INPUT = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @pvr2_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_tuner, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %15, align 8
  store %struct.pvr2_v4l2_fh* %16, %struct.pvr2_v4l2_fh** %8, align 8
  %17 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %18 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %21, align 8
  store %struct.pvr2_hdw* %22, %struct.pvr2_hdw** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %24 = call i32 @pvr2_hdw_get_tuner_status(%struct.pvr2_hdw* %23, %struct.v4l2_tuner* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %31 = load i32, i32* @PVR2_CID_FREQUENCY, align 4
  %32 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %30, i32 %31)
  %33 = call i32 @pvr2_ctrl_get_value(i32 %32, i32* %10)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %71

38:                                               ; preds = %29
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %40 = load i32, i32* @PVR2_CID_INPUT, align 4
  %41 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %39, i32 %40)
  %42 = call i32 @pvr2_ctrl_get_value(i32 %41, i32* %11)
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PVR2_CVAL_INPUT_RADIO, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %48 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %52 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %61, 2
  %63 = sdiv i32 %62, 125
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = sdiv i32 %65, 62500
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %36, %27
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @pvr2_hdw_get_tuner_status(%struct.pvr2_hdw*, %struct.v4l2_tuner*) #1

declare dso_local i32 @pvr2_ctrl_get_value(i32, i32*) #1

declare dso_local i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
