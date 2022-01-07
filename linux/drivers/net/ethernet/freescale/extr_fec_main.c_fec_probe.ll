; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_21__, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i64, i32, i32*, i32*, i32, i32*, i32, %struct.device_node*, %struct.platform_device*, i32*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.fec_platform_data = type { i32 }
%struct.of_device_id = type { %struct.TYPE_20__* }

@fec_probe.dev_id = internal global i32 0, align 4
@FEC_STATS_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@fec_dt_ids = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_GBIT = common dso_local global i32 0, align 4
@FEC_PAUSE_FLAG_AUTONEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fsl,imx6q\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"fsl,err006687-workaround-present\00", align 1
@FEC_QUIRK_ERR006687 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl,magic-packet\00", align 1
@FEC_WOL_HAS_MAGIC_PACKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"broken fixed-link specification\0A\00", align 1
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"enet_out\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"enet_clk_ref\00", align 1
@FEC_QUIRK_HAS_BUFDESC_EX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to enable phy regulator: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@FEC_MDIO_PM_TIMEOUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"int%d\00", align 1
@fec_enet_interrupt = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"registered PHC device %d\0A\00", align 1
@COPYBREAK_DEFAULT = common dso_local global i32 0, align 4
@fec_enet_timeout_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca %struct.fec_platform_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %11, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @fec_enet_get_queue_num(%struct.platform_device* %21, i32* %13, i32* %14)
  %23 = load i64, i64* @FEC_STATS_SIZE, align 8
  %24 = add i64 176, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.net_device* @alloc_etherdev_mqs(i64 %24, i32 %25, i32 %26)
  store %struct.net_device* %27, %struct.net_device** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %548

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, %struct.TYPE_21__* %36)
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %38)
  store %struct.fec_enet_private* %39, %struct.fec_enet_private** %4, align 8
  %40 = load i32, i32* @fec_dt_ids, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call %struct.of_device_id* @of_match_device(i32 %40, %struct.TYPE_21__* %42)
  store %struct.of_device_id* %43, %struct.of_device_id** %10, align 8
  %44 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %45 = icmp ne %struct.of_device_id* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %48 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 2
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %51, align 8
  br label %52

