; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks8851_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks8851_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i32, i32, i32*, i32* }
%struct.ks_net = type { i8*, i8*, i32, i32, %struct.TYPE_4__, i32, i32, %struct.platform_device*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.net_device* }
%struct.ks8851_mll_platform_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ks_netdev_ops = common dso_local global i32 0, align 4
@ks_ethtool_ops = common dso_local global i32 0, align 4
@ks_phy_read = common dso_local global i32 0, align 4
@ks_phy_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"message enable is %d\0A\00", align 1
@msg_enable = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@KS_CIDER = common dso_local global i32 0, align 4
@CIDER_REV_MASK = common dso_local global i32 0, align 4
@CIDER_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to read device ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GRR_GSR = common dso_local global i32 0, align 4
@KS_OBCR = common dso_local global i32 0, align 4
@OBCR_ODS_16mA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Using random mac address\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Mac address is: %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Found chip, family: 0x%x, id: 0x%x, rev: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ks8851_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ks_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks8851_mll_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = call %struct.net_device* @alloc_etherdev(i32 80)
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %264

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @SET_NETDEV_DEV(%struct.net_device* %18, %struct.TYPE_5__* %20)
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.ks_net* @netdev_priv(%struct.net_device* %22)
  store %struct.ks_net* %23, %struct.ks_net** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %26 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %25, i32 0, i32 8
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %27, i32 0)
  %29 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %30 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %32 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %38 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %4, align 4
  br label %260

41:                                               ; preds = %17
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %42, i32 1)
  %44 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %45 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %47 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %53 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %4, align 4
  br label %260

56:                                               ; preds = %41
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i32 @platform_get_irq(%struct.platform_device* %57, i32 0)
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %260

