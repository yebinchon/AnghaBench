; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.v4l2_ctrl_handler }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@s5k4aa_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@S5K4AA_DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@S5K4AA_DEFAULT_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k4aa_init_controls(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %7, %struct.v4l2_ctrl_handler** %4, align 8
  %8 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %12, align 8
  %13 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %14 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %13, i32 6)
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %16 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %17 = load i32, i32* @S5K4AA_DEFAULT_BRIGHTNESS, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %15, i32* @s5k4aa_ctrl_ops, i32 %16, i32 0, i32 31, i32 1, i32 %17)
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %20 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %21 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %19, i32* @s5k4aa_ctrl_ops, i32 %20, i32 13, i32 4095, i32 1, i32 256)
  %22 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %23 = load i32, i32* @V4L2_CID_GAIN, align 4
  %24 = load i32, i32* @S5K4AA_DEFAULT_GAIN, align 4
  %25 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %22, i32* @s5k4aa_ctrl_ops, i32 %23, i32 0, i32 127, i32 1, i32 %24)
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %27 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @s5k4aa_ctrl_ops, i32 %27, i32 0, i32 1, i32 1, i32 1)
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %30 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %31 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %29, i32* @s5k4aa_ctrl_ops, i32 %30, i32 0, i32 1, i32 1, i32 0)
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %35 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %36 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %34, i32* @s5k4aa_ctrl_ops, i32 %35, i32 0, i32 1, i32 1, i32 0)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %1
  %49 = load %struct.sd*, %struct.sd** %3, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  %51 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