52:                                               ; preds = %46, %33
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %59 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %62 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %61, i32 0, i32 25
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %65 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %68 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %70 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FEC_QUIRK_HAS_GBIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %52
  %76 = load i32, i32* @FEC_PAUSE_FLAG_AUTONEG, align 4
  %77 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %78 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %77, i32 0, i32 24
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %52
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @pinctrl_pm_select_default_state(%struct.TYPE_21__* %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %85, i32 0)
  %87 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %88 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %87, i32 0, i32 23
  store i32* %86, i32** %88, align 8
  %89 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %90 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %89, i32 0, i32 23
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @IS_ERR(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %96 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %95, i32 0, i32 23
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @PTR_ERR(i32* %97)
  store i32 %98, i32* %9, align 4
  br label %544

99:                                               ; preds = %81
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %102 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %101, i32 0, i32 22
  store %struct.platform_device* %100, %struct.platform_device** %102, align 8
  %103 = load i32, i32* @fec_probe.dev_id, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @fec_probe.dev_id, align 4
  %105 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %106 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %105, i32 0, i32 13
  store i32 %103, i32* %106, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.net_device* %108)
  %110 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %99
  %113 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112, %99
  %116 = load %struct.device_node*, %struct.device_node** %11, align 8
  %117 = call i32 @of_property_read_bool(%struct.device_node* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @FEC_QUIRK_ERR006687, align 4
  %121 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %122 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %115, %112
  %126 = load %struct.device_node*, %struct.device_node** %11, align 8
  %127 = call i64 @of_get_property(%struct.device_node* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* @FEC_WOL_HAS_MAGIC_PACKET, align 4
  %131 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %132 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %125
  %136 = load %struct.device_node*, %struct.device_node** %11, align 8
  %137 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %137, %struct.device_node** %12, align 8
  %138 = load %struct.device_node*, %struct.device_node** %12, align 8
  %139 = icmp ne %struct.device_node* %138, null
  br i1 %139, label %156, label %140

140:                                              ; preds = %135
  %141 = load %struct.device_node*, %struct.device_node** %11, align 8
  %142 = call i64 @of_phy_is_fixed_link(%struct.device_node* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = load %struct.device_node*, %struct.device_node** %11, align 8
  %146 = call i32 @of_phy_register_fixed_link(%struct.device_node* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %541

153:                                              ; preds = %144
  %154 = load %struct.device_node*, %struct.device_node** %11, align 8
  %155 = call %struct.device_node* @of_node_get(%struct.device_node* %154)
  store %struct.device_node* %155, %struct.device_node** %12, align 8
  br label %156

156:                                              ; preds = %153, %140, %135
  %157 = load %struct.device_node*, %struct.device_node** %12, align 8
  %158 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %159 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %158, i32 0, i32 21
  store %struct.device_node* %157, %struct.device_node** %159, align 8
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.device_node*, %struct.device_node** %162, align 8
  %164 = call i32 @of_get_phy_mode(%struct.device_node* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %156
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call %struct.fec_platform_data* @dev_get_platdata(%struct.TYPE_21__* %169)
  store %struct.fec_platform_data* %170, %struct.fec_platform_data** %5, align 8
  %171 = load %struct.fec_platform_data*, %struct.fec_platform_data** %5, align 8
  %172 = icmp ne %struct.fec_platform_data* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.fec_platform_data*, %struct.fec_platform_data** %5, align 8
  %175 = getelementptr inbounds %struct.fec_platform_data, %struct.fec_platform_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %178 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  br label %183

179:                                              ; preds = %167
  %180 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %181 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %182 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %173
  br label %188

184:                                              ; preds = %156
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %187 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %184, %183
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i8* @devm_clk_get(%struct.TYPE_21__* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %192 = bitcast i8* %191 to i32*
  %193 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %194 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %193, i32 0, i32 8
  store i32* %192, i32** %194, align 8
  %195 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %196 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %195, i32 0, i32 8
  %197 = load i32*, i32** %196, align 8
  %198 = call i64 @IS_ERR(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %188
  %201 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %202 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %201, i32 0, i32 8
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @PTR_ERR(i32* %203)
  store i32 %204, i32* %9, align 4
  br label %531

205:                                              ; preds = %188
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i8* @devm_clk_get(%struct.TYPE_21__* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %211 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %210, i32 0, i32 9
  store i32* %209, i32** %211, align 8
  %212 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %213 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %212, i32 0, i32 9
  %214 = load i32*, i32** %213, align 8
  %215 = call i64 @IS_ERR(i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %205
  %218 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %219 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %218, i32 0, i32 9
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @PTR_ERR(i32* %220)
  store i32 %221, i32* %9, align 4
  br label %531

222:                                              ; preds = %205
  %223 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %224 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %223, i32 0, i32 9
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @clk_get_rate(i32* %225)
  %227 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %228 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %227, i32 0, i32 20
  store i32 %226, i32* %228, align 8
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = call i8* @devm_clk_get(%struct.TYPE_21__* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %232 = bitcast i8* %231 to i32*
  %233 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %234 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %233, i32 0, i32 19
  store i32* %232, i32** %234, align 8
  %235 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %236 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %235, i32 0, i32 19
  %237 = load i32*, i32** %236, align 8
  %238 = call i64 @IS_ERR(i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %222
  %241 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %242 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %241, i32 0, i32 19
  store i32* null, i32** %242, align 8
  br label %243

243:                                              ; preds = %240, %222
  %244 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %245 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %244, i32 0, i32 5
  store i32 0, i32* %245, align 4
  %246 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %247 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %246, i32 0, i32 18
  %248 = call i32 @mutex_init(i32* %247)
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i8* @devm_clk_get(%struct.TYPE_21__* %250, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %252 = bitcast i8* %251 to i32*
  %253 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %254 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %253, i32 0, i32 17
  store i32* %252, i32** %254, align 8
  %255 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %256 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %255, i32 0, i32 17
  %257 = load i32*, i32** %256, align 8
  %258 = call i64 @IS_ERR(i32* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %243
  %261 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %262 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %261, i32 0, i32 17
  store i32* null, i32** %262, align 8
  br label %263

263:                                              ; preds = %260, %243
  %264 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %265 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @FEC_QUIRK_HAS_BUFDESC_EX, align 4
  %268 = and i32 %266, %267
  %269 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %270 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %269, i32 0, i32 6
  store i32 %268, i32* %270, align 8
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = call i8* @devm_clk_get(%struct.TYPE_21__* %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %274 = bitcast i8* %273 to i32*
  %275 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %276 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %275, i32 0, i32 16
  store i32* %274, i32** %276, align 8
  %277 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %278 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %277, i32 0, i32 16
  %279 = load i32*, i32** %278, align 8
  %280 = call i64 @IS_ERR(i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %263
  %283 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %284 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %283, i32 0, i32 16
  store i32* null, i32** %284, align 8
  %285 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %286 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %285, i32 0, i32 6
  store i32 0, i32* %286, align 8
  br label %287

287:                                              ; preds = %282, %263
  %288 = load %struct.net_device*, %struct.net_device** %6, align 8
  %289 = call i32 @fec_enet_clk_enable(%struct.net_device* %288, i32 1)
  store i32 %289, i32* %9, align 4
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %531

293:                                              ; preds = %287
  %294 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %295 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %294, i32 0, i32 8
  %296 = load i32*, i32** %295, align 8
  %297 = call i32 @clk_prepare_enable(i32* %296)
  store i32 %297, i32* %9, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  br label %528

301:                                              ; preds = %293
  %302 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %303 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %302, i32 0, i32 9
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @clk_prepare_enable(i32* %304)
  store i32 %305, i32* %9, align 4
  %306 = load i32, i32* %9, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %301
  br label %523

309:                                              ; preds = %301
  %310 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %311 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %310, i32 0, i32 0
  %312 = call i32* @devm_regulator_get_optional(%struct.TYPE_21__* %311, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %313 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %314 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %313, i32 0, i32 10
  store i32* %312, i32** %314, align 8
  %315 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %316 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %315, i32 0, i32 10
  %317 = load i32*, i32** %316, align 8
  %318 = call i64 @IS_ERR(i32* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %333, label %320

320:                                              ; preds = %309
  %321 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %322 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %321, i32 0, i32 10
  %323 = load i32*, i32** %322, align 8
  %324 = call i32 @regulator_enable(i32* %323)
  store i32 %324, i32* %9, align 4
  %325 = load i32, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %329 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %328, i32 0, i32 0
  %330 = load i32, i32* %9, align 4
  %331 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %329, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %330)
  br label %518

332:                                              ; preds = %320
  br label %347

333:                                              ; preds = %309
  %334 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %335 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %334, i32 0, i32 10
  %336 = load i32*, i32** %335, align 8
  %337 = call i32 @PTR_ERR(i32* %336)
  %338 = load i32, i32* @EPROBE_DEFER, align 4
  %339 = sub nsw i32 0, %338
  %340 = icmp eq i32 %337, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %333
  %342 = load i32, i32* @EPROBE_DEFER, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %9, align 4
  br label %518

344:                                              ; preds = %333
  %345 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %346 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %345, i32 0, i32 10
  store i32* null, i32** %346, align 8
  br label %347

347:                                              ; preds = %344, %332
  %348 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %349 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %348, i32 0, i32 0
  %350 = load i32, i32* @FEC_MDIO_PM_TIMEOUT, align 4
  %351 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_21__* %349, i32 %350)
  %352 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %353 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %352, i32 0, i32 0
  %354 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_21__* %353)
  %355 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %356 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %355, i32 0, i32 0
  %357 = call i32 @pm_runtime_get_noresume(%struct.TYPE_21__* %356)
  %358 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %359 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %358, i32 0, i32 0
  %360 = call i32 @pm_runtime_set_active(%struct.TYPE_21__* %359)
  %361 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %362 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %361, i32 0, i32 0
  %363 = call i32 @pm_runtime_enable(%struct.TYPE_21__* %362)
  %364 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %365 = call i32 @fec_reset_phy(%struct.platform_device* %364)
  store i32 %365, i32* %9, align 4
  %366 = load i32, i32* %9, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %347
  br label %511

369:                                              ; preds = %347
  %370 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %371 = call i32 @fec_enet_get_irq_cnt(%struct.platform_device* %370)
  store i32 %371, i32* %16, align 4
  %372 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %373 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %372, i32 0, i32 6
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %369
  %377 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %378 = load i32, i32* %16, align 4
  %379 = call i32 @fec_ptp_init(%struct.platform_device* %377, i32 %378)
  br label %380

380:                                              ; preds = %376, %369
  %381 = load %struct.net_device*, %struct.net_device** %6, align 8
  %382 = call i32 @fec_enet_init(%struct.net_device* %381)
  store i32 %382, i32* %9, align 4
  %383 = load i32, i32* %9, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %380
  br label %498

386:                                              ; preds = %380
  store i32 0, i32* %7, align 4
  br label %387

387:                                              ; preds = %430, %386
  %388 = load i32, i32* %7, align 4
  %389 = load i32, i32* %16, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %433

391:                                              ; preds = %387
  %392 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %393 = load i32, i32* %7, align 4
  %394 = call i32 @snprintf(i8* %392, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %393)
  %395 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %396 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %397 = call i32 @platform_get_irq_byname_optional(%struct.platform_device* %395, i8* %396)
  store i32 %397, i32* %8, align 4
  %398 = load i32, i32* %8, align 4
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %391
  %401 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %402 = load i32, i32* %7, align 4
  %403 = call i32 @platform_get_irq(%struct.platform_device* %401, i32 %402)
  store i32 %403, i32* %8, align 4
  br label %404

404:                                              ; preds = %400, %391
  %405 = load i32, i32* %8, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %404
  %408 = load i32, i32* %8, align 4
  store i32 %408, i32* %9, align 4
  br label %497

409:                                              ; preds = %404
  %410 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %411 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %410, i32 0, i32 0
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* @fec_enet_interrupt, align 4
  %414 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %415 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.net_device*, %struct.net_device** %6, align 8
  %418 = call i32 @devm_request_irq(%struct.TYPE_21__* %411, i32 %412, i32 %413, i32 0, i32 %416, %struct.net_device* %417)
  store i32 %418, i32* %9, align 4
  %419 = load i32, i32* %9, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %409
  br label %497

422:                                              ; preds = %409
  %423 = load i32, i32* %8, align 4
  %424 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %425 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %424, i32 0, i32 7
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %7, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 %423, i32* %429, align 4
  br label %430

430:                                              ; preds = %422
  %431 = load i32, i32* %7, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %7, align 4
  br label %387

433:                                              ; preds = %387
  %434 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %435 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %434, i32 0, i32 15
  %436 = call i32 @init_completion(i32* %435)
  %437 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %438 = call i32 @fec_enet_mii_init(%struct.platform_device* %437)
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %433
  br label %496

442:                                              ; preds = %433
  %443 = load %struct.net_device*, %struct.net_device** %6, align 8
  %444 = call i32 @netif_carrier_off(%struct.net_device* %443)
  %445 = load %struct.net_device*, %struct.net_device** %6, align 8
  %446 = call i32 @fec_enet_clk_enable(%struct.net_device* %445, i32 0)
  %447 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %448 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %447, i32 0, i32 0
  %449 = call i32 @pinctrl_pm_select_sleep_state(%struct.TYPE_21__* %448)
  %450 = load %struct.net_device*, %struct.net_device** %6, align 8
  %451 = call i32 @register_netdev(%struct.net_device* %450)
  store i32 %451, i32* %9, align 4
  %452 = load i32, i32* %9, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %442
  br label %493

455:                                              ; preds = %442
  %456 = load %struct.net_device*, %struct.net_device** %6, align 8
  %457 = getelementptr inbounds %struct.net_device, %struct.net_device* %456, i32 0, i32 0
  %458 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %459 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @FEC_WOL_HAS_MAGIC_PACKET, align 4
  %462 = and i32 %460, %461
  %463 = call i32 @device_init_wakeup(i32* %457, i32 %462)
  %464 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %465 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %464, i32 0, i32 6
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %455
  %469 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %470 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %469, i32 0, i32 14
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %479

473:                                              ; preds = %468
  %474 = load %struct.net_device*, %struct.net_device** %6, align 8
  %475 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %476 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %475, i32 0, i32 13
  %477 = load i32, i32* %476, align 8
  %478 = call i32 @netdev_info(%struct.net_device* %474, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %477)
  br label %479

479:                                              ; preds = %473, %468, %455
  %480 = load i32, i32* @COPYBREAK_DEFAULT, align 4
  %481 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %482 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %481, i32 0, i32 12
  store i32 %480, i32* %482, align 4
  %483 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %484 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %483, i32 0, i32 11
  %485 = load i32, i32* @fec_enet_timeout_work, align 4
  %486 = call i32 @INIT_WORK(i32* %484, i32 %485)
  %487 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %488 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %487, i32 0, i32 0
  %489 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_21__* %488)
  %490 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %491 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %490, i32 0, i32 0
  %492 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_21__* %491)
  store i32 0, i32* %2, align 4
  br label %548

493:                                              ; preds = %454
  %494 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %495 = call i32 @fec_enet_mii_remove(%struct.fec_enet_private* %494)
  br label %496

496:                                              ; preds = %493, %441
  br label %497

497:                                              ; preds = %496, %421, %407
  br label %498

498:                                              ; preds = %497, %385
  %499 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %500 = call i32 @fec_ptp_stop(%struct.platform_device* %499)
  %501 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %502 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %501, i32 0, i32 10
  %503 = load i32*, i32** %502, align 8
  %504 = icmp ne i32* %503, null
  br i1 %504, label %505, label %510

505:                                              ; preds = %498
  %506 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %507 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %506, i32 0, i32 10
  %508 = load i32*, i32** %507, align 8
  %509 = call i32 @regulator_disable(i32* %508)
  br label %510

510:                                              ; preds = %505, %498
  br label %511

511:                                              ; preds = %510, %368
  %512 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %513 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %512, i32 0, i32 0
  %514 = call i32 @pm_runtime_put_noidle(%struct.TYPE_21__* %513)
  %515 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %516 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %515, i32 0, i32 0
  %517 = call i32 @pm_runtime_disable(%struct.TYPE_21__* %516)
  br label %518

518:                                              ; preds = %511, %341, %327
  %519 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %520 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %519, i32 0, i32 9
  %521 = load i32*, i32** %520, align 8
  %522 = call i32 @clk_disable_unprepare(i32* %521)
  br label %523

523:                                              ; preds = %518, %308
  %524 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %525 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %524, i32 0, i32 8
  %526 = load i32*, i32** %525, align 8
  %527 = call i32 @clk_disable_unprepare(i32* %526)
  br label %528

528:                                              ; preds = %523, %300
  %529 = load %struct.net_device*, %struct.net_device** %6, align 8
  %530 = call i32 @fec_enet_clk_enable(%struct.net_device* %529, i32 0)
  br label %531

531:                                              ; preds = %528, %292, %217, %200
  %532 = load %struct.device_node*, %struct.device_node** %11, align 8
  %533 = call i64 @of_phy_is_fixed_link(%struct.device_node* %532)
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %538

535:                                              ; preds = %531
  %536 = load %struct.device_node*, %struct.device_node** %11, align 8
  %537 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %536)
  br label %538

538:                                              ; preds = %535, %531
  %539 = load %struct.device_node*, %struct.device_node** %12, align 8
  %540 = call i32 @of_node_put(%struct.device_node* %539)
  br label %541

541:                                              ; preds = %538, %149
  %542 = load i32, i32* @fec_probe.dev_id, align 4
  %543 = add nsw i32 %542, -1
  store i32 %543, i32* @fec_probe.dev_id, align 4
  br label %544

544:                                              ; preds = %541, %94
  %545 = load %struct.net_device*, %struct.net_device** %6, align 8
  %546 = call i32 @free_netdev(%struct.net_device* %545)
  %547 = load i32, i32* %9, align 4
  store i32 %547, i32* %2, align 4
  br label %548

548:                                              ; preds = %544, %479, %30
  %549 = load i32, i32* %2, align 4
  ret i32 %549
}

declare dso_local i32 @fec_enet_get_queue_num(%struct.platform_device*, i32*, i32*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i64, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_21__*) #1

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.TYPE_21__*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local %struct.fec_platform_data* @dev_get_platdata(%struct.TYPE_21__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fec_enet_clk_enable(%struct.net_device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @fec_reset_phy(%struct.platform_device*) #1

declare dso_local i32 @fec_enet_get_irq_cnt(%struct.platform_device*) #1

declare dso_local i32 @fec_ptp_init(%struct.platform_device*, i32) #1

declare dso_local i32 @fec_enet_init(%struct.net_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @platform_get_irq_byname_optional(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_21__*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fec_enet_mii_init(%struct.platform_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(%struct.TYPE_21__*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_21__*) #1

declare dso_local i32 @fec_enet_mii_remove(%struct.fec_enet_private*) #1

declare dso_local i32 @fec_ptp_stop(%struct.platform_device*) #1

declare dso_local i32 @regulator_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_21__*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
