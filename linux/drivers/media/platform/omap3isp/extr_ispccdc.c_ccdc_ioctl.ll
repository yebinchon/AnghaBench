; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.isp_ccdc_device = type { i32 }

@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @ccdc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccdc_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.isp_ccdc_device*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_ccdc_device* %11, %struct.isp_ccdc_device** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %15 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @ccdc_config(%struct.isp_ccdc_device* %17, i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %21 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %26

23:                                               ; preds = %3
  %24 = load i64, i64* @ENOIOCTLCMD, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ccdc_config(%struct.isp_ccdc_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
