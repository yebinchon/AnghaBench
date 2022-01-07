; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_hcd_omap = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"starting TI HSUSB Controller\0A\00", align 1
@OMAP_UHH_HOSTCONFIG = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN = common dso_local global i32 0, align 4
@OMAP4_UHH_HOSTCONFIG_APP_START_CLK = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"UHH setup done, uhh_hostconfig=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @omap_usbhs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_usbhs_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usbhs_hcd_omap*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.usbhs_hcd_omap* @dev_get_drvdata(%struct.device* %5)
  store %struct.usbhs_hcd_omap* %6, %struct.usbhs_hcd_omap** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @pm_runtime_get_sync(%struct.device* %9)
  %11 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %12 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OMAP_UHH_HOSTCONFIG, align 4
  %15 = call i32 @usbhs_read(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN, align 4
  %17 = load i32, i32* @OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @OMAP4_UHH_HOSTCONFIG_APP_START_CLK, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %31 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %37
  ]

33:                                               ; preds = %1
  %34 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @omap_usbhs_rev1_hostconfig(%struct.usbhs_hcd_omap* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %1
  %38 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @omap_usbhs_rev2_hostconfig(%struct.usbhs_hcd_omap* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @omap_usbhs_rev2_hostconfig(%struct.usbhs_hcd_omap* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %37, %33
  %46 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %47 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OMAP_UHH_HOSTCONFIG, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @usbhs_write(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = call i32 @pm_runtime_put_sync(%struct.device* %55)
  ret void
}

declare dso_local %struct.usbhs_hcd_omap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @usbhs_read(i32, i32) #1

declare dso_local i32 @omap_usbhs_rev1_hostconfig(%struct.usbhs_hcd_omap*, i32) #1

declare dso_local i32 @omap_usbhs_rev2_hostconfig(%struct.usbhs_hcd_omap*, i32) #1

declare dso_local i32 @usbhs_write(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
