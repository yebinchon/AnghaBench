; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_init_intf1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_init_intf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.imon_context = type { i64, i32, i32, i32, i32, i32*, %struct.urb*, %struct.TYPE_2__*, i32, i32 }
%struct.urb = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IMON_DISPLAY_TYPE_VGA = common dso_local global i64 0, align 8
@imon_touch_display_timeout = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@usb_rx_callback_intf1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"usb_submit_urb failed for intf1 (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to initialize intf1, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imon_context* (%struct.usb_interface*, %struct.imon_context*)* @imon_init_intf1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imon_context* @imon_init_intf1(%struct.usb_interface* %0, %struct.imon_context* %1) #0 {
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.imon_context*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.imon_context* %1, %struct.imon_context** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %135

16:                                               ; preds = %2
  %17 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %21 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IMON_DISPLAY_TYPE_VGA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %27 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %26, i32 0, i32 9
  %28 = load i32, i32* @imon_touch_display_timeout, align 4
  %29 = call i32 @timer_setup(i32* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %25, %16
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = call i32 @interface_to_usbdev(%struct.usb_interface* %31)
  %33 = call i32 @usb_get_dev(i32 %32)
  %34 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %35 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 6
  store %struct.urb* %36, %struct.urb** %38, align 8
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %42, align 8
  store %struct.usb_host_interface* %43, %struct.usb_host_interface** %7, align 8
  %44 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %45 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %46 = call i32 @imon_find_endpoints(%struct.imon_context* %44, %struct.usb_host_interface* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %30
  br label %125

49:                                               ; preds = %30
  %50 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %51 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IMON_DISPLAY_TYPE_VGA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %57 = call i32* @imon_init_touch(%struct.imon_context* %56)
  %58 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %59 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %61 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %124

65:                                               ; preds = %55
  br label %69

66:                                               ; preds = %49
  %67 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %68 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %67, i32 0, i32 5
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %71 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %70, i32 0, i32 6
  %72 = load %struct.urb*, %struct.urb** %71, align 8
  %73 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %74 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %77 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %80 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %79, i32 0, i32 7
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_rcvintpipe(i32 %78, i32 %83)
  %85 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %86 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @usb_rx_callback_intf1, align 4
  %89 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %90 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %91 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %90, i32 0, i32 7
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_fill_int_urb(%struct.urb* %72, i32 %75, i32 %84, i32 %87, i32 4, i32 %88, %struct.imon_context* %89, i32 %94)
  %96 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %97 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %96, i32 0, i32 6
  %98 = load %struct.urb*, %struct.urb** %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @usb_submit_urb(%struct.urb* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %69
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %113

106:                                              ; preds = %69
  %107 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %108 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %107, i32 0, i32 1
  store i32 1, i32* %108, align 8
  %109 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %110 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %109, i32 0, i32 3
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  store %struct.imon_context* %112, %struct.imon_context** %3, align 8
  br label %141

113:                                              ; preds = %103
  %114 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %115 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %120 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @input_unregister_device(i32* %121)
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %64
  br label %125

125:                                              ; preds = %124, %48
  %126 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %127 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @usb_put_dev(i32 %128)
  %130 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %131 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %130, i32 0, i32 3
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.urb*, %struct.urb** %6, align 8
  %134 = call i32 @usb_free_urb(%struct.urb* %133)
  br label %135

135:                                              ; preds = %125, %15
  %136 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %137 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  store %struct.imon_context* null, %struct.imon_context** %3, align 8
  br label %141

141:                                              ; preds = %135, %106
  %142 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  ret %struct.imon_context* %142
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @imon_find_endpoints(%struct.imon_context*, %struct.usb_host_interface*) #1

declare dso_local i32* @imon_init_touch(%struct.imon_context*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.imon_context*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
