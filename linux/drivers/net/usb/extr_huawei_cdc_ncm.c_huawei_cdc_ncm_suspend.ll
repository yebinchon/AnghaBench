; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_huawei_cdc_ncm.c_huawei_cdc_ncm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_huawei_cdc_ncm.c_huawei_cdc_ncm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32 }
%struct.huawei_cdc_ncm_state = type { %struct.TYPE_2__*, %struct.cdc_ncm_ctx* }
%struct.TYPE_2__ = type { i32 (%struct.usb_interface*, i32)* }
%struct.cdc_ncm_ctx = type { %struct.usb_interface* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @huawei_cdc_ncm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huawei_cdc_ncm_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.huawei_cdc_ncm_state*, align 8
  %8 = alloca %struct.cdc_ncm_ctx*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usbnet* %10, %struct.usbnet** %6, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.huawei_cdc_ncm_state*
  store %struct.huawei_cdc_ncm_state* %14, %struct.huawei_cdc_ncm_state** %7, align 8
  %15 = load %struct.huawei_cdc_ncm_state*, %struct.huawei_cdc_ncm_state** %7, align 8
  %16 = getelementptr inbounds %struct.huawei_cdc_ncm_state, %struct.huawei_cdc_ncm_state* %15, i32 0, i32 1
  %17 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %16, align 8
  store %struct.cdc_ncm_ctx* %17, %struct.cdc_ncm_ctx** %8, align 8
  %18 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %19 = icmp eq %struct.cdc_ncm_ctx* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @usbnet_suspend(%struct.usb_interface* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %64

30:                                               ; preds = %23
  %31 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %32 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %32, i32 0, i32 0
  %34 = load %struct.usb_interface*, %struct.usb_interface** %33, align 8
  %35 = icmp eq %struct.usb_interface* %31, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.huawei_cdc_ncm_state*, %struct.huawei_cdc_ncm_state** %7, align 8
  %38 = getelementptr inbounds %struct.huawei_cdc_ncm_state, %struct.huawei_cdc_ncm_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.huawei_cdc_ncm_state*, %struct.huawei_cdc_ncm_state** %7, align 8
  %43 = getelementptr inbounds %struct.huawei_cdc_ncm_state, %struct.huawei_cdc_ncm_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.usb_interface*, i32)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.huawei_cdc_ncm_state*, %struct.huawei_cdc_ncm_state** %7, align 8
  %50 = getelementptr inbounds %struct.huawei_cdc_ncm_state, %struct.huawei_cdc_ncm_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %52, align 8
  %54 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %53(%struct.usb_interface* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %41, %36, %30
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %62 = call i32 @usbnet_resume(%struct.usb_interface* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %29, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i32) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
