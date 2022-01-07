; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.hns_mac_cb = type { i32, i32, i64, i32, %struct.TYPE_11__*, i32, i32, i64, i32, %struct.regmap*, i64, i64, %struct.regmap*, %struct.TYPE_9__*, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.regmap = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32*, %struct.device_node* }

@HNAE_MEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@mac_phy_to_speed = common dso_local global i32* null, align 8
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MAC_GMAC_SUPPORTED = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@SUPPORTED_10000baseR_FEC = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@MAC_DEFAULT_MTU = common dso_local global i32 0, align 4
@MAC_DEFAULT_PAUSE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"mac%d phy_node: %pOFn\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"serdes-syscon\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"serdes-syscon is needed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"port-rst-offset\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"mac%d port-rst-offset not found, use default value.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"port-mode-offset\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"mac%d port-mode-offset not found, use default value.\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cpld-syscon\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"mac%d no cpld-syscon found.\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"no cpld-syscon found!\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"mac%d cannot find phy node\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"media-type\00", align 1
@media_type_defs = common dso_local global %struct.TYPE_10__* null, align 8
@MAC_MEDIA_TYPE_MAX_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"mc-mac-mask\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"no mc-mac-mask property, set to default value.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*)* @hns_mac_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_get_info(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_mac_cb*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %3, align 8
  %10 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %11 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @HNAE_MEDIA_TYPE_UNKNOWN, align 4
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** @mac_phy_to_speed, align 8
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %19 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 17
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %26 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %29 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %28, i32 0, i32 18
  store i32 %27, i32* %29, align 8
  %30 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %31 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load i32, i32* @MAC_GMAC_SUPPORTED, align 4
  %37 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %38 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %40 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %41 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %60

44:                                               ; preds = %1
  %45 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %46 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @SUPPORTED_10000baseR_FEC, align 4
  %52 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %53 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %52, i32 0, i32 16
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %55 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %56 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %50, %44
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* @MAC_DEFAULT_MTU, align 4
  %62 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %63 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %62, i32 0, i32 15
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @MAC_DEFAULT_PAUSE_TIME, align 4
  %65 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %66 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %68 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %71 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %70, i32 0, i32 11
  store i64 %69, i64* %71, align 8
  %72 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %73 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %75 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %60
  %79 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %80 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %79, i32 0, i32 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %85 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = call %struct.device_node* @of_parse_phandle(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %86)
  store %struct.device_node* %87, %struct.device_node** %4, align 8
  %88 = load %struct.device_node*, %struct.device_node** %4, align 8
  %89 = call i8* @of_phy_find_device(%struct.device_node* %88)
  %90 = bitcast i8* %89 to %struct.TYPE_9__*
  %91 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %92 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %91, i32 0, i32 13
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %92, align 8
  %93 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %94 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %93, i32 0, i32 13
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = icmp ne %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %78
  %98 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %99 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %98, i32 0, i32 13
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @put_device(i32* %102)
  %104 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %105 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %104, i32 0, i32 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %108 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.device_node*, %struct.device_node** %4, align 8
  %111 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %109, %struct.device_node* %110)
  br label %112

112:                                              ; preds = %97, %78
  %113 = load %struct.device_node*, %struct.device_node** %4, align 8
  %114 = call i32 @of_node_put(%struct.device_node* %113)
  store i32 0, i32* %2, align 4
  br label %336

115:                                              ; preds = %60
  %116 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %117 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @is_of_node(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %254

121:                                              ; preds = %115
  %122 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %123 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @to_of_node(i32 %124)
  %126 = call %struct.device_node* @of_parse_phandle(i32 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 0)
  store %struct.device_node* %126, %struct.device_node** %4, align 8
  %127 = load %struct.device_node*, %struct.device_node** %4, align 8
  %128 = call i8* @of_phy_find_device(%struct.device_node* %127)
  %129 = bitcast i8* %128 to %struct.TYPE_9__*
  %130 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %131 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %130, i32 0, i32 13
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %131, align 8
  %132 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %133 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %132, i32 0, i32 13
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %121
  %137 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %138 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %137, i32 0, i32 13
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = call i32 @put_device(i32* %141)
  %143 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %144 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %143, i32 0, i32 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %147 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.device_node*, %struct.device_node** %4, align 8
  %150 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %148, %struct.device_node* %149)
  br label %151

