; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_pdata_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_pdata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.bcmgenet_platform_data* }
%struct.bcmgenet_platform_data = type { i64, i32, i64 }
%struct.unimac_mdio_pdata = type { i32 }

@PHY_INTERFACE_MODE_MOCA = common dso_local global i64 0, align 8
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*, %struct.unimac_mdio_pdata*)* @bcmgenet_mii_pdata_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_mii_pdata_init(%struct.bcmgenet_priv* %0, %struct.unimac_mdio_pdata* %1) #0 {
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.unimac_mdio_pdata*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcmgenet_platform_data*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  store %struct.unimac_mdio_pdata* %1, %struct.unimac_mdio_pdata** %4, align 8
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %12, align 8
  store %struct.bcmgenet_platform_data* %13, %struct.bcmgenet_platform_data** %6, align 8
  %14 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PHY_INTERFACE_MODE_MOCA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %6, align 8
  %26 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PHY_MAX_ADDR, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %6, align 8
  %37 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 1, %38
  %40 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %45

42:                                               ; preds = %29, %24
  %43 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %44 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
