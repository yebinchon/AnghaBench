; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.sky2_port = type { i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @sky2_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.sky2_port*, align 8
  %10 = alloca %struct.sky2_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %15)
  store %struct.sky2_port* %16, %struct.sky2_port** %9, align 8
  %17 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %18 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %17, i32 0, i32 2
  %19 = load %struct.sky2_hw*, %struct.sky2_hw** %18, align 8
  store %struct.sky2_hw* %19, %struct.sky2_hw** %10, align 8
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %74

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %72 [
    i32 130, label %30
    i32 129, label %34
    i32 128, label %53
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @PHY_ADDR_MARV, align 4
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %30
  store i32 0, i32* %12, align 4
  %35 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %36 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.sky2_hw*, %struct.sky2_hw** %10, align 8
  %39 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %40 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %43 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 31
  %46 = call i32 @__gm_phy_read(%struct.sky2_hw* %38, i32 %41, i32 %45, i32* %12)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %48 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %72

53:                                               ; preds = %28
  %54 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %55 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %10, align 8
  %58 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %59 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %62 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  %65 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %66 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gm_phy_write(%struct.sky2_hw* %57, i32 %60, i32 %64, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.sky2_port*, %struct.sky2_port** %9, align 8
  %70 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_bh(i32* %70)
  br label %72

72:                                               ; preds = %28, %53, %34
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %25
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__gm_phy_read(%struct.sky2_hw*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