69:                                               ; preds = %56
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %72 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %71, i32 0, i32 7
  store %struct.platform_device* %70, %struct.platform_device** %72, align 8
  %73 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %74 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %73, i32 0, i32 6
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %77 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %76, i32 0, i32 5
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 3
  store i32* @ks_netdev_ops, i32** %80, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 2
  store i32* @ks_ethtool_ops, i32** %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %85 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store %struct.net_device* %83, %struct.net_device** %86, align 8
  %87 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %88 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %91 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %94 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i32 15, i32* %95, align 8
  %96 = load i32, i32* @ks_phy_read, align 4
  %97 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %98 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @ks_phy_write, align 4
  %101 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %102 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.net_device*, %struct.net_device** %5, align 8
  %105 = load i32, i32* @msg_enable, align 4
  %106 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @msg_enable, align 4
  %108 = load i32, i32* @NETIF_MSG_DRV, align 4
  %109 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @NETIF_MSG_LINK, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @netif_msg_init(i32 %107, i32 %112)
  %114 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %115 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %117 = call i32 @ks_read_config(%struct.ks_net* %116)
  %118 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %119 = load i32, i32* @KS_CIDER, align 4
  %120 = call i32 @ks_rdreg16(%struct.ks_net* %118, i32 %119)
  %121 = load i32, i32* @CIDER_REV_MASK, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load i32, i32* @CIDER_ID, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %69
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @netdev_err(%struct.net_device* %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %260

131:                                              ; preds = %69
  %132 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %133 = call i64 @ks_read_selftest(%struct.ks_net* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = call i32 @netdev_err(%struct.net_device* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %260

140:                                              ; preds = %131
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = call i32 @register_netdev(%struct.net_device* %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %260

146:                                              ; preds = %140
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %147, %struct.net_device* %148)
  %150 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %151 = load i32, i32* @GRR_GSR, align 4
  %152 = call i32 @ks_soft_reset(%struct.ks_net* %150, i32 %151)
  %153 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %154 = call i32 @ks_hw_init(%struct.ks_net* %153)
  %155 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %156 = call i32 @ks_disable_qmu(%struct.ks_net* %155)
  %157 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %158 = call i32 @ks_setup(%struct.ks_net* %157)
  %159 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %160 = call i32 @ks_setup_int(%struct.ks_net* %159)
  %161 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %162 = load i32, i32* @KS_OBCR, align 4
  %163 = call i32 @ks_rdreg16(%struct.ks_net* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %165 = load i32, i32* @KS_OBCR, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @OBCR_ODS_16mA, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @ks_wrreg16(%struct.ks_net* %164, i32 %165, i32 %168)
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %146
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @of_get_mac_address(i64 %179)
  store i8* %180, i8** %9, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = call i64 @IS_ERR(i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %175
  %185 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %186 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 @ether_addr_copy(i32 %187, i8* %188)
  br label %190

190:                                              ; preds = %184, %175
  br label %211

191:                                              ; preds = %146
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = call %struct.ks8851_mll_platform_data* @dev_get_platdata(%struct.TYPE_5__* %193)
  store %struct.ks8851_mll_platform_data* %194, %struct.ks8851_mll_platform_data** %10, align 8
  %195 = load %struct.ks8851_mll_platform_data*, %struct.ks8851_mll_platform_data** %10, align 8
  %196 = icmp ne %struct.ks8851_mll_platform_data* %195, null
  br i1 %196, label %202, label %197

197:                                              ; preds = %191
  %198 = load %struct.net_device*, %struct.net_device** %5, align 8
  %199 = call i32 @netdev_err(%struct.net_device* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %200 = load i32, i32* @ENODEV, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %257

202:                                              ; preds = %191
  %203 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %204 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ks8851_mll_platform_data*, %struct.ks8851_mll_platform_data** %10, align 8
  %207 = getelementptr inbounds %struct.ks8851_mll_platform_data, %struct.ks8851_mll_platform_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @ETH_ALEN, align 4
  %210 = call i32 @memcpy(i32 %205, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %202, %190
  %212 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %213 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @is_valid_ether_addr(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %211
  %218 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %219 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @eth_random_addr(i32 %220)
  %222 = load %struct.net_device*, %struct.net_device** %5, align 8
  %223 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %224

224:                                              ; preds = %217, %211
  %225 = load %struct.net_device*, %struct.net_device** %5, align 8
  %226 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %227 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %225, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = load %struct.net_device*, %struct.net_device** %5, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %234 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @ETH_ALEN, align 4
  %237 = call i32 @memcpy(i32 %232, i32 %235, i32 %236)
  %238 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %239 = load %struct.net_device*, %struct.net_device** %5, align 8
  %240 = getelementptr inbounds %struct.net_device, %struct.net_device* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ks_set_mac(%struct.ks_net* %238, i32 %241)
  %243 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %244 = load i32, i32* @KS_CIDER, align 4
  %245 = call i32 @ks_rdreg16(%struct.ks_net* %243, i32 %244)
  store i32 %245, i32* %7, align 4
  %246 = load %struct.net_device*, %struct.net_device** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = ashr i32 %247, 8
  %249 = and i32 %248, 255
  %250 = load i32, i32* %7, align 4
  %251 = ashr i32 %250, 4
  %252 = and i32 %251, 15
  %253 = load i32, i32* %7, align 4
  %254 = ashr i32 %253, 1
  %255 = and i32 %254, 7
  %256 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %246, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %249, i32 %252, i32 %255)
  store i32 0, i32* %2, align 4
  br label %264

257:                                              ; preds = %197
  %258 = load %struct.net_device*, %struct.net_device** %5, align 8
  %259 = call i32 @unregister_netdev(%struct.net_device* %258)
  br label %260

260:                                              ; preds = %257, %145, %135, %126, %65, %51, %36
  %261 = load %struct.net_device*, %struct.net_device** %5, align 8
  %262 = call i32 @free_netdev(%struct.net_device* %261)
  %263 = load i32, i32* %4, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %260, %224, %14
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local %struct.ks_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @ks_read_config(%struct.ks_net*) #1

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @ks_read_selftest(%struct.ks_net*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @ks_soft_reset(%struct.ks_net*, i32) #1

declare dso_local i32 @ks_hw_init(%struct.ks_net*) #1

declare dso_local i32 @ks_disable_qmu(%struct.ks_net*) #1

declare dso_local i32 @ks_setup(%struct.ks_net*) #1

declare dso_local i32 @ks_setup_int(%struct.ks_net*) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i8* @of_get_mac_address(i64) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local %struct.ks8851_mll_platform_data* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @ks_set_mac(%struct.ks_net*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
