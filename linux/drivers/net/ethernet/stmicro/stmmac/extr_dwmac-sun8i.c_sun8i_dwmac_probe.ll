; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)*, %struct.sunxi_priv_data*, i32, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)*, i32 }
%struct.sunxi_priv_data = type { %struct.TYPE_2__*, %struct.regmap*, %struct.regmap*, %struct.regmap* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.regmap = type { i32, i32, i32, i32 (%struct.platform_device.0*, %struct.sunxi_priv_data*)*, %struct.sunxi_priv_data*, i32, i32 (%struct.platform_device.1*, %struct.sunxi_priv_data*)*, i32 }
%struct.platform_device.0 = type opaque
%struct.platform_device.1 = type opaque
%struct.stmmac_resources = type { i32 }
%struct.stmmac_priv = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Missing dwmac-sun8i variant\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not get TX clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"No regulator found\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to map syscon: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Unable to map syscon register: %d\0A\00", align 1
@STMMAC_RX_COE_TYPE2 = common dso_local global i32 0, align 4
@sun8i_dwmac_setup = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to register mux\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun8i_dwmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dwmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.sunxi_priv_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stmmac_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %14, %struct.stmmac_resources* %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %250

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %23 = call %struct.regmap* @stmmac_probe_config_dt(%struct.platform_device* %21, i32* %22)
  %24 = bitcast %struct.regmap* %23 to %struct.plat_stmmacenet_data*
  store %struct.plat_stmmacenet_data* %24, %struct.plat_stmmacenet_data** %4, align 8
  %25 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %26 = bitcast %struct.plat_stmmacenet_data* %25 to %struct.regmap*
  %27 = call i64 @IS_ERR(%struct.regmap* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %31 = bitcast %struct.plat_stmmacenet_data* %30 to %struct.regmap*
  %32 = call i32 @PTR_ERR(%struct.regmap* %31)
  store i32 %32, i32* %2, align 4
  br label %250

33:                                               ; preds = %20
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sunxi_priv_data* @devm_kzalloc(%struct.device* %34, i32 32, i32 %35)
  store %struct.sunxi_priv_data* %36, %struct.sunxi_priv_data** %6, align 8
  %37 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %38 = icmp ne %struct.sunxi_priv_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %250

42:                                               ; preds = %33
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %44)
  %46 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %47 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %46, i32 0, i32 0
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %49 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %250

58:                                               ; preds = %42
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call %struct.regmap* @devm_clk_get(%struct.device* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %62 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %61, i32 0, i32 3
  store %struct.regmap* %60, %struct.regmap** %62, align 8
  %63 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %64 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %63, i32 0, i32 3
  %65 = load %struct.regmap*, %struct.regmap** %64, align 8
  %66 = call i64 @IS_ERR(%struct.regmap* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %72 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %71, i32 0, i32 3
  %73 = load %struct.regmap*, %struct.regmap** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.regmap* %73)
  store i32 %74, i32* %2, align 4
  br label %250

75:                                               ; preds = %58
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call %struct.regmap* @devm_regulator_get_optional(%struct.device* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %79 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %78, i32 0, i32 2
  store %struct.regmap* %77, %struct.regmap** %79, align 8
  %80 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %81 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %80, i32 0, i32 2
  %82 = load %struct.regmap*, %struct.regmap** %81, align 8
  %83 = call i64 @IS_ERR(%struct.regmap* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %75
  %86 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %87 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %86, i32 0, i32 2
  %88 = load %struct.regmap*, %struct.regmap** %87, align 8
  %89 = call i32 @PTR_ERR(%struct.regmap* %88)
  %90 = load i32, i32* @EPROBE_DEFER, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %250

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %100 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %99, i32 0, i32 2
  store %struct.regmap* null, %struct.regmap** %100, align 8
  br label %101

101:                                              ; preds = %96, %75
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.regmap* @sun8i_dwmac_get_syscon_from_dev(i32 %105)
  store %struct.regmap* %106, %struct.regmap** %11, align 8
  %107 = load %struct.regmap*, %struct.regmap** %11, align 8
  %108 = call i64 @IS_ERR(%struct.regmap* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store %struct.regmap* %115, %struct.regmap** %11, align 8
  br label %116

116:                                              ; preds = %110, %101
  %117 = load %struct.regmap*, %struct.regmap** %11, align 8
  %118 = call i64 @IS_ERR(%struct.regmap* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load %struct.regmap*, %struct.regmap** %11, align 8
  %122 = call i32 @PTR_ERR(%struct.regmap* %121)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %250

128:                                              ; preds = %116
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load %struct.regmap*, %struct.regmap** %11, align 8
  %131 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %132 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.regmap* @devm_regmap_field_alloc(%struct.device* %129, %struct.regmap* %130, i32 %136)
  %138 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %139 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %138, i32 0, i32 1
  store %struct.regmap* %137, %struct.regmap** %139, align 8
  %140 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %141 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %140, i32 0, i32 1
  %142 = load %struct.regmap*, %struct.regmap** %141, align 8
  %143 = call i64 @IS_ERR(%struct.regmap* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %128
  %146 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %147 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %146, i32 0, i32 1
  %148 = load %struct.regmap*, %struct.regmap** %147, align 8
  %149 = call i32 @PTR_ERR(%struct.regmap* %148)
  store i32 %149, i32* %8, align 4
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %250

154:                                              ; preds = %128
  %155 = load %struct.device*, %struct.device** %7, align 8
  %156 = getelementptr inbounds %struct.device, %struct.device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @of_get_phy_mode(i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %250

164:                                              ; preds = %154
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %167 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @STMMAC_RX_COE_TYPE2, align 4
  %169 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %170 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %172 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %174 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %176 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %177 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %176, i32 0, i32 4
  store %struct.sunxi_priv_data* %175, %struct.sunxi_priv_data** %177, align 8
  %178 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %179 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %178, i32 0, i32 3
  store i32 (%struct.platform_device*, %struct.sunxi_priv_data*)* @sun8i_dwmac_init, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)** %179, align 8
  %180 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %181 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %180, i32 0, i32 6
  store i32 (%struct.platform_device*, %struct.sunxi_priv_data*)* @sun8i_dwmac_exit, i32 (%struct.platform_device*, %struct.sunxi_priv_data*)** %181, align 8
  %182 = load i32, i32* @sun8i_dwmac_setup, align 4
  %183 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %184 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %187 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %186, i32 0, i32 4
  %188 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %187, align 8
  %189 = call i32 @sun8i_dwmac_init(%struct.platform_device* %185, %struct.sunxi_priv_data* %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %164
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %2, align 4
  br label %250

194:                                              ; preds = %164
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %198 = bitcast %struct.plat_stmmacenet_data* %197 to %struct.regmap*
  %199 = call i32 @stmmac_dvr_probe(%struct.device* %196, %struct.regmap* %198, %struct.stmmac_resources* %5)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %243

203:                                              ; preds = %194
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call %struct.net_device* @dev_get_drvdata(%struct.device* %205)
  store %struct.net_device* %206, %struct.net_device** %10, align 8
  %207 = load %struct.net_device*, %struct.net_device** %10, align 8
  %208 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %207)
  store %struct.stmmac_priv* %208, %struct.stmmac_priv** %9, align 8
  %209 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %210 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %203
  %216 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %217 = call i32 @get_ephy_nodes(%struct.stmmac_priv* %216)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %243

221:                                              ; preds = %215
  %222 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %223 = call i32 @sun8i_dwmac_register_mdio_mux(%struct.stmmac_priv* %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %228, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %240

230:                                              ; preds = %221
  br label %238

231:                                              ; preds = %203
  %232 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %233 = call i32 @sun8i_dwmac_reset(%struct.stmmac_priv* %232)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %243

237:                                              ; preds = %231
  br label %238

238:                                              ; preds = %237, %230
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %2, align 4
  br label %250

240:                                              ; preds = %226
  %241 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %242 = call i32 @sun8i_dwmac_unset_syscon(%struct.sunxi_priv_data* %241)
  br label %243

243:                                              ; preds = %240, %236, %220, %202
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %246 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %245, i32 0, i32 4
  %247 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %246, align 8
  %248 = call i32 @sun8i_dwmac_exit(%struct.platform_device* %244, %struct.sunxi_priv_data* %247)
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %243, %238, %192, %161, %145, %120, %93, %68, %52, %39, %29, %18
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.regmap* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.sunxi_priv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @sun8i_dwmac_get_syscon_from_dev(i32) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local %struct.regmap* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local i32 @sun8i_dwmac_init(%struct.platform_device*, %struct.sunxi_priv_data*) #1

declare dso_local i32 @sun8i_dwmac_exit(%struct.platform_device*, %struct.sunxi_priv_data*) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.device*, %struct.regmap*, %struct.stmmac_resources*) #1

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_ephy_nodes(%struct.stmmac_priv*) #1

declare dso_local i32 @sun8i_dwmac_register_mdio_mux(%struct.stmmac_priv*) #1

declare dso_local i32 @sun8i_dwmac_reset(%struct.stmmac_priv*) #1

declare dso_local i32 @sun8i_dwmac_unset_syscon(%struct.sunxi_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
