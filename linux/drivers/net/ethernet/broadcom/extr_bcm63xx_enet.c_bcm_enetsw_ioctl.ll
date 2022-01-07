; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_if_info = type { i32, i32, i64, i32, i32, %struct.net_device* }

@bcm_enetsw_mii_mdio_read = common dso_local global i32 0, align 4
@bcm_enetsw_mii_mdio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bcm_enetsw_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enetsw_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_if_info, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 5
  store %struct.net_device* %8, %struct.net_device** %9, align 8
  %10 = load i32, i32* @bcm_enetsw_mii_mdio_read, align 4
  %11 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @bcm_enetsw_mii_mdio_write, align 4
  %13 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 0
  store i32 63, i32* %15, align 8
  %16 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 1
  store i32 31, i32* %16, align 4
  %17 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %18 = call i32 @if_mii(%struct.ifreq* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @generic_mii_ioctl(%struct.mii_if_info* %7, i32 %18, i32 %19, i32* null)
  ret i32 %20
}

declare dso_local i32 @generic_mii_ioctl(%struct.mii_if_info*, i32, i32, i32*) #1

declare dso_local i32 @if_mii(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
