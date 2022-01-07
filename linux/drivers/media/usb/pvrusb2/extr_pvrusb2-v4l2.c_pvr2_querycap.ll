; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pvrusb2\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @pvr2_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.pvr2_v4l2_fh*, align 8
  %8 = alloca %struct.pvr2_hdw*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %10, align 8
  store %struct.pvr2_v4l2_fh* %11, %struct.pvr2_v4l2_fh** %7, align 8
  %12 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %13 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %16, align 8
  store %struct.pvr2_hdw* %17, %struct.pvr2_hdw** %8, align 8
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strscpy(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %26 = call i8* @pvr2_hdw_get_bus_info(%struct.pvr2_hdw* %25)
  %27 = call i32 @strscpy(i32 %24, i8* %26, i32 4)
  %28 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %32 = call i8* @pvr2_hdw_get_desc(%struct.pvr2_hdw* %31)
  %33 = call i32 @strscpy(i32 %30, i8* %32, i32 4)
  %34 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %35 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret i32 0
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i8* @pvr2_hdw_get_bus_info(%struct.pvr2_hdw*) #1

declare dso_local i8* @pvr2_hdw_get_desc(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
