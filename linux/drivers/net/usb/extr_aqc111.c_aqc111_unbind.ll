; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.aqc111_data* }
%struct.aqc111_data = type { i32 }
%struct.usb_interface = type { i32 }

@SFR_PHYPWR_RSTCTL_BZ = common dso_local global i64 0, align 8
@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_PHYPWR_RSTCTL = common dso_local global i32 0, align 4
@AQ_ADV_MASK = common dso_local global i32 0, align 4
@AQ_LOW_POWER = common dso_local global i32 0, align 4
@AQ_PHY_POWER_EN = common dso_local global i32 0, align 4
@AQ_PHY_OPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @aqc111_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqc111_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.aqc111_data*, align 8
  %6 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  store %struct.aqc111_data* %9, %struct.aqc111_data** %5, align 8
  %10 = load i64, i64* @SFR_PHYPWR_RSTCTL_BZ, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %13 = load i32, i32* @SFR_PHYPWR_RSTCTL, align 4
  %14 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %11, i32 %12, i32 %13, i32 2, i64* %6)
  store i64 0, i64* %6, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %17 = load i32, i32* @SFR_PHYPWR_RSTCTL, align 4
  %18 = call i32 @aqc111_write16_cmd_nopm(%struct.usbnet* %15, i32 %16, i32 %17, i32 2, i64* %6)
  %19 = load i32, i32* @AQ_ADV_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.aqc111_data*, %struct.aqc111_data** %5, align 8
  %22 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @AQ_LOW_POWER, align 4
  %26 = load %struct.aqc111_data*, %struct.aqc111_data** %5, align 8
  %27 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @AQ_PHY_POWER_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.aqc111_data*, %struct.aqc111_data** %5, align 8
  %33 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = load i32, i32* @AQ_PHY_OPS, align 4
  %38 = load %struct.aqc111_data*, %struct.aqc111_data** %5, align 8
  %39 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %38, i32 0, i32 0
  %40 = call i32 @aqc111_write32_cmd_nopm(%struct.usbnet* %36, i32 %37, i32 0, i32 0, i32* %39)
  %41 = load %struct.aqc111_data*, %struct.aqc111_data** %5, align 8
  %42 = call i32 @kfree(%struct.aqc111_data* %41)
  ret void
}

declare dso_local i32 @aqc111_write16_cmd_nopm(%struct.usbnet*, i32, i32, i32, i64*) #1

declare dso_local i32 @aqc111_write32_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.aqc111_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
