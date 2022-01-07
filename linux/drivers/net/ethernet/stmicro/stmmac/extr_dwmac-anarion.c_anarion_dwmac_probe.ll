; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-anarion.c_anarion_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-anarion.c_anarion_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.anarion_gmac = type { %struct.anarion_gmac*, i32, i32 (%struct.platform_device*, %struct.plat_stmmacenet_data*)* }
%struct.plat_stmmacenet_data = type { %struct.plat_stmmacenet_data*, i32, {}* }
%struct.stmmac_resources = type { i32 }

@anarion_gmac_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @anarion_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anarion_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.anarion_gmac*, align 8
  %6 = alloca %struct.plat_stmmacenet_data*, align 8
  %7 = alloca %struct.stmmac_resources, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %8, %struct.stmmac_resources* %7)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call %struct.plat_stmmacenet_data* @anarion_config_dt(%struct.platform_device* %15)
  %17 = bitcast %struct.plat_stmmacenet_data* %16 to %struct.anarion_gmac*
  store %struct.anarion_gmac* %17, %struct.anarion_gmac** %5, align 8
  %18 = load %struct.anarion_gmac*, %struct.anarion_gmac** %5, align 8
  %19 = bitcast %struct.anarion_gmac* %18 to %struct.plat_stmmacenet_data*
  %20 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.anarion_gmac*, %struct.anarion_gmac** %5, align 8
  %24 = bitcast %struct.anarion_gmac* %23 to %struct.plat_stmmacenet_data*
  %25 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %24)
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %14
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %7, i32 0, i32 0
  %29 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %27, i32* %28)
  store %struct.plat_stmmacenet_data* %29, %struct.plat_stmmacenet_data** %6, align 8
  %30 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %31 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %34)
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %37, i32 0, i32 2
  %39 = bitcast {}** %38 to i32 (%struct.platform_device*, %struct.plat_stmmacenet_data*)**
  store i32 (%struct.platform_device*, %struct.plat_stmmacenet_data*)* @anarion_gmac_init, i32 (%struct.platform_device*, %struct.plat_stmmacenet_data*)** %39, align 8
  %40 = load i32, i32* @anarion_gmac_exit, align 4
  %41 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %42 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.anarion_gmac*, %struct.anarion_gmac** %5, align 8
  %45 = bitcast %struct.anarion_gmac* %44 to %struct.plat_stmmacenet_data*
  %46 = call i32 @anarion_gmac_init(%struct.platform_device* %43, %struct.plat_stmmacenet_data* %45)
  %47 = load %struct.anarion_gmac*, %struct.anarion_gmac** %5, align 8
  %48 = bitcast %struct.anarion_gmac* %47 to %struct.plat_stmmacenet_data*
  %49 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %50 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %49, i32 0, i32 0
  store %struct.plat_stmmacenet_data* %48, %struct.plat_stmmacenet_data** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %54 = call i32 @stmmac_dvr_probe(i32* %52, %struct.plat_stmmacenet_data* %53, %struct.stmmac_resources* %7)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %60 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %58, %struct.plat_stmmacenet_data* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %57, %33, %22, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @anarion_config_dt(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i32 @anarion_gmac_init(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
