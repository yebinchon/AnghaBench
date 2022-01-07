; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_restore_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_restore_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i64, i64, i32 }

@PHY_OUI_REALTEK = common dso_local global i64 0, align 8
@PHY_MODEL_REALTEK_8201 = common dso_local global i64 0, align 8
@phy_cross = common dso_local global i64 0, align 8
@NV_CROSSOVER_DETECTION_DISABLED = common dso_local global i64 0, align 8
@PHY_REALTEK_INIT_REG1 = common dso_local global i32 0, align 4
@PHY_REALTEK_INIT3 = common dso_local global i32 0, align 4
@PHY_REALTEK_INIT_REG2 = common dso_local global i32 0, align 4
@MII_READ = common dso_local global i32 0, align 4
@PHY_REALTEK_INIT_MSK1 = common dso_local global i32 0, align 4
@PHY_REALTEK_INIT8 = common dso_local global i32 0, align 4
@PHY_REALTEK_INIT1 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nv_restore_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_restore_phy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.fe_priv* %7, %struct.fe_priv** %3, align 8
  %8 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %9 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PHY_OUI_REALTEK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %78

13:                                               ; preds = %1
  %14 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %15 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PHY_MODEL_REALTEK_8201, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %13
  %20 = load i64, i64* @phy_cross, align 8
  %21 = load i64, i64* @NV_CROSSOVER_DETECTION_DISABLED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %26 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PHY_REALTEK_INIT_REG1, align 4
  %29 = load i32, i32* @PHY_REALTEK_INIT3, align 4
  %30 = call i32 @mii_rw(%struct.net_device* %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %33 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PHY_REALTEK_INIT_REG2, align 4
  %36 = load i32, i32* @MII_READ, align 4
  %37 = call i32 @mii_rw(%struct.net_device* %31, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PHY_REALTEK_INIT_MSK1, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PHY_REALTEK_INIT8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %47 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PHY_REALTEK_INIT_REG2, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @mii_rw(%struct.net_device* %45, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %54 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PHY_REALTEK_INIT_REG1, align 4
  %57 = load i32, i32* @PHY_REALTEK_INIT1, align 4
  %58 = call i32 @mii_rw(%struct.net_device* %52, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %61 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MII_BMCR, align 4
  %64 = load i32, i32* @MII_READ, align 4
  %65 = call i32 @mii_rw(%struct.net_device* %59, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @BMCR_ANRESTART, align 4
  %67 = load i32, i32* @BMCR_ANENABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %73 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MII_BMCR, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @mii_rw(%struct.net_device* %71, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %23, %19, %13, %1
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_rw(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
