; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_context = type { void (%struct.pvr2_context*)*, i32, %struct.pvr2_context*, %struct.pvr2_context*, i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PVR2_TRACE_CTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pvr2_context %p (create)\00", align 1
@pvr2_context_mutex = common dso_local global i32 0, align 4
@pvr2_context_exist_last = common dso_local global %struct.pvr2_context* null, align 8
@pvr2_context_exist_first = common dso_local global %struct.pvr2_context* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_context* @pvr2_context_create(%struct.usb_interface* %0, %struct.usb_device_id* %1, void (%struct.pvr2_context*)* %2) #0 {
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca void (%struct.pvr2_context*)*, align 8
  %7 = alloca %struct.pvr2_context*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store void (%struct.pvr2_context*)* %2, void (%struct.pvr2_context*)** %6, align 8
  store %struct.pvr2_context* null, %struct.pvr2_context** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pvr2_context* @kzalloc(i32 40, i32 %8)
  store %struct.pvr2_context* %9, %struct.pvr2_context** %7, align 8
  %10 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %11 = icmp ne %struct.pvr2_context* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %59

13:                                               ; preds = %3
  %14 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %15 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %16 = call i32 @pvr2_trace(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pvr2_context* %15)
  %17 = load void (%struct.pvr2_context*)*, void (%struct.pvr2_context*)** %6, align 8
  %18 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %19 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %18, i32 0, i32 0
  store void (%struct.pvr2_context*)* %17, void (%struct.pvr2_context*)** %19, align 8
  %20 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %21 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %20, i32 0, i32 4
  %22 = call i32 @mutex_init(i32* %21)
  %23 = call i32 @mutex_lock(i32* @pvr2_context_mutex)
  %24 = load %struct.pvr2_context*, %struct.pvr2_context** @pvr2_context_exist_last, align 8
  %25 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %26 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %25, i32 0, i32 3
  store %struct.pvr2_context* %24, %struct.pvr2_context** %26, align 8
  %27 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %28 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %27, i32 0, i32 2
  store %struct.pvr2_context* null, %struct.pvr2_context** %28, align 8
  %29 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  store %struct.pvr2_context* %29, %struct.pvr2_context** @pvr2_context_exist_last, align 8
  %30 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %31 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %30, i32 0, i32 3
  %32 = load %struct.pvr2_context*, %struct.pvr2_context** %31, align 8
  %33 = icmp ne %struct.pvr2_context* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %13
  %35 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %36 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %37 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %36, i32 0, i32 3
  %38 = load %struct.pvr2_context*, %struct.pvr2_context** %37, align 8
  %39 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %38, i32 0, i32 2
  store %struct.pvr2_context* %35, %struct.pvr2_context** %39, align 8
  br label %42

40:                                               ; preds = %13
  %41 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  store %struct.pvr2_context* %41, %struct.pvr2_context** @pvr2_context_exist_first, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = call i32 @mutex_unlock(i32* @pvr2_context_mutex)
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %46 = call i32 @pvr2_hdw_create(%struct.usb_interface* %44, %struct.usb_device_id* %45)
  %47 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %48 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %50 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %55 = call i32 @pvr2_context_destroy(%struct.pvr2_context* %54)
  store %struct.pvr2_context* null, %struct.pvr2_context** %7, align 8
  br label %59

56:                                               ; preds = %42
  %57 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  %58 = call i32 @pvr2_context_set_notify(%struct.pvr2_context* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %53, %12
  %60 = load %struct.pvr2_context*, %struct.pvr2_context** %7, align 8
  ret %struct.pvr2_context* %60
}

declare dso_local %struct.pvr2_context* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_context*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pvr2_hdw_create(%struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @pvr2_context_destroy(%struct.pvr2_context*) #1

declare dso_local i32 @pvr2_context_set_notify(%struct.pvr2_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
