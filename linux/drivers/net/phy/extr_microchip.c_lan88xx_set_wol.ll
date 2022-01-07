; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.lan88xx_priv* }
%struct.lan88xx_priv = type { i32 }
%struct.ethtool_wolinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_wolinfo*)* @lan88xx_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan88xx_set_wol(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.lan88xx_priv*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %7, align 8
  store %struct.lan88xx_priv* %8, %struct.lan88xx_priv** %5, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %5, align 8
  %13 = getelementptr inbounds %struct.lan88xx_priv, %struct.lan88xx_priv* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
