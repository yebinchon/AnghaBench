; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_s_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32, i32 }

@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @pvr2_s_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_s_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.v4l2_ext_control*, align 8
  %11 = alloca i32, align 4
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
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_CTRL_WHICH_DEF_VAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %38, i32 0, i32 3
  %40 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %40, i64 %42
  store %struct.v4l2_ext_control* %43, %struct.v4l2_ext_control** %10, align 8
  %44 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %45 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw* %44, i32 %47)
  %49 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pvr2_ctrl_set_value(i32 %48, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %64

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %31

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %66 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %27
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @pvr2_ctrl_set_value(i32, i32) #1

declare dso_local i32 @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
