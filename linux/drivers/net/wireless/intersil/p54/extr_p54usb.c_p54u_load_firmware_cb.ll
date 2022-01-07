; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_load_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_load_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.p54u_priv = type { i32, %struct.firmware*, %struct.usb_interface*, %struct.usb_device* }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Firmware not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to initialize device (%d)\0A\00", align 1
@p54u_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @p54u_load_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54u_load_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p54u_priv*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.p54u_priv*
  store %struct.p54u_priv* %10, %struct.p54u_priv** %5, align 8
  %11 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %12 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %11, i32 0, i32 3
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %15 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %14, i32 0, i32 2
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %7, align 8
  %17 = load %struct.firmware*, %struct.firmware** %3, align 8
  %18 = icmp ne %struct.firmware* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.firmware*, %struct.firmware** %3, align 8
  %21 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %22 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %21, i32 0, i32 1
  store %struct.firmware* %20, %struct.firmware** %22, align 8
  %23 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %24 = call i32 @p54u_start_ops(%struct.p54u_priv* %23)
  store i32 %24, i32* %8, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %33 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %32, i32 0, i32 0
  %34 = call i32 @complete(i32* %33)
  store %struct.p54u_priv* null, %struct.p54u_priv** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = call i32 @usb_lock_device(%struct.usb_device* %42)
  %44 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %45 = call i32 @usb_driver_release_interface(i32* @p54u_driver, %struct.usb_interface* %44)
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = call i32 @usb_unlock_device(%struct.usb_device* %46)
  br label %48

48:                                               ; preds = %37, %31
  %49 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %50 = call i32 @usb_put_intf(%struct.usb_interface* %49)
  ret void
}

declare dso_local i32 @p54u_start_ops(%struct.p54u_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
