; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_v4l2_dev = type { i32, i32, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"pvrusb2: unregistered device %s [%s]\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_v4l2_dev*)* @pvr2_v4l2_dev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_v4l2_dev_destroy(%struct.pvr2_v4l2_dev* %0) #0 {
  %2 = alloca %struct.pvr2_v4l2_dev*, align 8
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.pvr2_v4l2_dev* %0, %struct.pvr2_v4l2_dev** %2, align 8
  %7 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %13, align 8
  store %struct.pvr2_hdw* %14, %struct.pvr2_hdw** %3, align 8
  %15 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %19 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %19, i32 0, i32 1
  %21 = call i32 @video_device_node_name(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pvr2_config_get_name(i32 %22)
  %24 = call i32 @scnprintf(i8* %18, i32 79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %29 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pvr2_hdw_v4l_store_minor_number(%struct.pvr2_hdw* %28, i32 %31, i32 -1)
  %33 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %33, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.pvr2_v4l2_dev*, %struct.pvr2_v4l2_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_v4l2_dev, %struct.pvr2_v4l2_dev* %37, i32 0, i32 1
  %39 = call i32 @video_unregister_device(i32* %38)
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @pvr2_config_get_name(i32) #1

declare dso_local i32 @pvr2_hdw_v4l_store_minor_number(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
