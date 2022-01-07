; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.emac_board_info = type { i8*, i32, %struct.TYPE_8__*, i64, i8*, i32, i32, %struct.platform_device*, %struct.net_device* }
%struct.net_device = type { i64, i32, i32, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"could not allocate device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@EMAC_DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to remap registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error couldn't enable clock (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error couldn't map SRAM to device\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"no associated PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"using random MAC address %pM\0A\00", align 1
@emac_netdev_ops = common dso_local global i32 0, align 4
@watchdog = common dso_local global i32 0, align 4
@emac_ethtool_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Registering netdev failed!\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: at %p, IRQ %d MAC: %pM\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"not found (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @emac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.emac_board_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = call %struct.net_device* @alloc_etherdev(i32 64)
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %242

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @SET_NETDEV_DEV(%struct.net_device* %23, %struct.TYPE_8__* %25)
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %27)
  store %struct.emac_board_info* %28, %struct.emac_board_info** %5, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %32 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %31, i32 0, i32 2
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %35 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %34, i32 0, i32 8
  store %struct.net_device* %33, %struct.net_device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %38 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %37, i32 0, i32 7
  store %struct.platform_device* %36, %struct.platform_device** %38, align 8
  %39 = load i32, i32* @debug, align 4
  %40 = load i32, i32* @EMAC_DEFAULT_MSG_ENABLE, align 4
  %41 = call i32 @netif_msg_init(i32 %39, i32 %40)
  %42 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %43 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %45 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %44, i32 0, i32 5
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i64 @of_iomap(%struct.device_node* %47, i32 0)
  %49 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %50 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %52 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %22
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %233

61:                                               ; preds = %22
  %62 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %63 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call i32 @irq_of_parse_and_map(%struct.device_node* %67, i32 0)
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ENXIO, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = call i32 @netdev_err(%struct.net_device* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %7, align 4
  br label %228

83:                                               ; preds = %61
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i8* @devm_clk_get(%struct.TYPE_8__* %85, i32* null)
  %87 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %88 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %90 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %96 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %7, align 4
  br label %228

99:                                               ; preds = %83
  %100 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %101 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @clk_prepare_enable(i8* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %228

111:                                              ; preds = %99
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @sunxi_sram_claim(%struct.TYPE_8__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %223

121:                                              ; preds = %111
  %122 = load %struct.device_node*, %struct.device_node** %4, align 8
  %123 = call i8* @of_parse_phandle(%struct.device_node* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %124 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %125 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %127 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %121
  %131 = load %struct.device_node*, %struct.device_node** %4, align 8
  %132 = call i8* @of_parse_phandle(%struct.device_node* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %133 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %134 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %130, %121
  %136 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %137 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %136, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %219

146:                                              ; preds = %135
  %147 = load %struct.device_node*, %struct.device_node** %4, align 8
  %148 = call i8* @of_get_mac_address(%struct.device_node* %147)
  store i8* %148, i8** %8, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call i64 @IS_ERR(i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @ether_addr_copy(i32 %155, i8* %156)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load %struct.net_device*, %struct.net_device** %6, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @is_valid_ether_addr(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %158
  %165 = load %struct.net_device*, %struct.net_device** %6, align 8
  %166 = call i32 @eth_hw_addr_random(%struct.net_device* %165)
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load %struct.net_device*, %struct.net_device** %6, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_warn(%struct.TYPE_8__* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %164, %158
  %174 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %175 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %174, i32 0, i32 1
  store i32 1, i32* %175, align 8
  %176 = load %struct.net_device*, %struct.net_device** %6, align 8
  %177 = call i32 @emac_powerup(%struct.net_device* %176)
  %178 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %179 = call i32 @emac_reset(%struct.emac_board_info* %178)
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 6
  store i32* @emac_netdev_ops, i32** %181, align 8
  %182 = load i32, i32* @watchdog, align 4
  %183 = call i32 @msecs_to_jiffies(i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %6, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = load %struct.net_device*, %struct.net_device** %6, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 4
  store i32* @emac_ethtool_ops, i32** %187, align 8
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = load %struct.net_device*, %struct.net_device** %6, align 8
  %190 = call i32 @platform_set_drvdata(%struct.platform_device* %188, %struct.net_device* %189)
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = call i32 @netif_carrier_off(%struct.net_device* %191)
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = call i32 @register_netdev(%struct.net_device* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %173
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %199, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32, i32* @ENODEV, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  br label %219

203:                                              ; preds = %173
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = load %struct.net_device*, %struct.net_device** %6, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %210 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.net_device*, %struct.net_device** %6, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.net_device*, %struct.net_device** %6, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @dev_info(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %208, i64 %211, i32 %214, i32 %217)
  store i32 0, i32* %2, align 4
  br label %242

219:                                              ; preds = %197, %140
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @sunxi_sram_release(%struct.TYPE_8__* %221)
  br label %223

223:                                              ; preds = %219, %117
  %224 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %225 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @clk_disable_unprepare(i8* %226)
  br label %228

228:                                              ; preds = %223, %106, %94, %77
  %229 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %230 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @iounmap(i64 %231)
  br label %233

233:                                              ; preds = %228, %55
  %234 = load %struct.emac_board_info*, %struct.emac_board_info** %5, align 8
  %235 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %234, i32 0, i32 2
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %236, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %237)
  %239 = load %struct.net_device*, %struct.net_device** %6, align 8
  %240 = call i32 @free_netdev(%struct.net_device* %239)
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %233, %203, %16
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_8__*) #1

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @sunxi_sram_claim(%struct.TYPE_8__*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @emac_powerup(%struct.net_device*) #1

declare dso_local i32 @emac_reset(%struct.emac_board_info*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @sunxi_sram_release(%struct.TYPE_8__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
