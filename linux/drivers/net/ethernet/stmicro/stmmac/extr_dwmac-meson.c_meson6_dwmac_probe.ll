; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson.c_meson6_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson.c_meson6_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, %struct.meson_dwmac* }
%struct.meson_dwmac = type { %struct.plat_stmmacenet_data* }
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson6_dwmac_fix_mac_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson6_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson6_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.meson_dwmac*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %8, %struct.stmmac_resources* %5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %17 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %15, i32* %16)
  store %struct.plat_stmmacenet_data* %17, %struct.plat_stmmacenet_data** %4, align 8
  %18 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %19 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %22)
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.meson_dwmac* @devm_kzalloc(i32* %26, i32 8, i32 %27)
  store %struct.meson_dwmac* %28, %struct.meson_dwmac** %6, align 8
  %29 = load %struct.meson_dwmac*, %struct.meson_dwmac** %6, align 8
  %30 = icmp ne %struct.meson_dwmac* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %64

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call %struct.plat_stmmacenet_data* @devm_platform_ioremap_resource(%struct.platform_device* %35, i32 1)
  %37 = load %struct.meson_dwmac*, %struct.meson_dwmac** %6, align 8
  %38 = getelementptr inbounds %struct.meson_dwmac, %struct.meson_dwmac* %37, i32 0, i32 0
  store %struct.plat_stmmacenet_data* %36, %struct.plat_stmmacenet_data** %38, align 8
  %39 = load %struct.meson_dwmac*, %struct.meson_dwmac** %6, align 8
  %40 = getelementptr inbounds %struct.meson_dwmac, %struct.meson_dwmac* %39, i32 0, i32 0
  %41 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %40, align 8
  %42 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.meson_dwmac*, %struct.meson_dwmac** %6, align 8
  %46 = getelementptr inbounds %struct.meson_dwmac, %struct.meson_dwmac* %45, i32 0, i32 0
  %47 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %47)
  store i32 %48, i32* %7, align 4
  br label %64

49:                                               ; preds = %34
  %50 = load %struct.meson_dwmac*, %struct.meson_dwmac** %6, align 8
  %51 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %52 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %51, i32 0, i32 1
  store %struct.meson_dwmac* %50, %struct.meson_dwmac** %52, align 8
  %53 = load i32, i32* @meson6_dwmac_fix_mac_speed, align 4
  %54 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %55 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %59 = call i32 @stmmac_dvr_probe(i32* %57, %struct.plat_stmmacenet_data* %58, %struct.stmmac_resources* %5)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %69

64:                                               ; preds = %62, %44, %31
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %67 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %65, %struct.plat_stmmacenet_data* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %63, %21, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.meson_dwmac* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @stmmac_dvr_probe(i32*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
