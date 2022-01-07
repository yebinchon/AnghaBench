; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_mac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_mac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mac_device = type { i32, i32, i32 (%struct.mac_device*)*, i32, i32, i32, i32, i32, i32, %struct.device_node*, i32*, %struct.TYPE_7__*, %struct.mac_priv_s* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.mac_priv_s = type { i32, i32, i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i8*, %struct.device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i64, i64 }
%struct.phy_device = type { %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fsl,fman-dtsec\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tbi-handle\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fsl,fman-xgec\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fsl,fman-memac\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pcsphy-handle\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"MAC node (%pOF) contains unsupported MAC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"of_get_parent(%pOF) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"of_find_device_by_node(%pOF) failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to read cell-index for %pOF\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"fman_bind(%pOF) failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"of_address_to_resource(%pOF) = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"__devm_request_mem_region(mac) failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"devm_ioremap() failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"of_get_mac_address(%pOF) failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"fsl,fman-ports\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"of_count_phandle_with_args(%pOF, fsl,fman-ports) failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"Not supported number of fman-ports handles of mac node %pOF from device tree\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"of_parse_phandle(%pOF, fsl,fman-ports) failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"dev_get_drvdata(%pOF) failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"of_get_phy_mode() for %pOF failed. Defaulting to SGMII\0A\00", align 1
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@phy2speed = common dso_local global i32* null, align 8
@DTSEC_SUPPORTED = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"mac_dev->init() = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"fman_set_mac_active_pause() = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"FMan MAC address: %pM\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"failed to add Ethernet platform device for MAC %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.mac_device*, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.resource, align 8
  %12 = alloca %struct.mac_priv_s*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.phy_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %7, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kzalloc(%struct.device* %23, i32 72, i32 %24)
  %26 = bitcast i8* %25 to %struct.mac_device*
  store %struct.mac_device* %26, %struct.mac_device** %9, align 8
  %27 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %28 = icmp ne %struct.mac_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %560

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.device* %33, i32 64, i32 %34)
  %36 = bitcast i8* %35 to %struct.mac_priv_s*
  store %struct.mac_priv_s* %36, %struct.mac_priv_s** %12, align 8
  %37 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %38 = icmp ne %struct.mac_priv_s* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %560

42:                                               ; preds = %32
  %43 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %44 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %45 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %44, i32 0, i32 12
  store %struct.mac_priv_s* %43, %struct.mac_priv_s** %45, align 8
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %48 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %47, i32 0, i32 9
  store %struct.device* %46, %struct.device** %48, align 8
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = call i64 @of_device_is_compatible(%struct.device_node* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %54 = call i32 @setup_dtsec(%struct.mac_device* %53)
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = call i8* @of_parse_phandle(%struct.device_node* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %57 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %58 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  br label %85

59:                                               ; preds = %42
  %60 = load %struct.device_node*, %struct.device_node** %7, align 8
  %61 = call i64 @of_device_is_compatible(%struct.device_node* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %65 = call i32 @setup_tgec(%struct.mac_device* %64)
  br label %84

66:                                               ; preds = %59
  %67 = load %struct.device_node*, %struct.device_node** %7, align 8
  %68 = call i64 @of_device_is_compatible(%struct.device_node* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %72 = call i32 @setup_memac(%struct.mac_device* %71)
  %73 = load %struct.device_node*, %struct.device_node** %7, align 8
  %74 = call i8* @of_parse_phandle(%struct.device_node* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %75 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %76 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  br label %83

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load %struct.device_node*, %struct.device_node** %7, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %560

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %87 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %86, i32 0, i32 7
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.device_node*, %struct.device_node** %7, align 8
  %90 = call %struct.device_node* @of_get_parent(%struct.device_node* %89)
  store %struct.device_node* %90, %struct.device_node** %8, align 8
  %91 = load %struct.device_node*, %struct.device_node** %8, align 8
  %92 = icmp ne %struct.device_node* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load %struct.device_node*, %struct.device_node** %7, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %555

99:                                               ; preds = %85
  %100 = load %struct.device_node*, %struct.device_node** %8, align 8
  %101 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %100)
  store %struct.platform_device* %101, %struct.platform_device** %10, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %103 = icmp ne %struct.platform_device* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = load %struct.device_node*, %struct.device_node** %8, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %552

110:                                              ; preds = %99
  %111 = load %struct.device_node*, %struct.device_node** %8, align 8
  %112 = call i32 @of_property_read_u32(%struct.device_node* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64* %14)
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = load %struct.device_node*, %struct.device_node** %8, align 8
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), %struct.device_node* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %552

121:                                              ; preds = %110
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, 1
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  %125 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @fman_bind(%struct.device* %126)
  %128 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %129 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %131 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %121
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = load %struct.device_node*, %struct.device_node** %8, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), %struct.device_node* %136)
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %552

140:                                              ; preds = %121
  %141 = load %struct.device_node*, %struct.device_node** %8, align 8
  %142 = call i32 @of_node_put(%struct.device_node* %141)
  %143 = load %struct.device_node*, %struct.device_node** %7, align 8
  %144 = call i32 @of_address_to_resource(%struct.device_node* %143, i32 0, %struct.resource* %11)
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %3, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = load %struct.device_node*, %struct.device_node** %7, align 8
  %150 = load i32, i32* %3, align 4
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), %struct.device_node* %149, i32 %150)
  br label %555

