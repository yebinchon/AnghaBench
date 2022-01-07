; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_netdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_netdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.netdev_private = type { i32*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @netdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.netdev_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %11 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %10)
  store %struct.mii_ioctl_data* %11, %struct.mii_ioctl_data** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %12)
  store %struct.netdev_private* %13, %struct.netdev_private** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %64 [
    i32 130, label %15
    i32 129, label %25
    i32 128, label %44
  ]

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  %23 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %24 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %3, %15
  %26 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %27 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %31 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 31
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 31
  %38 = call i32 @mdio_read(%struct.net_device* %29, i32 %33, i32 %37)
  %39 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %40 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %42 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_irq(i32* %42)
  store i32 0, i32* %4, align 4
  br label %67

44:                                               ; preds = %3
  %45 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %46 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 31
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  %57 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %58 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mdio_write(%struct.net_device* %48, i32 %52, i32 %56, i32 %59)
  %61 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %62 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_irq(i32* %62)
  store i32 0, i32* %4, align 4
  br label %67

64:                                               ; preds = %3
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %44, %25
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
