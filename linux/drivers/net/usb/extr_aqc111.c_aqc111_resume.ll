; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32, %struct.aqc111_data* }
%struct.aqc111_data = type { i32, i32, i32, i32 }

@AQ_PHY_POWER_EN = common dso_local global i32 0, align 4
@AQ_LOW_POWER = common dso_local global i32 0, align 4
@AQ_WOL = common dso_local global i32 0, align 4
@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_BM_INT_MASK = common dso_local global i32 0, align 4
@SFR_RX_CTL_START = common dso_local global i32 0, align 4
@SFR_RX_CTL = common dso_local global i32 0, align 4
@SFR_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@SFR_MEDIUM_RECEIVE_EN = common dso_local global i32 0, align 4
@SFR_RX_PATH_READY = common dso_local global i32 0, align 4
@SFR_ETH_MAC_PATH = common dso_local global i32 0, align 4
@SFR_BMRX_DMA_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @aqc111_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.aqc111_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbnet* %8, %struct.usbnet** %3, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 1
  %11 = load %struct.aqc111_data*, %struct.aqc111_data** %10, align 8
  store %struct.aqc111_data* %11, %struct.aqc111_data** %4, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_carrier_off(i32 %14)
  %16 = load i32, i32* @AQ_PHY_POWER_EN, align 4
  %17 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %18 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @AQ_LOW_POWER, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %24 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @AQ_WOL, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %30 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  store i32 255, i32* %6, align 4
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %35 = load i32, i32* @SFR_BM_INT_MASK, align 4
  %36 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %33, i32 %34, i32 %35, i32 1, i32 1, i32* %6)
  %37 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %38 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @SFR_RX_CTL_START, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %46 = load i32, i32* @SFR_RX_CTL, align 4
  %47 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %44, i32 %45, i32 %46, i32 2, i32* %5)
  %48 = load i32, i32* @SFR_RX_CTL_START, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %52 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %53 = load i32, i32* @SFR_RX_CTL, align 4
  %54 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %51, i32 %52, i32 %53, i32 2, i32* %5)
  %55 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %56 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %57 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aqc111_data*, %struct.aqc111_data** %4, align 8
  %60 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @aqc111_set_phy_speed(%struct.usbnet* %55, i32 %58, i32 %61)
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %65 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %66 = call i32 @aqc111_read16_cmd_nopm(%struct.usbnet* %63, i32 %64, i32 %65, i32 2, i32* %5)
  %67 = load i32, i32* @SFR_MEDIUM_RECEIVE_EN, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %71 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %72 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %73 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %70, i32 %71, i32 %72, i32 2, i32* %5)
  %74 = load i32, i32* @SFR_RX_PATH_READY, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %76 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %77 = load i32, i32* @SFR_ETH_MAC_PATH, align 4
  %78 = call i32 @aqc111_write_cmd_nopm(%struct.usbnet* %75, i32 %76, i32 %77, i32 1, i32 1, i32* %6)
  store i32 0, i32* %6, align 4
  %79 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %80 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %81 = load i32, i32* @SFR_BMRX_DMA_CONTROL, align 4
  %82 = call i32 @aqc111_write_cmd(%struct.usbnet* %79, i32 %80, i32 %81, i32 1, i32 1, i32* %6)
  %83 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %84 = call i32 @usbnet_resume(%struct.usb_interface* %83)
  ret i32 %84
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @aqc111_write_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write16_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_set_phy_speed(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @aqc111_read16_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