152:                                              ; preds = %140
  %153 = load %struct.device*, %struct.device** %6, align 8
  %154 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %155 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @fman_get_mem_region(i32 %156)
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %162, %164
  %166 = call %struct.TYPE_7__* @__devm_request_region(%struct.device* %153, i32 %157, i64 %159, i64 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %167 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %168 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %167, i32 0, i32 11
  store %struct.TYPE_7__* %166, %struct.TYPE_7__** %168, align 8
  %169 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %170 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %169, i32 0, i32 11
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = icmp ne %struct.TYPE_7__* %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %152
  %174 = load %struct.device*, %struct.device** %6, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %176 = load i32, i32* @EBUSY, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %555

178:                                              ; preds = %152
  %179 = load %struct.device*, %struct.device** %6, align 8
  %180 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %181 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %180, i32 0, i32 11
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %186 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %185, i32 0, i32 11
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  %191 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %192 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %191, i32 0, i32 11
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %190, %195
  %197 = call i32 @devm_ioremap(%struct.device* %179, i64 %184, i64 %196)
  %198 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %199 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %201 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %178
  %205 = load %struct.device*, %struct.device** %6, align 8
  %206 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %555

209:                                              ; preds = %178
  %210 = load %struct.device_node*, %struct.device_node** %7, align 8
  %211 = call i32 @of_device_is_available(%struct.device_node* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %555

216:                                              ; preds = %209
  %217 = load %struct.device_node*, %struct.device_node** %7, align 8
  %218 = call i32 @of_property_read_u32(%struct.device_node* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64* %14)
  store i32 %218, i32* %3, align 4
  %219 = load i32, i32* %3, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load %struct.device*, %struct.device** %6, align 8
  %223 = load %struct.device_node*, %struct.device_node** %7, align 8
  %224 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), %struct.device_node* %223)
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %555

227:                                              ; preds = %216
  %228 = load i64, i64* %14, align 8
  %229 = trunc i64 %228 to i32
  %230 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %231 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.device_node*, %struct.device_node** %7, align 8
  %233 = call i32* @of_get_mac_address(%struct.device_node* %232)
  store i32* %233, i32** %13, align 8
  %234 = load i32*, i32** %13, align 8
  %235 = call i64 @IS_ERR(i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %227
  %238 = load %struct.device*, %struct.device** %6, align 8
  %239 = load %struct.device_node*, %struct.device_node** %7, align 8
  %240 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %238, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), %struct.device_node* %239)
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %3, align 4
  br label %555

243:                                              ; preds = %227
  %244 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %245 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %13, align 8
  %248 = call i32 @ether_addr_copy(i32 %246, i32* %247)
  %249 = load %struct.device_node*, %struct.device_node** %7, align 8
  %250 = call i32 @of_count_phandle_with_args(%struct.device_node* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32* null)
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %5, align 4
  %252 = icmp slt i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i64 @unlikely(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %243
  %257 = load %struct.device*, %struct.device** %6, align 8
  %258 = load %struct.device_node*, %struct.device_node** %7, align 8
  %259 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %257, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0), %struct.device_node* %258)
  %260 = load i32, i32* %5, align 4
  store i32 %260, i32* %3, align 4
  br label %555

