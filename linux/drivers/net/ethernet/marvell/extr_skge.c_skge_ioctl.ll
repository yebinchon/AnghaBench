; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @skge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.skge_port*, align 8
  %10 = alloca %struct.skge_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.skge_port* @netdev_priv(%struct.net_device* %15)
  store %struct.skge_port* %16, %struct.skge_port** %9, align 8
  %17 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 1
  %19 = load %struct.skge_hw*, %struct.skge_hw** %18, align 8
  store %struct.skge_hw* %19, %struct.skge_hw** %10, align 8
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
  br label %109

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %107 [
    i32 130, label %30
    i32 129, label %36
    i32 128, label %70
  ]

30:                                               ; preds = %28
  %31 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %32 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %30
  store i32 0, i32* %12, align 4
  %37 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %38 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %41 = call i32 @is_genesis(%struct.skge_hw* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %45 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %46 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %49 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 31
  %52 = call i32 @__xm_phy_read(%struct.skge_hw* %44, i32 %47, i32 %51, i32* %12)
  store i32 %52, i32* %11, align 4
  br label %63

53:                                               ; preds = %36
  %54 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %55 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %56 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %59 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 31
  %62 = call i32 @__gm_phy_read(%struct.skge_hw* %54, i32 %57, i32 %61, i32* %12)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %53, %43
  %64 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %65 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %69 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %107

70:                                               ; preds = %28
  %71 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %72 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %75 = call i32 @is_genesis(%struct.skge_hw* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %79 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %80 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %83 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 31
  %86 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %87 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @xm_phy_write(%struct.skge_hw* %78, i32 %81, i32 %85, i32 %88)
  store i32 %89, i32* %11, align 4
  br label %103

90:                                               ; preds = %70
  %91 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %92 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %93 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %96 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 31
  %99 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %100 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gm_phy_write(%struct.skge_hw* %91, i32 %94, i32 %98, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %90, %77
  %104 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %105 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_bh(i32* %105)
  br label %107

107:                                              ; preds = %28, %103, %63
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @__xm_phy_read(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @__gm_phy_read(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
