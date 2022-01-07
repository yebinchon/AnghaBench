; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_ext_controls = type { i32, i64, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32, i64, i32 }
%struct.pvr2_ctrl = type { i32 }

@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @pvr2_g_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_g_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.v4l2_ext_control*, align 8
  %11 = alloca %struct.pvr2_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
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
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %74, %3
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %24
  %31 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %31, i32 0, i32 3
  %33 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %33, i64 %35
  store %struct.v4l2_ext_control* %36, %struct.v4l2_ext_control** %10, align 8
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %38 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw* %37, i32 %40)
  store %struct.pvr2_ctrl* %41, %struct.pvr2_ctrl** %11, align 8
  %42 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %11, align 8
  %43 = icmp ne %struct.pvr2_ctrl* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_CTRL_WHICH_DEF_VAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %11, align 8
  %52 = call i32 @pvr2_ctrl_get_def(%struct.pvr2_ctrl* %51, i32* %13)
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %11, align 8
  %55 = call i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl* %54, i32* %13)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %60

57:                                               ; preds = %30
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %60
  %69 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %24

77:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_def(%struct.pvr2_ctrl*, i32*) #1

declare dso_local i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
