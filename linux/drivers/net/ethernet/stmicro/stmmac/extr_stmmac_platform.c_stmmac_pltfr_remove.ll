; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_platform.c_stmmac_pltfr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_platform.c_stmmac_pltfr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { %struct.plat_stmmacenet_data* }
%struct.plat_stmmacenet_data = type { i32, i32 (%struct.platform_device*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_pltfr_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.stmmac_priv* %10, %struct.stmmac_priv** %4, align 8
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 0
  %13 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %12, align 8
  store %struct.plat_stmmacenet_data* %13, %struct.plat_stmmacenet_data** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @stmmac_dvr_remove(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %18 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %17, i32 0, i32 1
  %19 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.platform_device*, i32)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %22, i32 0, i32 1
  %24 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %23, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %27 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %24(%struct.platform_device* %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %33 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %31, %struct.plat_stmmacenet_data* %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_dvr_remove(i32*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
