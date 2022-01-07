; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.isp_prev_device = type { i32 }

@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @preview_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @preview_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.isp_prev_device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.isp_prev_device* %10, %struct.isp_prev_device** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %16 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.isp_prev_device*, %struct.isp_prev_device** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @preview_config(%struct.isp_prev_device* %13, i8* %14)
  store i64 %15, i64* %4, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @ENOIOCTLCMD, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i64, i64* %4, align 8
  ret i64 %20
}

declare dso_local %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @preview_config(%struct.isp_prev_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
