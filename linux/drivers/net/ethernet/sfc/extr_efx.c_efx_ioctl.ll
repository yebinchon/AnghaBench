; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.efx_nic = type { i32 }
%struct.mii_ioctl_data = type { i32 }

@SIOCSHWTSTAMP = common dso_local global i32 0, align 4
@SIOCGHWTSTAMP = common dso_local global i32 0, align 4
@SIOCGMIIREG = common dso_local global i32 0, align 4
@SIOCSMIIREG = common dso_local global i32 0, align 4
@MDIO_PHY_ID_C45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @efx_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.efx_nic* %11, %struct.efx_nic** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SIOCSHWTSTAMP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %20 = call i32 @efx_ptp_set_ts_config(%struct.efx_nic* %18, %struct.ifreq* %19)
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SIOCGHWTSTAMP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %27 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %28 = call i32 @efx_ptp_get_ts_config(%struct.efx_nic* %26, %struct.ifreq* %27)
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SIOCGMIIREG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SIOCSMIIREG, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33, %29
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 64512
  %42 = icmp eq i32 %41, 1024
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* @MDIO_PHY_ID_C45, align 4
  %45 = or i32 %44, 1024
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %37, %33
  %51 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 0
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mdio_mii_ioctl(i32* %52, %struct.mii_ioctl_data* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %25, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @efx_ptp_set_ts_config(%struct.efx_nic*, %struct.ifreq*) #1

declare dso_local i32 @efx_ptp_get_ts_config(%struct.efx_nic*, %struct.ifreq*) #1

declare dso_local i32 @mdio_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
