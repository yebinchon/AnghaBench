; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_meye_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_meye_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, i32 }

@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SONY_PIC_COMMAND_SETCAMERABRIGHTNESS = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAHUE = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERACONTRAST = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERACOLOR = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAAGC = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERASHARPNESS = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAPICTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @meye_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meye_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %4 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4))
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %83 [
    i32 136, label %8
    i32 134, label %18
    i32 135, label %28
    i32 129, label %38
    i32 132, label %48
    i32 128, label %57
    i32 130, label %66
    i32 133, label %75
    i32 131, label %79
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERABRIGHTNESS, align 4
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sony_pic_camera_command(i32 %9, i32 %12)
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 10
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 4
  br label %87

18:                                               ; preds = %1
  %19 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAHUE, align 4
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sony_pic_camera_command(i32 %19, i32 %22)
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 10
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 4
  br label %87

28:                                               ; preds = %1
  %29 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERACONTRAST, align 4
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sony_pic_camera_command(i32 %29, i32 %32)
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 10
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 4
  br label %87

38:                                               ; preds = %1
  %39 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERACOLOR, align 4
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sony_pic_camera_command(i32 %39, i32 %42)
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 10
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 4
  br label %87

48:                                               ; preds = %1
  %49 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAAGC, align 4
  %50 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sony_pic_camera_command(i32 %49, i32 %52)
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5, i32 0), align 4
  br label %87

57:                                               ; preds = %1
  %58 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERASHARPNESS, align 4
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sony_pic_camera_command(i32 %58, i32 %61)
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5, i32 1), align 4
  br label %87

66:                                               ; preds = %1
  %67 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAPICTURE, align 4
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sony_pic_camera_command(i32 %67, i32 %70)
  %72 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %73 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5, i32 2), align 4
  br label %87

75:                                               ; preds = %1
  %76 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5, i32 3), align 4
  br label %87

79:                                               ; preds = %1
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5, i32 4), align 4
  br label %87

83:                                               ; preds = %1
  %84 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %89

87:                                               ; preds = %79, %75, %66, %57, %48, %38, %28, %18, %8
  %88 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4))
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sony_pic_camera_command(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
