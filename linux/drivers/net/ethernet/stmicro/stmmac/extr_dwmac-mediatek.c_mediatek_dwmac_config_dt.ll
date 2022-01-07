; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_config_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_config_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mediatek_dwmac_plat_data = type { i64, i32, i8*, i32, %struct.TYPE_2__*, i32, %struct.mac_delay_struct }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mac_delay_struct = type { i8*, i8*, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"mediatek,pericfg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get pericfg syscon\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"not find phy-mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"mediatek,tx-delay-ps\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid TX clock delay: %dps\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mediatek,rx-delay-ps\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid RX clock delay: %dps\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"mediatek,txc-inverse\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"mediatek,rxc-inverse\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mediatek,rmii-rxc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mediatek_dwmac_plat_data*)* @mediatek_dwmac_config_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_dwmac_config_dt(%struct.mediatek_dwmac_plat_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %4 = alloca %struct.mac_delay_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mediatek_dwmac_plat_data* %0, %struct.mediatek_dwmac_plat_data** %3, align 8
  %7 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %8 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %7, i32 0, i32 6
  store %struct.mac_delay_struct* %8, %struct.mac_delay_struct** %4, align 8
  %9 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %10 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @syscon_regmap_lookup_by_phandle(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %14 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %16 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %22 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %26 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %120

29:                                               ; preds = %1
  %30 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %31 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @of_get_phy_mode(i32 %32)
  %34 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %35 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %37 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %42 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %120

47:                                               ; preds = %29
  %48 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %49 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @of_property_read_u32(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64* %5)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %56 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %64 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %73

65:                                               ; preds = %53
  %66 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %67 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %120

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %76 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @of_property_read_u32(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64* %6)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %83 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %81, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %91 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %100

92:                                               ; preds = %80
  %93 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %94 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %120

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %74
  %102 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %103 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @of_property_read_bool(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %106 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %107 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %109 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @of_property_read_bool(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %112 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %113 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %115 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @of_property_read_bool(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %118 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %119 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %101, %92, %65, %40, %20
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_get_phy_mode(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i8* @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
