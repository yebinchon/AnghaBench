; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_sti_dwmac_parse_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_sti_dwmac_parse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_dwmac = type { %struct.regmap*, i32, i32, i32, i8*, i8*, %struct.regmap*, i32, i32 }
%struct.regmap = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sti-clkconf\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"st,syscon\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't get sysconfig ctrl offset (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"st,gmac_en\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"st,ext-phyclk\00", align 1
@TX_RETIME_SRC_NA = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@TX_RETIME_SRC_CLKGEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"st,tx-retime-src\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Use internal clock source\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"clk_125\00", align 1
@TX_RETIME_SRC_CLK_125 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"txclk\00", align 1
@TX_RETIME_SRC_TXCLK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"sti-ethclk\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"No phy clock provided...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_dwmac*, %struct.platform_device*)* @sti_dwmac_parse_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_dwmac_parse_data(%struct.sti_dwmac* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sti_dwmac*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.sti_dwmac* %0, %struct.sti_dwmac** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %20 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %23, %struct.resource** %6, align 8
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %31 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regmap* %34, %struct.regmap** %9, align 8
  %35 = load %struct.regmap*, %struct.regmap** %9, align 8
  %36 = call i64 @IS_ERR(%struct.regmap* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.regmap*, %struct.regmap** %9, align 8
  %40 = call i32 @PTR_ERR(%struct.regmap* %39)
  store i32 %40, i32* %3, align 4
  br label %129

41:                                               ; preds = %32
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %44 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %43, i32 0, i32 7
  %45 = call i32 @of_property_read_u32_index(%struct.device_node* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %129

53:                                               ; preds = %41
  %54 = load %struct.device_node*, %struct.device_node** %8, align 8
  %55 = call i32 @of_get_phy_mode(%struct.device_node* %54)
  %56 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %57 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.regmap*, %struct.regmap** %9, align 8
  %59 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %60 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %59, i32 0, i32 6
  store %struct.regmap* %58, %struct.regmap** %60, align 8
  %61 = load %struct.device_node*, %struct.device_node** %8, align 8
  %62 = call i8* @of_property_read_bool(%struct.device_node* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %64 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.device_node*, %struct.device_node** %8, align 8
  %66 = call i8* @of_property_read_bool(%struct.device_node* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %68 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @TX_RETIME_SRC_NA, align 4
  %70 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %71 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @SPEED_100, align 4
  %73 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %74 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %76 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_PHY_IF_MODE_GBIT(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %53
  %81 = load i32, i32* @TX_RETIME_SRC_CLKGEN, align 4
  %82 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %83 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.device_node*, %struct.device_node** %8, align 8
  %85 = call i32 @of_property_read_string(%struct.device_node* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %11)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = call i32 @dev_warn(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %109

91:                                               ; preds = %80
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @strcasecmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @TX_RETIME_SRC_CLK_125, align 4
  %97 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %98 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %108

99:                                               ; preds = %91
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @strcasecmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @TX_RETIME_SRC_TXCLK, align 4
  %105 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %106 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* @SPEED_1000, align 4
  %111 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %112 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %53
  %114 = load %struct.device*, %struct.device** %7, align 8
  %115 = call %struct.regmap* @devm_clk_get(%struct.device* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %116 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %117 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %116, i32 0, i32 0
  store %struct.regmap* %115, %struct.regmap** %117, align 8
  %118 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %119 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %118, i32 0, i32 0
  %120 = load %struct.regmap*, %struct.regmap** %119, align 8
  %121 = call i64 @IS_ERR(%struct.regmap* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i32 @dev_warn(%struct.device* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %126 = load %struct.sti_dwmac*, %struct.sti_dwmac** %4, align 8
  %127 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %126, i32 0, i32 0
  store %struct.regmap* null, %struct.regmap** %127, align 8
  br label %128

128:                                              ; preds = %123, %113
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %48, %38
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_PHY_IF_MODE_GBIT(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
