; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_analog_stream_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_analog_stream_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"au0828_analog_stream_enable called\0A\00", align 1
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Changing intf#0 to alt 5\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Au0828 can't set alt setting to 5!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AU0828_SENSORCTRL_VBI_103 = common dso_local global i32 0, align 4
@AU0828_SENSORCTRL_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*)* @au0828_analog_stream_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_analog_stream_enable(%struct.au0828_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  %8 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @DEV_DISCONNECTED, align 4
  %10 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %11 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %10, i32 0, i32 3
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %19 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %20, i32 0)
  store %struct.usb_interface* %21, %struct.usb_interface** %4, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = icmp ne %struct.usb_interface* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %35 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_set_interface(i32 %36, i32 0, i32 5)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %87

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %24, %17
  %46 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %47 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %6, align 4
  %51 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %52 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %7, align 4
  %55 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %56 = load i32, i32* @AU0828_SENSORCTRL_VBI_103, align 4
  %57 = call i32 @au0828_writereg(%struct.au0828_dev* %55, i32 %56, i32 0)
  %58 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %59 = call i32 @au0828_writereg(%struct.au0828_dev* %58, i32 262, i32 0)
  %60 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %61 = call i32 @au0828_writereg(%struct.au0828_dev* %60, i32 272, i32 0)
  %62 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %63 = call i32 @au0828_writereg(%struct.au0828_dev* %62, i32 273, i32 0)
  %64 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @au0828_writereg(%struct.au0828_dev* %64, i32 276, i32 %66)
  %68 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 8
  %71 = call i32 @au0828_writereg(%struct.au0828_dev* %68, i32 277, i32 %70)
  %72 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %73 = call i32 @au0828_writereg(%struct.au0828_dev* %72, i32 274, i32 0)
  %74 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %75 = call i32 @au0828_writereg(%struct.au0828_dev* %74, i32 275, i32 0)
  %76 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @au0828_writereg(%struct.au0828_dev* %76, i32 278, i32 %78)
  %80 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @au0828_writereg(%struct.au0828_dev* %80, i32 279, i32 %82)
  %84 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %85 = load i32, i32* @AU0828_SENSORCTRL_100, align 4
  %86 = call i32 @au0828_writereg(%struct.au0828_dev* %84, i32 %85, i32 179)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %45, %40, %14
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @au0828_writereg(%struct.au0828_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
