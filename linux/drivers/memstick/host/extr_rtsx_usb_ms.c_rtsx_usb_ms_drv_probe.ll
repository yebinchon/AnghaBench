; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_usb_ms.c_rtsx_usb_ms_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_usb_ms.c_rtsx_usb_ms_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.memstick_host = type { i32, i32, i32 }
%struct.rtsx_usb_ms = type { i32, i32, i32, i32, %struct.platform_device*, %struct.memstick_host*, %struct.rtsx_ucr* }
%struct.rtsx_ucr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Realtek USB Memstick controller found\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MEMSTICK_POWER_OFF = common dso_local global i32 0, align 4
@rtsx_usb_ms_handle_req = common dso_local global i32 0, align 4
@rtsx_usb_ms_poll_card = common dso_local global i32 0, align 4
@rtsx_usb_ms_request = common dso_local global i32 0, align 4
@rtsx_usb_ms_set_param = common dso_local global i32 0, align 4
@MEMSTICK_CAP_PAR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtsx_usb_ms_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_ms_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.memstick_host*, align 8
  %5 = alloca %struct.rtsx_usb_ms*, align 8
  %6 = alloca %struct.rtsx_ucr*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @to_usb_interface(i32 %11)
  %13 = call %struct.rtsx_ucr* @usb_get_intfdata(i32 %12)
  store %struct.rtsx_ucr* %13, %struct.rtsx_ucr** %6, align 8
  %14 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %15 = icmp ne %struct.rtsx_ucr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %97

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(%struct.TYPE_3__* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.memstick_host* @memstick_alloc_host(i32 40, %struct.TYPE_3__* %24)
  store %struct.memstick_host* %25, %struct.memstick_host** %4, align 8
  %26 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %27 = icmp ne %struct.memstick_host* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %97

31:                                               ; preds = %19
  %32 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %33 = call %struct.rtsx_usb_ms* @memstick_priv(%struct.memstick_host* %32)
  store %struct.rtsx_usb_ms* %33, %struct.rtsx_usb_ms** %5, align 8
  %34 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %35 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %36 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %35, i32 0, i32 6
  store %struct.rtsx_ucr* %34, %struct.rtsx_ucr** %36, align 8
  %37 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %38 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %39 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %38, i32 0, i32 5
  store %struct.memstick_host* %37, %struct.memstick_host** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %42 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %41, i32 0, i32 4
  store %struct.platform_device* %40, %struct.platform_device** %42, align 8
  %43 = load i32, i32* @MEMSTICK_POWER_OFF, align 4
  %44 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %45 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.rtsx_usb_ms* %47)
  %49 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %50 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %49, i32 0, i32 2
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %53 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %52, i32 0, i32 1
  %54 = load i32, i32* @rtsx_usb_ms_handle_req, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %57 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %56, i32 0, i32 0
  %58 = load i32, i32* @rtsx_usb_ms_poll_card, align 4
  %59 = call i32 @INIT_DELAYED_WORK(i32* %57, i32 %58)
  %60 = load i32, i32* @rtsx_usb_ms_request, align 4
  %61 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %62 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @rtsx_usb_ms_set_param, align 4
  %64 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %65 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %67 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %68 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %70 = call i32 @ms_dev(%struct.rtsx_usb_ms* %69)
  %71 = call i32 @pm_runtime_get_noresume(i32 %70)
  %72 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %73 = call i32 @ms_dev(%struct.rtsx_usb_ms* %72)
  %74 = call i32 @pm_runtime_set_active(i32 %73)
  %75 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %76 = call i32 @ms_dev(%struct.rtsx_usb_ms* %75)
  %77 = call i32 @pm_runtime_enable(i32 %76)
  %78 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %79 = call i32 @memstick_add_host(%struct.memstick_host* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %31
  br label %87

83:                                               ; preds = %31
  %84 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %85 = call i32 @ms_dev(%struct.rtsx_usb_ms* %84)
  %86 = call i32 @pm_runtime_put(i32 %85)
  store i32 0, i32* %2, align 4
  br label %97

87:                                               ; preds = %82
  %88 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %89 = call i32 @memstick_free_host(%struct.memstick_host* %88)
  %90 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %91 = call i32 @ms_dev(%struct.rtsx_usb_ms* %90)
  %92 = call i32 @pm_runtime_disable(i32 %91)
  %93 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %5, align 8
  %94 = call i32 @ms_dev(%struct.rtsx_usb_ms* %93)
  %95 = call i32 @pm_runtime_put_noidle(i32 %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %83, %28, %16
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.rtsx_ucr* @usb_get_intfdata(i32) #1

declare dso_local i32 @to_usb_interface(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local %struct.memstick_host* @memstick_alloc_host(i32, %struct.TYPE_3__*) #1

declare dso_local %struct.rtsx_usb_ms* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtsx_usb_ms*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @ms_dev(%struct.rtsx_usb_ms*) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @memstick_add_host(%struct.memstick_host*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @memstick_free_host(%struct.memstick_host*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