261:                                              ; preds = %243
  %262 = load i32, i32* %5, align 4
  %263 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %264 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %263, i32 0, i32 10
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @ARRAY_SIZE(i32* %265)
  %267 = icmp ne i32 %262, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %261
  %269 = load %struct.device*, %struct.device** %6, align 8
  %270 = load %struct.device_node*, %struct.device_node** %7, align 8
  %271 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %269, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i64 0, i64 0), %struct.device_node* %270)
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %3, align 4
  br label %555

274:                                              ; preds = %261
  store i32 0, i32* %4, align 4
  br label %275

275:                                              ; preds = %333, %274
  %276 = load i32, i32* %4, align 4
  %277 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %278 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %277, i32 0, i32 10
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @ARRAY_SIZE(i32* %279)
  %281 = icmp slt i32 %276, %280
  br i1 %281, label %282, label %336

282:                                              ; preds = %275
  %283 = load %struct.device_node*, %struct.device_node** %7, align 8
  %284 = load i32, i32* %4, align 4
  %285 = call i8* @of_parse_phandle(%struct.device_node* %283, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %284)
  %286 = bitcast i8* %285 to %struct.device_node*
  store %struct.device_node* %286, %struct.device_node** %8, align 8
  %287 = load %struct.device_node*, %struct.device_node** %8, align 8
  %288 = icmp ne %struct.device_node* %287, null
  br i1 %288, label %295, label %289

289:                                              ; preds = %282
  %290 = load %struct.device*, %struct.device** %6, align 8
  %291 = load %struct.device_node*, %struct.device_node** %7, align 8
  %292 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %290, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), %struct.device_node* %291)
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %3, align 4
  br label %552

295:                                              ; preds = %282
  %296 = load %struct.device_node*, %struct.device_node** %8, align 8
  %297 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %296)
  store %struct.platform_device* %297, %struct.platform_device** %10, align 8
  %298 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %299 = icmp ne %struct.platform_device* %298, null
  br i1 %299, label %306, label %300

300:                                              ; preds = %295
  %301 = load %struct.device*, %struct.device** %6, align 8
  %302 = load %struct.device_node*, %struct.device_node** %8, align 8
  %303 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %301, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %302)
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %3, align 4
  br label %552

306:                                              ; preds = %295
  %307 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %308 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %307, i32 0, i32 0
  %309 = call i32 @fman_port_bind(%struct.device* %308)
  %310 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %311 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %310, i32 0, i32 10
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %317 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %316, i32 0, i32 10
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %4, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %306
  %325 = load %struct.device*, %struct.device** %6, align 8
  %326 = load %struct.device_node*, %struct.device_node** %8, align 8
  %327 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %325, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), %struct.device_node* %326)
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %3, align 4
  br label %552

330:                                              ; preds = %306
  %331 = load %struct.device_node*, %struct.device_node** %8, align 8
  %332 = call i32 @of_node_put(%struct.device_node* %331)
  br label %333

333:                                              ; preds = %330
  %334 = load i32, i32* %4, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %4, align 4
  br label %275

336:                                              ; preds = %275
  %337 = load %struct.device_node*, %struct.device_node** %7, align 8
  %338 = call i32 @of_get_phy_mode(%struct.device_node* %337)
  store i32 %338, i32* %16, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load %struct.device*, %struct.device** %6, align 8
  %343 = load %struct.device_node*, %struct.device_node** %7, align 8
  %344 = call i32 @dev_warn(%struct.device* %342, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), %struct.device_node* %343)
  %345 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  store i32 %345, i32* %16, align 4
  br label %346

346:                                              ; preds = %341, %336
  %347 = load i32, i32* %16, align 4
  %348 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %349 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 8
  %350 = load i32*, i32** @phy2speed, align 8
  %351 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %352 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %350, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %358 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %357, i32 0, i32 1
  store i32 %356, i32* %358, align 4
  %359 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %360 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %363 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 8
  %364 = load i32, i32* @DTSEC_SUPPORTED, align 4
  %365 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %366 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %368 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %381

