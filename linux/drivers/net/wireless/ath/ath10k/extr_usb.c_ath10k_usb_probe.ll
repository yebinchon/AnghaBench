; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.ath10k = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath10k_usb = type { %struct.ath10k* }
%struct.usb_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ath10k_bus_params = type { i64, i32 }

@ATH10K_HW_QCA9377 = common dso_local global i32 0, align 4
@ATH10K_BUS_USB = common dso_local global i32 0, align 4
@ath10k_usb_hif_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to allocate core\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"usb new func vendor 0x%04x product 0x%04x\0A\00", align 1
@ATH10K_DEV_TYPE_HL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to register driver core: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Warning: ath10k USB support is incomplete, don't expect anything to work!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ath10k_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_usb*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath10k_bus_params, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %8, align 8
  %16 = bitcast %struct.ath10k_bus_params* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* @ATH10K_HW_QCA9377, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 1
  %20 = load i32, i32* @ATH10K_BUS_USB, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.ath10k* @ath10k_core_create(i32 8, i32* %19, i32 %20, i32 %21, i32* @ath10k_usb_hif_ops)
  store %struct.ath10k* %22, %struct.ath10k** %6, align 8
  %23 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %24 = icmp ne %struct.ath10k* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 1
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %88

31:                                               ; preds = %2
  %32 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %33 = call i32 @usb_get_dev(%struct.usb_device* %32)
  %34 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %45 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ath10k_dbg(%struct.ath10k* %44, i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %50 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %49)
  store %struct.ath10k_usb* %50, %struct.ath10k_usb** %7, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = call i32 @ath10k_usb_create(%struct.ath10k* %51, %struct.usb_interface* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %55 = load %struct.ath10k_usb*, %struct.ath10k_usb** %7, align 8
  %56 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %55, i32 0, i32 0
  store %struct.ath10k* %54, %struct.ath10k** %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @ATH10K_DEV_TYPE_HL, align 4
  %69 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %13, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %13, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %72 = call i32 @ath10k_core_register(%struct.ath10k* %71, %struct.ath10k_bus_params* %13)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %31
  %76 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %82

79:                                               ; preds = %31
  %80 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %81 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %80, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %88

82:                                               ; preds = %75
  %83 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %84 = call i32 @ath10k_core_destroy(%struct.ath10k* %83)
  %85 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %86 = call i32 @usb_put_dev(%struct.usb_device* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %79, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.ath10k* @ath10k_core_create(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_usb_create(%struct.ath10k*, %struct.usb_interface*) #1

declare dso_local i32 @ath10k_core_register(%struct.ath10k*, %struct.ath10k_bus_params*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
