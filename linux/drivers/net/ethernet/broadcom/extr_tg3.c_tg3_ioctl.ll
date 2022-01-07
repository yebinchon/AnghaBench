; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.tg3 = type { i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@USE_PHYLIB = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_CONNECTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TG3_PHYFLG_PHY_SERDES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @tg3_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.tg3*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.phy_device*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.tg3* @netdev_priv(%struct.net_device* %15)
  store %struct.tg3* %16, %struct.tg3** %9, align 8
  %17 = load %struct.tg3*, %struct.tg3** %9, align 8
  %18 = load i32, i32* @USE_PHYLIB, align 4
  %19 = call i64 @tg3_flag(%struct.tg3* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load %struct.tg3*, %struct.tg3** %9, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %135

31:                                               ; preds = %21
  %32 = load %struct.tg3*, %struct.tg3** %9, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tg3*, %struct.tg3** %9, align 8
  %36 = getelementptr inbounds %struct.tg3, %struct.tg3* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.phy_device* @mdiobus_get_phy(i32 %34, i32 %37)
  store %struct.phy_device* %38, %struct.phy_device** %11, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %40 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @phy_mii_ioctl(%struct.phy_device* %39, %struct.ifreq* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %135

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %131 [
    i32 131, label %45
    i32 130, label %51
    i32 128, label %87
    i32 129, label %123
    i32 132, label %127
  ]

45:                                               ; preds = %43
  %46 = load %struct.tg3*, %struct.tg3** %9, align 8
  %47 = getelementptr inbounds %struct.tg3, %struct.tg3* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %45
  %52 = load %struct.tg3*, %struct.tg3** %9, align 8
  %53 = getelementptr inbounds %struct.tg3, %struct.tg3* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %132

59:                                               ; preds = %51
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @netif_running(%struct.net_device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %135

66:                                               ; preds = %59
  %67 = load %struct.tg3*, %struct.tg3** %9, align 8
  %68 = getelementptr inbounds %struct.tg3, %struct.tg3* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_bh(i32* %68)
  %70 = load %struct.tg3*, %struct.tg3** %9, align 8
  %71 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %72 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 31
  %75 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %76 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 31
  %79 = call i32 @__tg3_readphy(%struct.tg3* %70, i32 %74, i32 %78, i32* %12)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.tg3*, %struct.tg3** %9, align 8
  %81 = getelementptr inbounds %struct.tg3, %struct.tg3* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %85 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %135

87:                                               ; preds = %43
  %88 = load %struct.tg3*, %struct.tg3** %9, align 8
  %89 = getelementptr inbounds %struct.tg3, %struct.tg3* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %132

95:                                               ; preds = %87
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netif_running(%struct.net_device* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %135

102:                                              ; preds = %95
  %103 = load %struct.tg3*, %struct.tg3** %9, align 8
  %104 = getelementptr inbounds %struct.tg3, %struct.tg3* %103, i32 0, i32 2
  %105 = call i32 @spin_lock_bh(i32* %104)
  %106 = load %struct.tg3*, %struct.tg3** %9, align 8
  %107 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %108 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 31
  %111 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %112 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 31
  %115 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %116 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @__tg3_writephy(%struct.tg3* %106, i32 %110, i32 %114, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.tg3*, %struct.tg3** %9, align 8
  %120 = getelementptr inbounds %struct.tg3, %struct.tg3* %119, i32 0, i32 2
  %121 = call i32 @spin_unlock_bh(i32* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %135

123:                                              ; preds = %43
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %126 = call i32 @tg3_hwtstamp_set(%struct.net_device* %124, %struct.ifreq* %125)
  store i32 %126, i32* %4, align 4
  br label %135

127:                                              ; preds = %43
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %130 = call i32 @tg3_hwtstamp_get(%struct.net_device* %128, %struct.ifreq* %129)
  store i32 %130, i32* %4, align 4
  br label %135

131:                                              ; preds = %43
  br label %132

132:                                              ; preds = %131, %94, %58
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %132, %127, %123, %102, %99, %66, %63, %31, %28
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.ifreq*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__tg3_readphy(%struct.tg3*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__tg3_writephy(%struct.tg3*, i32, i32, i32) #1

declare dso_local i32 @tg3_hwtstamp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @tg3_hwtstamp_get(%struct.net_device*, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
