; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_start_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_start_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@si470x_int_in_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"submitting int urb failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*)* @si470x_start_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_start_usb(%struct.si470x_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %3, align 8
  %5 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %6 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %9 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %12 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %15 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %14, i32 0, i32 5
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_rcvintpipe(i32 %13, i32 %18)
  %20 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %24 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load i32, i32* @si470x_int_in_callback, align 4
  %30 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %31 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %32 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %31, i32 0, i32 5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_fill_int_urb(i32 %7, i32 %10, i32 %19, i32 %22, i32 %28, i32 %29, %struct.si470x_device* %30, i32 %35)
  %37 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %38 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = call i32 (...) @mb()
  %40 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @usb_submit_urb(i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %49 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %55 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %58 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %61 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %63 = call i32 @si470x_start(%struct.si470x_device* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %56
  %69 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %70 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %69, i32 0, i32 2
  %71 = call i32 @v4l2_ctrl_handler_setup(i32* %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %66
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.si470x_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @si470x_start(%struct.si470x_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