372:                                              ; preds = %346
  %373 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %374 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %375 = or i32 %373, %374
  %376 = xor i32 %375, -1
  %377 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %378 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, %376
  store i32 %380, i32* %378, align 4
  br label %381

381:                                              ; preds = %372, %346
  %382 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %383 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, 1000
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %388 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %389 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %386, %381
  %393 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %394 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %392
  %399 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %400 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %401 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %400, i32 0, i32 1
  store i32 %399, i32* %401, align 4
  br label %402

402:                                              ; preds = %398, %392
  %403 = load %struct.device_node*, %struct.device_node** %7, align 8
  %404 = call i8* @of_parse_phandle(%struct.device_node* %403, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %405 = bitcast i8* %404 to %struct.device_node*
  %406 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %407 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %406, i32 0, i32 9
  store %struct.device_node* %405, %struct.device_node** %407, align 8
  %408 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %409 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %408, i32 0, i32 9
  %410 = load %struct.device_node*, %struct.device_node** %409, align 8
  %411 = icmp ne %struct.device_node* %410, null
  br i1 %411, label %492, label %412

412:                                              ; preds = %402
  %413 = load %struct.device_node*, %struct.device_node** %7, align 8
  %414 = call i64 @of_phy_is_fixed_link(%struct.device_node* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %492

416:                                              ; preds = %412
  %417 = load %struct.device_node*, %struct.device_node** %7, align 8
  %418 = call i32 @of_phy_register_fixed_link(%struct.device_node* %417)
  store i32 %418, i32* %3, align 4
  %419 = load i32, i32* %3, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %416
  br label %555

422:                                              ; preds = %416
  %423 = load i32, i32* @GFP_KERNEL, align 4
  %424 = call %struct.TYPE_6__* @kzalloc(i32 20, i32 %423)
  %425 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %426 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %425, i32 0, i32 4
  store %struct.TYPE_6__* %424, %struct.TYPE_6__** %426, align 8
  %427 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %428 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %427, i32 0, i32 4
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %428, align 8
  %430 = icmp ne %struct.TYPE_6__* %429, null
  br i1 %430, label %434, label %431

431:                                              ; preds = %422
  %432 = load i32, i32* @ENOMEM, align 4
  %433 = sub nsw i32 0, %432
  store i32 %433, i32* %3, align 4
  br label %555

434:                                              ; preds = %422
  %435 = load %struct.device_node*, %struct.device_node** %7, align 8
  %436 = call %struct.device_node* @of_node_get(%struct.device_node* %435)
  %437 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %438 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %437, i32 0, i32 9
  store %struct.device_node* %436, %struct.device_node** %438, align 8
  %439 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %440 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %439, i32 0, i32 9
  %441 = load %struct.device_node*, %struct.device_node** %440, align 8
  %442 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %441)
  store %struct.phy_device* %442, %struct.phy_device** %17, align 8
  %443 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %444 = icmp ne %struct.phy_device* %443, null
  br i1 %444, label %452, label %445

445:                                              ; preds = %434
  %446 = load i32, i32* @EINVAL, align 4
  %447 = sub nsw i32 0, %446
  store i32 %447, i32* %3, align 4
  %448 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %449 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %448, i32 0, i32 9
  %450 = load %struct.device_node*, %struct.device_node** %449, align 8
  %451 = call i32 @of_node_put(%struct.device_node* %450)
  br label %555

452:                                              ; preds = %434
  %453 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %454 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %457 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %456, i32 0, i32 4
  %458 = load %struct.TYPE_6__*, %struct.TYPE_6__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 4
  store i32 %455, i32* %459, align 4
  %460 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %461 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %464 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %463, i32 0, i32 4
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 3
  store i32 %462, i32* %466, align 4
  %467 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %468 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %471 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %470, i32 0, i32 4
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 2
  store i32 %469, i32* %473, align 4
  %474 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %475 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %478 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %477, i32 0, i32 4
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 1
  store i32 %476, i32* %480, align 4
  %481 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %482 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %485 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %484, i32 0, i32 4
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 0
  store i32 %483, i32* %487, align 4
  %488 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %489 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 0
  %491 = call i32 @put_device(i32* %490)
  br label %492

492:                                              ; preds = %452, %412, %402
  %493 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %494 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %493, i32 0, i32 2
  %495 = load i32 (%struct.mac_device*)*, i32 (%struct.mac_device*)** %494, align 8
  %496 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %497 = call i32 %495(%struct.mac_device* %496)
  store i32 %497, i32* %3, align 4
  %498 = load i32, i32* %3, align 4
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %500, label %508

500:                                              ; preds = %492
  %501 = load %struct.device*, %struct.device** %6, align 8
  %502 = load i32, i32* %3, align 4
  %503 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %501, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %502)
  %504 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %505 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %504, i32 0, i32 9
  %506 = load %struct.device_node*, %struct.device_node** %505, align 8
  %507 = call i32 @of_node_put(%struct.device_node* %506)
  br label %555

