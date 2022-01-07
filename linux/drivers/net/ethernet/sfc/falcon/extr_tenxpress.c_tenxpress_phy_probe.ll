; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, %struct.TYPE_2__, i32, %struct.tenxpress_phy_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tenxpress_phy_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TENXPRESS_REQUIRED_DEVS = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@SFX7101_LOOPBACKS = common dso_local global i32 0, align 4
@FALCON_XMAC_LOOPBACKS = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @tenxpress_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tenxpress_phy_probe(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.tenxpress_phy_data*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.tenxpress_phy_data* @kzalloc(i32 4, i32 %5)
  store %struct.tenxpress_phy_data* %6, %struct.tenxpress_phy_data** %4, align 8
  %7 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %8 = icmp ne %struct.tenxpress_phy_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 4
  store %struct.tenxpress_phy_data* %13, %struct.tenxpress_phy_data** %15, align 8
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %4, align 8
  %20 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @TENXPRESS_REQUIRED_DEVS, align 4
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @SFX7101_LOOPBACKS, align 4
  %30 = load i32, i32* @FALCON_XMAC_LOOPBACKS, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %33 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ADVERTISED_TP, align 4
  %35 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %40 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %12, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.tenxpress_phy_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
