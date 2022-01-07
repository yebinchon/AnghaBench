; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32 }
%struct.cdc_mbim_state = type { %struct.TYPE_2__*, %struct.cdc_ncm_ctx* }
%struct.TYPE_2__ = type { i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32)* }
%struct.cdc_ncm_ctx = type { %struct.usb_interface* }

@PMSG_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @cdc_mbim_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_mbim_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.cdc_mbim_state*, align 8
  %6 = alloca %struct.cdc_ncm_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usbnet* %9, %struct.usbnet** %4, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.cdc_mbim_state*
  store %struct.cdc_mbim_state* %13, %struct.cdc_mbim_state** %5, align 8
  %14 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %5, align 8
  %15 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %14, i32 0, i32 1
  %16 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %15, align 8
  store %struct.cdc_ncm_ctx* %16, %struct.cdc_ncm_ctx** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %18, i32 0, i32 0
  %20 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  %21 = icmp eq %struct.usb_interface* %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %5, align 8
  %24 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %5, align 8
  %29 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %31, align 8
  %33 = icmp ne i32 (%struct.usb_interface*)* %32, null
  br label %34

34:                                               ; preds = %27, %22, %1
  %35 = phi i1 [ false, %22 ], [ false, %1 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %5, align 8
  %41 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %43, align 8
  %45 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %46 = call i32 %44(%struct.usb_interface* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %69

51:                                               ; preds = %47
  %52 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %53 = call i32 @usbnet_resume(%struct.usb_interface* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %5, align 8
  %61 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %63, align 8
  %65 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %66 = load i32, i32* @PMSG_SUSPEND, align 4
  %67 = call i32 %64(%struct.usb_interface* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %56, %51
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
