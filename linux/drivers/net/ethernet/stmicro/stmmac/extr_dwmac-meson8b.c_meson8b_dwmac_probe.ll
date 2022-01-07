; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson8b.c_meson8b_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson8b.c_meson8b_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.plat_stmmacenet_data = type { %struct.meson8b_dwmac* }
%struct.meson8b_dwmac = type { i32, %struct.meson8b_dwmac_data*, i64, %struct.TYPE_5__*, %struct.plat_stmmacenet_data* }
%struct.meson8b_dwmac_data = type { i32 (%struct.meson8b_dwmac*)* }
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"missing phy-mode property\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"amlogic,tx-delay-ns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson8b_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson8b_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.meson8b_dwmac*, align 8
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
  br label %138

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
  br label %138

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.meson8b_dwmac* @devm_kzalloc(%struct.TYPE_5__* %26, i32 40, i32 %27)
  store %struct.meson8b_dwmac* %28, %struct.meson8b_dwmac** %6, align 8
  %29 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %30 = icmp ne %struct.meson8b_dwmac* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %133

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i64 @of_device_get_match_data(%struct.TYPE_5__* %36)
  %38 = inttoptr i64 %37 to %struct.meson8b_dwmac_data*
  %39 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %40 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %39, i32 0, i32 1
  store %struct.meson8b_dwmac_data* %38, %struct.meson8b_dwmac_data** %40, align 8
  %41 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %42 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %41, i32 0, i32 1
  %43 = load %struct.meson8b_dwmac_data*, %struct.meson8b_dwmac_data** %42, align 8
  %44 = icmp ne %struct.meson8b_dwmac_data* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %133

48:                                               ; preds = %34
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call %struct.plat_stmmacenet_data* @devm_platform_ioremap_resource(%struct.platform_device* %49, i32 1)
  %51 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %52 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %51, i32 0, i32 4
  store %struct.plat_stmmacenet_data* %50, %struct.plat_stmmacenet_data** %52, align 8
  %53 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %54 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %53, i32 0, i32 4
  %55 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %54, align 8
  %56 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %60 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %59, i32 0, i32 4
  %61 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %61)
  store i32 %62, i32* %7, align 4
  br label %133

63:                                               ; preds = %48
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %67 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %66, i32 0, i32 3
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @of_get_phy_mode(i32 %71)
  %73 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %74 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %76 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %133

86:                                               ; preds = %63
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %92 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %91, i32 0, i32 0
  %93 = call i64 @of_property_read_u32(i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %97 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %96, i32 0, i32 0
  store i32 2, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %86
  %99 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %100 = call i32 @meson8b_init_rgmii_tx_clk(%struct.meson8b_dwmac* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %133

104:                                              ; preds = %98
  %105 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %106 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %105, i32 0, i32 1
  %107 = load %struct.meson8b_dwmac_data*, %struct.meson8b_dwmac_data** %106, align 8
  %108 = getelementptr inbounds %struct.meson8b_dwmac_data, %struct.meson8b_dwmac_data* %107, i32 0, i32 0
  %109 = load i32 (%struct.meson8b_dwmac*)*, i32 (%struct.meson8b_dwmac*)** %108, align 8
  %110 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %111 = call i32 %109(%struct.meson8b_dwmac* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %133

115:                                              ; preds = %104
  %116 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %117 = call i32 @meson8b_init_prg_eth(%struct.meson8b_dwmac* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %133

121:                                              ; preds = %115
  %122 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %6, align 8
  %123 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %124 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %123, i32 0, i32 0
  store %struct.meson8b_dwmac* %122, %struct.meson8b_dwmac** %124, align 8
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %128 = call i32 @stmmac_dvr_probe(%struct.TYPE_5__* %126, %struct.plat_stmmacenet_data* %127, %struct.stmmac_resources* %5)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %133

132:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %138

133:                                              ; preds = %131, %120, %114, %103, %80, %58, %45, %31
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %136 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %134, %struct.plat_stmmacenet_data* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %132, %21, %12
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.meson8b_dwmac* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local %struct.plat_stmmacenet_data* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @of_get_phy_mode(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @meson8b_init_rgmii_tx_clk(%struct.meson8b_dwmac*) #1

declare dso_local i32 @meson8b_init_prg_eth(%struct.meson8b_dwmac*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.TYPE_5__*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