151:                                              ; preds = %136, %121
  %152 = load %struct.device_node*, %struct.device_node** %4, align 8
  %153 = call i32 @of_node_put(%struct.device_node* %152)
  %154 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %155 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @to_of_node(i32 %156)
  %158 = call %struct.device_node* @of_parse_phandle(i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 0)
  store %struct.device_node* %158, %struct.device_node** %4, align 8
  %159 = load %struct.device_node*, %struct.device_node** %4, align 8
  %160 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %159)
  store %struct.regmap* %160, %struct.regmap** %5, align 8
  %161 = load %struct.device_node*, %struct.device_node** %4, align 8
  %162 = call i32 @of_node_put(%struct.device_node* %161)
  %163 = load %struct.regmap*, %struct.regmap** %5, align 8
  %164 = call i64 @IS_ERR_OR_NULL(%struct.regmap* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %151
  %167 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %168 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %167, i32 0, i32 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %336

173:                                              ; preds = %151
  %174 = load %struct.regmap*, %struct.regmap** %5, align 8
  %175 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %176 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %175, i32 0, i32 12
  store %struct.regmap* %174, %struct.regmap** %176, align 8
  %177 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %178 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %181 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %180, i32 0, i32 11
  %182 = call i32 @fwnode_property_read_u32(i32 %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %173
  %186 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %187 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %186, i32 0, i32 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %190 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %188, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %191)
  br label %193

193:                                              ; preds = %185, %173
  %194 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %195 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %198 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %197, i32 0, i32 10
  %199 = call i32 @fwnode_property_read_u32(i32 %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64* %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %193
  %203 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %204 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %203, i32 0, i32 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %207 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %206, i32 0, i32 7
  %208 = load i64, i64* %207, align 8
  %209 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %205, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %208)
  br label %210

210:                                              ; preds = %202, %193
  %211 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %212 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @to_of_node(i32 %213)
  %215 = call i32 @of_parse_phandle_with_fixed_args(i32 %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1, i32 0, %struct.of_phandle_args* %6)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %210
  %219 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %220 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %219, i32 0, i32 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %223 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %221, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %224)
  %226 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %227 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %226, i32 0, i32 9
  store %struct.regmap* null, %struct.regmap** %227, align 8
  br label %253

228:                                              ; preds = %210
  %229 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %230 = load %struct.device_node*, %struct.device_node** %229, align 8
  %231 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %230)
  store %struct.regmap* %231, %struct.regmap** %5, align 8
  %232 = load %struct.regmap*, %struct.regmap** %5, align 8
  %233 = call i64 @IS_ERR_OR_NULL(%struct.regmap* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %228
  %236 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %237 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %236, i32 0, i32 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %240 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %241 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %240, i32 0, i32 9
  store %struct.regmap* null, %struct.regmap** %241, align 8
  br label %252

242:                                              ; preds = %228
  %243 = load %struct.regmap*, %struct.regmap** %5, align 8
  %244 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %245 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %244, i32 0, i32 9
  store %struct.regmap* %243, %struct.regmap** %245, align 8
  %246 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %251 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %242, %235
  br label %253

253:                                              ; preds = %252, %218
  br label %279

254:                                              ; preds = %115
  %255 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %256 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @is_acpi_node(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %262 = call i32 @hns_mac_register_phy(%struct.hns_mac_cb* %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @EPROBE_DEFER, align 4
  %265 = sub nsw i32 0, %264
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i32, i32* %9, align 4
  store i32 %268, i32* %2, align 4
  br label %336

269:                                              ; preds = %260
  br label %278

270:                                              ; preds = %254
  %271 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %272 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %271, i32 0, i32 4
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %272, align 8
  %274 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %275 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %273, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i64 %276)
  br label %278

278:                                              ; preds = %270, %269
  br label %279

279:                                              ; preds = %278, %253
  %280 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %281 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @fwnode_property_read_string(i32 %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %7)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %316, label %285

285:                                              ; preds = %279
  store i32 0, i32* %8, align 4
  br label %286

286:                                              ; preds = %312, %285
  %287 = load i32, i32* %8, align 4
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** @media_type_defs, align 8
  %289 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %288)
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %291, label %315

291:                                              ; preds = %286
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** @media_type_defs, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i8*, i8** %7, align 8
  %299 = load i32, i32* @MAC_MEDIA_TYPE_MAX_LEN, align 4
  %300 = call i32 @strncmp(i32 %297, i8* %298, i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %311, label %302

302:                                              ; preds = %291
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** @media_type_defs, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %310 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %309, i32 0, i32 6
  store i32 %308, i32* %310, align 4
  br label %315

311:                                              ; preds = %291
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %8, align 4
  br label %286

315:                                              ; preds = %302, %286
  br label %316

316:                                              ; preds = %315, %279
  %317 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %318 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %321 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @ETH_ALEN, align 4
  %324 = call i64 @fwnode_property_read_u8_array(i32 %319, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %322, i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %316
  %327 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %328 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %327, i32 0, i32 4
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %328, align 8
  %330 = call i32 @dev_warn(%struct.TYPE_11__* %329, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %331 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %332 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @eth_broadcast_addr(i32 %333)
  br label %335

335:                                              ; preds = %326, %316
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %335, %267, %166, %112
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i64) #1

declare dso_local i8* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @is_of_node(i32) #1

declare dso_local i32 @to_of_node(i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @fwnode_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i64 @is_acpi_node(i32) #1

declare dso_local i32 @hns_mac_register_phy(%struct.hns_mac_cb*) #1

declare dso_local i32 @fwnode_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @fwnode_property_read_u8_array(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
