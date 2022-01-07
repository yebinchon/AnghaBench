; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mediatek_dwmac_plat_data = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32 (%struct.platform_device*, %struct.mediatek_dwmac_plat_data.0*)*, %struct.mediatek_dwmac_plat_data*, i32, i64, i64, i32 }
%struct.mediatek_dwmac_plat_data.0 = type opaque
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Missing dwmac-mediatek variant\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@mediatek_dwmac_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mediatek_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca %struct.stmmac_resources, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mediatek_dwmac_plat_data* @devm_kzalloc(%struct.TYPE_5__* %9, i32 24, i32 %10)
  store %struct.mediatek_dwmac_plat_data* %11, %struct.mediatek_dwmac_plat_data** %4, align 8
  %12 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %13 = icmp ne %struct.mediatek_dwmac_plat_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @of_device_get_match_data(%struct.TYPE_5__* %19)
  %21 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %22 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %24 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %114

33:                                               ; preds = %17
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %37 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %36, i32 0, i32 2
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %43 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %45 = call i32 @mediatek_dwmac_config_dt(%struct.mediatek_dwmac_plat_data* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %114

50:                                               ; preds = %33
  %51 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %52 = call i32 @mediatek_dwmac_clk_init(%struct.mediatek_dwmac_plat_data* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %114

57:                                               ; preds = %50
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %58, %struct.stmmac_resources* %6)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %114

64:                                               ; preds = %57
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %6, i32 0, i32 0
  %67 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %65, i32* %66)
  store %struct.plat_stmmacenet_data* %67, %struct.plat_stmmacenet_data** %5, align 8
  %68 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %69 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %73 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %72)
  store i32 %73, i32* %2, align 4
  br label %114

74:                                               ; preds = %64
  %75 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %76 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %79 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %81 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %83 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %85 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %87 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @ETH_DATA_LEN, align 4
  %89 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %90 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %92 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %93 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %92, i32 0, i32 4
  store %struct.mediatek_dwmac_plat_data* %91, %struct.mediatek_dwmac_plat_data** %93, align 8
  %94 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %95 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %94, i32 0, i32 3
  store i32 (%struct.platform_device*, %struct.mediatek_dwmac_plat_data.0*)* bitcast (i32 (%struct.platform_device*, %struct.mediatek_dwmac_plat_data*)* @mediatek_dwmac_init to i32 (%struct.platform_device*, %struct.mediatek_dwmac_plat_data.0*)*), i32 (%struct.platform_device*, %struct.mediatek_dwmac_plat_data.0*)** %95, align 8
  %96 = load i32, i32* @mediatek_dwmac_exit, align 4
  %97 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %98 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %4, align 8
  %101 = call i32 @mediatek_dwmac_init(%struct.platform_device* %99, %struct.mediatek_dwmac_plat_data* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %105 = call i32 @stmmac_dvr_probe(%struct.TYPE_5__* %103, %struct.plat_stmmacenet_data* %104, %struct.stmmac_resources* %6)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %74
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %111 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %109, %struct.plat_stmmacenet_data* %110)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %114

113:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %108, %71, %62, %55, %48, %27, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.mediatek_dwmac_plat_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @mediatek_dwmac_config_dt(%struct.mediatek_dwmac_plat_data*) #1

declare dso_local i32 @mediatek_dwmac_clk_init(%struct.mediatek_dwmac_plat_data*) #1

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @mediatek_dwmac_init(%struct.platform_device*, %struct.mediatek_dwmac_plat_data*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.TYPE_5__*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
