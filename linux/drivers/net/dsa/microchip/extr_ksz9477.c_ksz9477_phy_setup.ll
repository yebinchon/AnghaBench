; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32 }
%struct.phy_device = type { i32 }

@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@GBIT_SUPPORT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, %struct.phy_device*)* @ksz9477_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_phy_setup(%struct.ksz_device* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %9 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %27

13:                                               ; preds = %3
  %14 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %15 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %16 = call i32 @phy_remove_link_mode(%struct.phy_device* %14, i32 %15)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %18 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GBIT_SUPPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %25 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %26 = call i32 @phy_remove_link_mode(%struct.phy_device* %24, i32 %25)
  br label %27

27:                                               ; preds = %12, %23, %13
  ret void
}

declare dso_local i32 @phy_remove_link_mode(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
