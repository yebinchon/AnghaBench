; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_parse_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_parse_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32, %struct.usb_host_endpoint*, %struct.TYPE_3__* }
%struct.usb_host_endpoint = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i8*, i32, %struct.usb_host_endpoint*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USB_DT_CS_INTERFACE = common dso_local global i8 0, align 1
@UVC_QUIRK_BUILTIN_ISIGHT = common dso_local global i32 0, align 4
@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Found a Status endpoint (addr %02x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*)* @uvc_parse_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_parse_control(%struct.uvc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_device*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.uvc_device* %0, %struct.uvc_device** %3, align 8
  %10 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %11 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %4, align 8
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %19 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %48, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @uvc_parse_vendor_control(%struct.uvc_device* %25, i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @USB_DT_CS_INTERFACE, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %24
  br label %48

39:                                               ; preds = %30
  %40 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @uvc_parse_standard_control(%struct.uvc_device* %40, i8* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %107

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %5, align 8
  br label %21

62:                                               ; preds = %21
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %64 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %70 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @UVC_QUIRK_BUILTIN_ISIGHT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %106, label %75

75:                                               ; preds = %68
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 2
  %78 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %77, align 8
  %79 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %78, i64 0
  store %struct.usb_host_endpoint* %79, %struct.usb_host_endpoint** %8, align 8
  %80 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %81 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %80, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %81, %struct.usb_endpoint_descriptor** %9, align 8
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %83 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %75
  %86 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %87 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = icmp sge i32 %89, 8
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %98 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %99 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @uvc_trace(i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %103 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %104 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %103, i32 0, i32 1
  store %struct.usb_host_endpoint* %102, %struct.usb_host_endpoint** %104, align 8
  br label %105

105:                                              ; preds = %96, %91, %85, %75
  br label %106

106:                                              ; preds = %105, %68, %62
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %45
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @uvc_parse_vendor_control(%struct.uvc_device*, i8*, i32) #1

declare dso_local i32 @uvc_parse_standard_control(%struct.uvc_device*, i8*, i32) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
