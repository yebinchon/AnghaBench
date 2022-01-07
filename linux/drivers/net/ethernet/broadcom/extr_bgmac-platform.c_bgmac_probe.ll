; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_bgmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_bgmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.bgmac = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BGMAC_FEAT_CLKCTLST = common dso_local global i32 0, align 4
@BGMAC_FEAT_NO_RESET = common dso_local global i32 0, align 4
@BGMAC_FEAT_CMDCFG_SR_REV4 = common dso_local global i32 0, align 4
@BGMAC_FEAT_TX_MASK_SETUP = common dso_local global i32 0, align 4
@BGMAC_FEAT_RX_MASK_SETUP = common dso_local global i32 0, align 4
@BGMAC_FEAT_IDM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"MAC address not present in device tree\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"amac_base\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to obtain base resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"idm_base\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nicpm_base\00", align 1
@platform_bgmac_read = common dso_local global i32 0, align 4
@platform_bgmac_write = common dso_local global i32 0, align 4
@platform_bgmac_idm_read = common dso_local global i32 0, align 4
@platform_bgmac_idm_write = common dso_local global i32 0, align 4
@platform_bgmac_clk_enabled = common dso_local global i32 0, align 4
@platform_bgmac_clk_enable = common dso_local global i32 0, align 4
@platform_bgmac_cco_ctl_maskset = common dso_local global i32 0, align 4
@platform_bgmac_get_bus_clock = common dso_local global i32 0, align 4
@platform_bgmac_cmn_maskset32 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@platform_phy_connect = common dso_local global i32 0, align 4
@bgmac_phy_connect_direct = common dso_local global i32 0, align 4
@BGMAC_FEAT_FORCE_SPEED_2500 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bgmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.bgmac*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.bgmac* @bgmac_alloc(%struct.TYPE_9__* %13)
  store %struct.bgmac* %14, %struct.bgmac** %5, align 8
  %15 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %16 = icmp ne %struct.bgmac* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %235

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.bgmac* %22)
  %24 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %25 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %26 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @BGMAC_FEAT_NO_RESET, align 4
  %30 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %31 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @BGMAC_FEAT_CMDCFG_SR_REV4, align 4
  %35 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %36 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @BGMAC_FEAT_TX_MASK_SETUP, align 4
  %40 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %41 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @BGMAC_FEAT_RX_MASK_SETUP, align 4
  %45 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %46 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @BGMAC_FEAT_IDM_MASK, align 4
  %50 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %51 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %57 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %56, i32 0, i32 15
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %61 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %60, i32 0, i32 14
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = call i32* @of_get_mac_address(%struct.device_node* %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %20
  %68 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %69 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %68, i32 0, i32 13
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ether_addr_copy(i32 %72, i32* %73)
  br label %79

75:                                               ; preds = %20
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_warn(%struct.TYPE_9__* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %67
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = call i64 @platform_get_irq(%struct.platform_device* %80, i32 0)
  %82 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %83 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %85 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %90 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %2, align 4
  br label %235

93:                                               ; preds = %79
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load i32, i32* @IORESOURCE_MEM, align 4
  %96 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %94, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %96, %struct.resource** %6, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = icmp ne %struct.resource* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_err(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %235

105:                                              ; preds = %93
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.resource*, %struct.resource** %6, align 8
  %109 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %107, %struct.resource* %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %112 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %111, i32 0, i32 12
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i32* %110, i32** %113, align 8
  %114 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %115 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %114, i32 0, i32 12
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @IS_ERR(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %105
  %121 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %122 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %121, i32 0, i32 12
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @PTR_ERR(i32* %124)
  store i32 %125, i32* %2, align 4
  br label %235

126:                                              ; preds = %105
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load i32, i32* @IORESOURCE_MEM, align 4
  %129 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %127, i32 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %129, %struct.resource** %6, align 8
  %130 = load %struct.resource*, %struct.resource** %6, align 8
  %131 = icmp ne %struct.resource* %130, null
  br i1 %131, label %132, label %160

132:                                              ; preds = %126
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.resource*, %struct.resource** %6, align 8
  %136 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %134, %struct.resource* %135)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %139 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32* %137, i32** %140, align 8
  %141 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %142 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %141, i32 0, i32 12
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @IS_ERR(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %149 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %148, i32 0, i32 12
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @PTR_ERR(i32* %151)
  store i32 %152, i32* %2, align 4
  br label %235

153:                                              ; preds = %132
  %154 = load i32, i32* @BGMAC_FEAT_IDM_MASK, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %157 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %153, %126
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load i32, i32* @IORESOURCE_MEM, align 4
  %163 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %161, i32 %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %163, %struct.resource** %6, align 8
  %164 = load %struct.resource*, %struct.resource** %6, align 8
  %165 = icmp ne %struct.resource* %164, null
  br i1 %165, label %166, label %188

166:                                              ; preds = %160
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load %struct.resource*, %struct.resource** %6, align 8
  %170 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %168, %struct.resource* %169)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %173 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %172, i32 0, i32 12
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i32* %171, i32** %174, align 8
  %175 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %176 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %175, i32 0, i32 12
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @IS_ERR(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %166
  %182 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %183 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %182, i32 0, i32 12
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @PTR_ERR(i32* %185)
  store i32 %186, i32* %2, align 4
  br label %235

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187, %160
  %189 = load i32, i32* @platform_bgmac_read, align 4
  %190 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %191 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @platform_bgmac_write, align 4
  %193 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %194 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %193, i32 0, i32 10
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @platform_bgmac_idm_read, align 4
  %196 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %197 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @platform_bgmac_idm_write, align 4
  %199 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %200 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %199, i32 0, i32 8
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @platform_bgmac_clk_enabled, align 4
  %202 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %203 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* @platform_bgmac_clk_enable, align 4
  %205 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %206 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @platform_bgmac_cco_ctl_maskset, align 4
  %208 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %209 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* @platform_bgmac_get_bus_clock, align 4
  %211 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %212 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @platform_bgmac_cmn_maskset32, align 4
  %214 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %215 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 8
  %216 = load %struct.device_node*, %struct.device_node** %4, align 8
  %217 = call i64 @of_parse_phandle(%struct.device_node* %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %188
  %220 = load i32, i32* @platform_phy_connect, align 4
  %221 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %222 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  br label %232

223:                                              ; preds = %188
  %224 = load i32, i32* @bgmac_phy_connect_direct, align 4
  %225 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %226 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @BGMAC_FEAT_FORCE_SPEED_2500, align 4
  %228 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %229 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %223, %219
  %233 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %234 = call i32 @bgmac_enet_probe(%struct.bgmac* %233)
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %232, %181, %147, %120, %99, %88, %17
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.bgmac* @bgmac_alloc(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bgmac*) #1

declare dso_local i32* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @bgmac_enet_probe(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
