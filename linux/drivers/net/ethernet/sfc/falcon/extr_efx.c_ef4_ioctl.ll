; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.ef4_nic = type { i32 }
%struct.mii_ioctl_data = type { i32 }

@SIOCGMIIREG = common dso_local global i32 0, align 4
@SIOCSMIIREG = common dso_local global i32 0, align 4
@MDIO_PHY_ID_C45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ef4_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ef4_nic*, align 8
  %8 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.ef4_nic* %10, %struct.ef4_nic** %7, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %11)
  store %struct.mii_ioctl_data* %12, %struct.mii_ioctl_data** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SIOCGMIIREG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SIOCSMIIREG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %3
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 64512
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @MDIO_PHY_ID_C45, align 4
  %28 = or i32 %27, 1024
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %20, %16
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %35 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %34, i32 0, i32 0
  %36 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mdio_mii_ioctl(i32* %35, %struct.mii_ioctl_data* %36, i32 %37)
  ret i32 %38
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mdio_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
