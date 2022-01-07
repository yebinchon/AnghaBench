; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_send_eject_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_send_eject_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ath9k_htc: Could not find bulk out endpoint\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Ejecting storage device...\0A\00", align 1
@USB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @send_eject_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_eject_command(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %15 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %14, i64 0
  store %struct.usb_host_interface* %15, %struct.usb_host_interface** %5, align 8
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %103

24:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %35, %struct.usb_endpoint_descriptor** %6, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %37 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %41 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %39, %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %25

51:                                               ; preds = %43, %25
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %103

60:                                               ; preds = %51
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 31, i32 %61)
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %103

68:                                               ; preds = %60
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 85, i8* %70, align 1
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 83, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 66, i8* %74, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  store i8 67, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 14
  store i8 6, i8* %78, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 15
  store i8 27, i8* %80, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 19
  store i8 2, i8* %82, align 1
  %83 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 0
  %85 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @usb_sndbulkpipe(%struct.usb_device* %87, i32 %88)
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @USB_MSG_TIMEOUT, align 4
  %92 = mul nsw i32 2, %91
  %93 = call i32 @usb_bulk_msg(%struct.usb_device* %86, i32 %89, i8* %90, i32 31, i32* null, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @kfree(i8* %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %68
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %103

100:                                              ; preds = %68
  %101 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %102 = call i32 @usb_set_intfdata(%struct.usb_interface* %101, i32* null)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %98, %65, %54, %21
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
