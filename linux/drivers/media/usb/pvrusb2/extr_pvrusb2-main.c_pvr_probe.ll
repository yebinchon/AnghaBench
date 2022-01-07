; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-main.c_pvr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-main.c_pvr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.pvr2_context = type { i32 }

@pvr_setup_attach = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create hdw handler\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"pvr_probe(pvr=%p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @pvr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.pvr2_context*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %9 = load i32, i32* @pvr_setup_attach, align 4
  %10 = call %struct.pvr2_context* @pvr2_context_create(%struct.usb_interface* %7, %struct.usb_device_id* %8, i32 %9)
  store %struct.pvr2_context* %10, %struct.pvr2_context** %6, align 8
  %11 = load %struct.pvr2_context*, %struct.pvr2_context** %6, align 8
  %12 = icmp ne %struct.pvr2_context* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %15 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %20 = load %struct.pvr2_context*, %struct.pvr2_context** %6, align 8
  %21 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_context* %20)
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = load %struct.pvr2_context*, %struct.pvr2_context** %6, align 8
  %24 = call i32 @usb_set_intfdata(%struct.usb_interface* %22, %struct.pvr2_context* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.pvr2_context* @pvr2_context_create(%struct.usb_interface*, %struct.usb_device_id*, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.pvr2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
