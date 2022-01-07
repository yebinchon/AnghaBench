; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-core.c_usbtv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-core.c_usbtv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_4__*, %struct.device }
%struct.TYPE_4__ = type { %struct.usb_host_endpoint*, %struct.TYPE_3__ }
%struct.usb_host_endpoint = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usbtv = type { i32, i32, i32, %struct.device* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Fushicai USBTV007 Audio-Video Grabber\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbtv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.usbtv*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %104

32:                                               ; preds = %20
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %37, align 8
  %39 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %38, i64 0
  store %struct.usb_host_endpoint* %39, %struct.usb_host_endpoint** %10, align 8
  %40 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %41 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %40, i32 0, i32 0
  %42 = call i32 @usb_endpoint_maxp(i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %45 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %44, i32 0, i32 0
  %46 = call i32 @usb_endpoint_maxp_mult(i32* %45)
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.usbtv* @kzalloc(i32 24, i32 %48)
  store %struct.usbtv* %49, %struct.usbtv** %9, align 8
  %50 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %51 = icmp eq %struct.usbtv* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %104

55:                                               ; preds = %32
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %58 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %57, i32 0, i32 3
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = call i32 @interface_to_usbdev(%struct.usb_interface* %59)
  %61 = call i32 @usb_get_dev(i32 %60)
  %62 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %63 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %66 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %69 = call i32 @usb_set_intfdata(%struct.usb_interface* %67, %struct.usbtv* %68)
  %70 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %71 = call i32 @usbtv_video_init(%struct.usbtv* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  br label %94

75:                                               ; preds = %55
  %76 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %77 = call i32 @usbtv_audio_init(%struct.usbtv* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %87

81:                                               ; preds = %75
  %82 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %83 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %82, i32 0, i32 2
  %84 = call i32 @v4l2_device_get(i32* %83)
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = call i32 @dev_info(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

87:                                               ; preds = %80
  %88 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %89 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @usb_get_dev(i32 %90)
  %92 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %93 = call i32 @usbtv_video_free(%struct.usbtv* %92)
  br label %94

94:                                               ; preds = %87, %74
  %95 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %96 = call i32 @usb_set_intfdata(%struct.usb_interface* %95, %struct.usbtv* null)
  %97 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %98 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @usb_put_dev(i32 %99)
  %101 = load %struct.usbtv*, %struct.usbtv** %9, align 8
  %102 = call i32 @kfree(%struct.usbtv* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %94, %81, %52, %29, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i32 @usb_endpoint_maxp_mult(i32*) #1

declare dso_local %struct.usbtv* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbtv*) #1

declare dso_local i32 @usbtv_video_init(%struct.usbtv*) #1

declare dso_local i32 @usbtv_audio_init(%struct.usbtv*) #1

declare dso_local i32 @v4l2_device_get(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @usbtv_video_free(%struct.usbtv*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.usbtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
