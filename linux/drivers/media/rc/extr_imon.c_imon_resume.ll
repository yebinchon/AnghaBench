; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.imon_context = type { i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@usb_rx_callback_intf0 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@usb_rx_callback_intf1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @imon_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.imon_context*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.imon_context* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.imon_context* %7, %struct.imon_context** %4, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %21 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %24 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %27 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %26, i32 0, i32 5
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_rcvintpipe(i32 %25, i32 %30)
  %32 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %33 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @usb_rx_callback_intf0, align 4
  %36 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %37 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 5
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_fill_int_urb(i32 %19, i32 %22, i32 %31, i32 %34, i32 4, i32 %35, %struct.imon_context* %36, i32 %41)
  %43 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %44 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32 @usb_submit_urb(i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %80

48:                                               ; preds = %1
  %49 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %50 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %53 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %56 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %59 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_rcvintpipe(i32 %57, i32 %62)
  %64 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %65 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @usb_rx_callback_intf1, align 4
  %68 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %69 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %70 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_fill_int_urb(i32 %51, i32 %54, i32 %63, i32 %66, i32 4, i32 %67, %struct.imon_context* %68, i32 %73)
  %75 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %76 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call i32 @usb_submit_urb(i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %48, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.imon_context* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.imon_context*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
