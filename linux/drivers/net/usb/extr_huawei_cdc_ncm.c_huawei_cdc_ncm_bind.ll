; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_huawei_cdc_ncm.c_huawei_cdc_ncm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_huawei_cdc_ncm.c_huawei_cdc_ncm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cdc_ncm_ctx = type { i32 }
%struct.usb_driver = type { i32 }
%struct.huawei_cdc_ncm_state = type { %struct.usb_driver*, %struct.cdc_ncm_ctx* }

@ENODEV = common dso_local global i32 0, align 4
@CDC_NCM_FLAG_NDP_TO_END = common dso_local global i32 0, align 4
@CDC_NCM_FLAG_RESET_NTB16 = common dso_local global i32 0, align 4
@huawei_cdc_ncm_wdm_manage_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @huawei_cdc_ncm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huawei_cdc_ncm_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cdc_ncm_ctx*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.huawei_cdc_ncm_state*, align 8
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.usb_driver* @ERR_PTR(i32 %11)
  store %struct.usb_driver* %12, %struct.usb_driver** %6, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.huawei_cdc_ncm_state*
  store %struct.huawei_cdc_ncm_state* %18, %struct.huawei_cdc_ncm_state** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @CDC_NCM_FLAG_RESET_NTB16, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cdc_ncm_bind_common(%struct.usbnet* %25, %struct.usb_interface* %26, i32 1, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %66

32:                                               ; preds = %2
  %33 = load %struct.huawei_cdc_ncm_state*, %struct.huawei_cdc_ncm_state** %8, align 8
  %34 = getelementptr inbounds %struct.huawei_cdc_ncm_state, %struct.huawei_cdc_ncm_state* %33, i32 0, i32 1
  %35 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %34, align 8
  store %struct.cdc_ncm_ctx* %35, %struct.cdc_ncm_ctx** %5, align 8
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* @huawei_cdc_ncm_wdm_manage_power, align 4
  %49 = call %struct.usb_driver* @usb_cdc_wdm_register(i32 %43, i32* %47, i32 1024, i32 %48)
  store %struct.usb_driver* %49, %struct.usb_driver** %6, align 8
  br label %50

50:                                               ; preds = %40, %32
  %51 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %52 = call i64 @IS_ERR(%struct.usb_driver* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %56 = call i32 @PTR_ERR(%struct.usb_driver* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = call i32 @cdc_ncm_unbind(%struct.usbnet* %57, %struct.usb_interface* %58)
  br label %66

60:                                               ; preds = %50
  %61 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %62, align 8
  %63 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %64 = load %struct.huawei_cdc_ncm_state*, %struct.huawei_cdc_ncm_state** %8, align 8
  %65 = getelementptr inbounds %struct.huawei_cdc_ncm_state, %struct.huawei_cdc_ncm_state* %64, i32 0, i32 0
  store %struct.usb_driver* %63, %struct.usb_driver** %65, align 8
  br label %66

66:                                               ; preds = %60, %54, %31
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.usb_driver* @ERR_PTR(i32) #1

declare dso_local i32 @cdc_ncm_bind_common(%struct.usbnet*, %struct.usb_interface*, i32, i32) #1

declare dso_local %struct.usb_driver* @usb_cdc_wdm_register(i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_driver*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_driver*) #1

declare dso_local i32 @cdc_ncm_unbind(%struct.usbnet*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
