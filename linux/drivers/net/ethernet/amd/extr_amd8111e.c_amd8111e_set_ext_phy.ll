; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_set_ext_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_set_ext_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @amd8111e_set_ext_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_set_ext_phy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.amd8111e_priv* %8, %struct.amd8111e_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %11 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MII_ADVERTISE, align 4
  %14 = call i32 @amd8111e_mdio_read(%struct.net_device* %9, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ADVERTISE_ALL, align 4
  %17 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %22 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %24 [
    i32 128, label %25
    i32 129, label %35
    i32 130, label %39
    i32 131, label %43
    i32 132, label %47
  ]

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %1, %24
  %26 = load i32, i32* @ADVERTISE_10HALF, align 4
  %27 = load i32, i32* @ADVERTISE_10FULL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ADVERTISE_100HALF, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ADVERTISE_100FULL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %51

35:                                               ; preds = %1
  %36 = load i32, i32* @ADVERTISE_10HALF, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %51

39:                                               ; preds = %1
  %40 = load i32, i32* @ADVERTISE_10FULL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %51

43:                                               ; preds = %1
  %44 = load i32, i32* @ADVERTISE_100HALF, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %1
  %48 = load i32, i32* @ADVERTISE_100FULL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %43, %39, %35, %25
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %58 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MII_ADVERTISE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @amd8111e_mdio_write(%struct.net_device* %56, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %66 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MII_BMCR, align 4
  %69 = call i32 @amd8111e_mdio_read(%struct.net_device* %64, i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @BMCR_ANENABLE, align 4
  %71 = load i32, i32* @BMCR_ANRESTART, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %77 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MII_BMCR, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @amd8111e_mdio_write(%struct.net_device* %75, i32 %78, i32 %79, i32 %80)
  ret void
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @amd8111e_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @amd8111e_mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
