; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_rockchip.c_emac_rockchip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_rockchip.c_emac_rockchip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.rockchip_priv_data = type { i32*, i32*, i32*, %struct.TYPE_4__*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32, i32 }
%struct.of_device_id = type { %struct.TYPE_4__* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@emac_rockchip_set_mac_speed = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported phy interface mode %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to retrieve global register file (%ld)\0A\00", align 1
@emac_rockchip_dt_ids = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to retrieve host clock (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"macref\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to retrieve reference clock (%ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"failed to enable reference clock (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"no regulator found\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to enable phy-supply (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"unable to apply initial settings to grf (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"failed to change reference clock rate (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"macclk\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"failed to retrieve mac clock (%ld)\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to enable mac clock (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"failed to change mac clock rate (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to probe arc emac (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @emac_rockchip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_rockchip_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rockchip_priv_data*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %351

21:                                               ; preds = %1
  %22 = call %struct.net_device* @alloc_etherdev(i32 64)
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %351

28:                                               ; preds = %21
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @SET_NETDEV_DEV(%struct.net_device* %32, %struct.device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call %struct.rockchip_priv_data* @netdev_priv(%struct.net_device* %35)
  store %struct.rockchip_priv_data* %36, %struct.rockchip_priv_data** %6, align 8
  %37 = load i32, i32* @DRV_NAME, align 4
  %38 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %39 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @DRV_VERSION, align 4
  %42 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %43 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @emac_rockchip_set_mac_speed, align 4
  %46 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %47 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @of_get_phy_mode(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %28
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %347

62:                                               ; preds = %28
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @syscon_regmap_lookup_by_phandle(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %68 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %70 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %77 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %82 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @PTR_ERR(i32* %83)
  store i32 %84, i32* %9, align 4
  br label %347

85:                                               ; preds = %62
  %86 = load i32, i32* @emac_rockchip_dt_ids, align 4
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.of_device_id* @of_match_node(i32 %86, i32 %89)
  store %struct.of_device_id* %90, %struct.of_device_id** %7, align 8
  %91 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %92 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %95 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %94, i32 0, i32 3
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %95, align 8
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i8* @devm_clk_get(%struct.device* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %100 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %103 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @IS_ERR(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %85
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %111 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @PTR_ERR(i32* %113)
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %117 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @PTR_ERR(i32* %119)
  store i32 %120, i32* %9, align 4
  br label %347

121:                                              ; preds = %85
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @devm_clk_get(%struct.device* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %126 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  %127 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %128 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @IS_ERR(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %121
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %135 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @PTR_ERR(i32* %136)
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %140 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @PTR_ERR(i32* %141)
  store i32 %142, i32* %9, align 4
  br label %347

143:                                              ; preds = %121
  %144 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %145 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @clk_prepare_enable(i32* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %347

154:                                              ; preds = %143
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32* @devm_regulator_get_optional(%struct.device* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %157 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %158 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %157, i32 0, i32 1
  store i32* %156, i32** %158, align 8
  %159 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %160 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @IS_ERR(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %154
  %165 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %166 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @PTR_ERR(i32* %167)
  %169 = load i32, i32* @EPROBE_DEFER, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32, i32* @EPROBE_DEFER, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %9, align 4
  br label %342

175:                                              ; preds = %164
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %178 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %179 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %175, %154
  %181 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %182 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %187 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @regulator_enable(i32* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  br label %342

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196, %180
  %198 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %199 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %198, i32 0, i32 3
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 16
  %204 = shl i32 1, %203
  %205 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %206 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %205, i32 0, i32 3
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = shl i32 1, %209
  %211 = or i32 %204, %210
  store i32 %211, i32* %8, align 4
  %212 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %213 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %212, i32 0, i32 3
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 16
  %218 = shl i32 1, %217
  %219 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %220 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %219, i32 0, i32 3
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 0, %223
  %225 = or i32 %218, %224
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %229 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %232 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %231, i32 0, i32 3
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @regmap_write(i32* %230, i32 %235, i32 %236)
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %197
  %241 = load %struct.device*, %struct.device** %4, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %241, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %242)
  br label %331

244:                                              ; preds = %197
  %245 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %246 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @clk_set_rate(i32* %247, i32 50000000)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load %struct.device*, %struct.device** %4, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %252, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %253)
  br label %331

255:                                              ; preds = %244
  %256 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %257 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %256, i32 0, i32 3
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %307

262:                                              ; preds = %255
  %263 = load %struct.device*, %struct.device** %4, align 8
  %264 = call i8* @devm_clk_get(%struct.device* %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %265 = bitcast i8* %264 to i32*
  %266 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %267 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %266, i32 0, i32 2
  store i32* %265, i32** %267, align 8
  %268 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %269 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = call i64 @IS_ERR(i32* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %262
  %274 = load %struct.device*, %struct.device** %4, align 8
  %275 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %276 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @PTR_ERR(i32* %277)
  %279 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %274, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %278)
  %280 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %281 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @PTR_ERR(i32* %282)
  store i32 %283, i32* %9, align 4
  br label %331

284:                                              ; preds = %262
  %285 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %286 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @clk_prepare_enable(i32* %287)
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* %9, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load %struct.device*, %struct.device** %4, align 8
  %293 = load i32, i32* %9, align 4
  %294 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %292, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %293)
  br label %331

295:                                              ; preds = %284
  %296 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %297 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @clk_set_rate(i32* %298, i32 25000000)
  store i32 %299, i32* %9, align 4
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load %struct.device*, %struct.device** %4, align 8
  %304 = load i32, i32* %9, align 4
  %305 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %303, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %304)
  br label %318

306:                                              ; preds = %295
  br label %307

307:                                              ; preds = %306, %255
  %308 = load %struct.net_device*, %struct.net_device** %5, align 8
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @arc_emac_probe(%struct.net_device* %308, i32 %309)
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %307
  %314 = load %struct.device*, %struct.device** %4, align 8
  %315 = load i32, i32* %9, align 4
  %316 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %314, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %315)
  br label %318

317:                                              ; preds = %307
  store i32 0, i32* %2, align 4
  br label %351

318:                                              ; preds = %313, %302
  %319 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %320 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %319, i32 0, i32 3
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  %326 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %327 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = call i32 @clk_disable_unprepare(i32* %328)
  br label %330

330:                                              ; preds = %325, %318
  br label %331

331:                                              ; preds = %330, %291, %273, %251, %240
  %332 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %333 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %338 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = call i32 @regulator_disable(i32* %339)
  br label %341

341:                                              ; preds = %336, %331
  br label %342

342:                                              ; preds = %341, %192, %172
  %343 = load %struct.rockchip_priv_data*, %struct.rockchip_priv_data** %6, align 8
  %344 = getelementptr inbounds %struct.rockchip_priv_data, %struct.rockchip_priv_data* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @clk_disable_unprepare(i32* %345)
  br label %347

347:                                              ; preds = %342, %150, %132, %108, %74, %56
  %348 = load %struct.net_device*, %struct.net_device** %5, align 8
  %349 = call i32 @free_netdev(%struct.net_device* %348)
  %350 = load i32, i32* %9, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %347, %317, %25, %18
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.rockchip_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regmap_write(i32*, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32*, i32) #1

declare dso_local i32 @arc_emac_probe(%struct.net_device*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