508:                                              ; preds = %492
  %509 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %510 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %509, i32 0, i32 3
  store i32 1, i32* %510, align 8
  %511 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %512 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %511, i32 0, i32 4
  store i32 1, i32* %512, align 4
  %513 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %514 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %513, i32 0, i32 5
  store i32 1, i32* %514, align 8
  %515 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %516 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %515, i32 0, i32 6
  store i32 0, i32* %516, align 4
  %517 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %518 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %517, i32 0, i32 7
  store i32 0, i32* %518, align 8
  %519 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %520 = call i32 @fman_set_mac_active_pause(%struct.mac_device* %519, i32 1, i32 1)
  store i32 %520, i32* %3, align 4
  %521 = load i32, i32* %3, align 4
  %522 = icmp slt i32 %521, 0
  br i1 %522, label %523, label %527

523:                                              ; preds = %508
  %524 = load %struct.device*, %struct.device** %6, align 8
  %525 = load i32, i32* %3, align 4
  %526 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %524, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 %525)
  br label %527

527:                                              ; preds = %523, %508
  %528 = load %struct.device*, %struct.device** %6, align 8
  %529 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %530 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %529, i32 0, i32 8
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @dev_info(%struct.device* %528, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %531)
  %533 = load i32, i32* %15, align 4
  %534 = load %struct.mac_device*, %struct.mac_device** %9, align 8
  %535 = call i32* @dpaa_eth_add_device(i32 %533, %struct.mac_device* %534)
  %536 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %537 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %536, i32 0, i32 3
  store i32* %535, i32** %537, align 8
  %538 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %539 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %538, i32 0, i32 3
  %540 = load i32*, i32** %539, align 8
  %541 = call i64 @IS_ERR(i32* %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %551

543:                                              ; preds = %527
  %544 = load %struct.device*, %struct.device** %6, align 8
  %545 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %546 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %544, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 %547)
  %549 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %550 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %549, i32 0, i32 3
  store i32* null, i32** %550, align 8
  br label %551

551:                                              ; preds = %543, %527
  br label %560

552:                                              ; preds = %324, %300, %289, %134, %115, %104
  %553 = load %struct.device_node*, %struct.device_node** %8, align 8
  %554 = call i32 @of_node_put(%struct.device_node* %553)
  br label %555

555:                                              ; preds = %552, %500, %445, %431, %421, %268, %256, %237, %221, %213, %204, %173, %147, %93
  %556 = load %struct.mac_priv_s*, %struct.mac_priv_s** %12, align 8
  %557 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %556, i32 0, i32 4
  %558 = load %struct.TYPE_6__*, %struct.TYPE_6__** %557, align 8
  %559 = call i32 @kfree(%struct.TYPE_6__* %558)
  br label %560

560:                                              ; preds = %555, %551, %77, %39, %29
  %561 = load i32, i32* %3, align 4
  ret i32 %561
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @setup_dtsec(%struct.mac_device*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @setup_tgec(%struct.mac_device*) #1

declare dso_local i32 @setup_memac(%struct.mac_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @fman_bind(%struct.device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local %struct.TYPE_7__* @__devm_request_region(%struct.device*, i32, i64, i64, i8*) #1

declare dso_local i32 @fman_get_mem_region(i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i64, i64) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @fman_port_bind(%struct.device*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @fman_set_mac_active_pause(%struct.mac_device*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32* @dpaa_eth_add_device(i32, %struct.mac_device*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
