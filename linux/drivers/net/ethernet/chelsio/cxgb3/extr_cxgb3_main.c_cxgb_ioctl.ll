; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_cxgb_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_cxgb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32 }
%struct.port_info = type { %struct.TYPE_2__, %struct.adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @cxgb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %12 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %11)
  store %struct.mii_ioctl_data* %12, %struct.mii_ioctl_data** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.port_info* @netdev_priv(%struct.net_device* %13)
  store %struct.port_info* %14, %struct.port_info** %9, align 8
  %15 = load %struct.port_info*, %struct.port_info** %9, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 1
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %10, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %67 [
    i32 129, label %19
    i32 128, label %19
    i32 130, label %54
    i32 131, label %61
  ]

19:                                               ; preds = %3, %3
  %20 = load %struct.adapter*, %struct.adapter** %10, align 8
  %21 = call i32 @is_10G(%struct.adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %25 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mdio_phy_id_is_c45(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %31 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 7936
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %37 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 57568
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %43 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  %50 = call i32 @mdio_phy_id_c45(i32 %45, i32 %49)
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %41, %35, %29, %23, %19
  br label %54

54:                                               ; preds = %3, %53
  %55 = load %struct.port_info*, %struct.port_info** %9, align 8
  %56 = getelementptr inbounds %struct.port_info, %struct.port_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mdio_mii_ioctl(i32* %57, %struct.mii_ioctl_data* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %3
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %64 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cxgb_extension_ioctl(%struct.net_device* %62, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %61, %54
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_10G(%struct.adapter*) #1

declare dso_local i32 @mdio_phy_id_is_c45(i32) #1

declare dso_local i32 @mdio_phy_id_c45(i32, i32) #1

declare dso_local i32 @mdio_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32) #1

declare dso_local i32 @cxgb_extension_ioctl(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
