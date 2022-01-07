; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.device_node*, %struct.bcmgenet_platform_data* }
%struct.device_node = type { i32 }
%struct.bcmgenet_platform_data = type { i8*, i32 }
%struct.of_device_id = type { i64 }
%struct.bcmgenet_priv = type { i8*, i32, i32, i8*, i8*, i8*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.net_device*, %struct.platform_device*, i32, i32, i32, i8*, i32, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@GENET_MAX_MQ_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"can't allocate net device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bcmgenet_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"can't find IRQs\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't find MAC address\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@bcmgenet_ethtool_ops = common dso_local global i32 0, align 4
@bcmgenet_netdev_ops = common dso_local global i32 0, align 4
@GENET_MSG_DEFAULT = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@bcmgenet_wol_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get enet clock\0A\00", align 1
@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@bcmgenet_irq_task = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"enet-wol\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get enet-wol clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"enet-eee\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to get enet-eee clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@GENET_POWER_PASSIVE = common dso_local global i32 0, align 4
@DESC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcmgenet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcmgenet_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.bcmgenet_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %15, align 8
  store %struct.bcmgenet_platform_data* %16, %struct.bcmgenet_platform_data** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  store %struct.of_device_id* null, %struct.of_device_id** %6, align 8
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* @GENET_MAX_MQ_CNT, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i64, i64* @GENET_MAX_MQ_CNT, align 8
  %26 = add nsw i64 %25, 1
  %27 = call %struct.net_device* @alloc_etherdev_mqs(i32 120, i64 %24, i64 %26)
  store %struct.net_device* %27, %struct.net_device** %8, align 8
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %372

36:                                               ; preds = %1
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* @bcmgenet_match, align 4
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call %struct.of_device_id* @of_match_node(i32 %40, %struct.device_node* %41)
  store %struct.of_device_id* %42, %struct.of_device_id** %6, align 8
  %43 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %44 = icmp ne %struct.of_device_id* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %372

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %50)
  store %struct.bcmgenet_priv* %51, %struct.bcmgenet_priv** %7, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i8* @platform_get_irq(%struct.platform_device* %52, i32 0)
  %54 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %55 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %54, i32 0, i32 17
  store i8* %53, i8** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i8* @platform_get_irq(%struct.platform_device* %56, i32 1)
  %58 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %59 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %58, i32 0, i32 16
  store i8* %57, i8** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i8* @platform_get_irq(%struct.platform_device* %60, i32 2)
  %62 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %63 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %65 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %64, i32 0, i32 17
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %70 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %69, i32 0, i32 16
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68, %49
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(%struct.TYPE_12__* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %368

79:                                               ; preds = %68
  %80 = load %struct.device_node*, %struct.device_node** %5, align 8
  %81 = icmp ne %struct.device_node* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call i8* @of_get_mac_address(%struct.device_node* %83)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_12__* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %368

94:                                               ; preds = %82
  br label %99

95:                                               ; preds = %79
  %96 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %4, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %9, align 8
  br label %99

99:                                               ; preds = %95, %94
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %100, i32 0)
  %102 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %103 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %105 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @IS_ERR(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %111 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %11, align 4
  br label %368

114:                                              ; preds = %99
  %115 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %116 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %115, i32 0, i32 15
  %117 = call i32 @spin_lock_init(i32* %116)
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @SET_NETDEV_DEV(%struct.net_device* %118, %struct.TYPE_12__* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.net_device*, %struct.net_device** %8, align 8
  %125 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %123, %struct.net_device* %124)
  %126 = load %struct.net_device*, %struct.net_device** %8, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @ether_addr_copy(i32 %128, i8* %129)
  %131 = load i32, i32* @HZ, align 4
  %132 = mul nsw i32 2, %131
  %133 = load %struct.net_device*, %struct.net_device** %8, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 5
  store i32* @bcmgenet_ethtool_ops, i32** %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 4
  store i32* @bcmgenet_netdev_ops, i32** %138, align 8
  %139 = load i32, i32* @GENET_MSG_DEFAULT, align 4
  %140 = call i32 @netif_msg_init(i32 -1, i32 %139)
  %141 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %142 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %141, i32 0, i32 14
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @NETIF_F_SG, align 4
  %144 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.net_device*, %struct.net_device** %8, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %155 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %154, i32 0, i32 1
  store i32 1, i32* %155, align 8
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %159 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %158, i32 0, i32 13
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @bcmgenet_wol_isr, align 4
  %162 = load %struct.net_device*, %struct.net_device** %8, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %166 = call i32 @devm_request_irq(%struct.TYPE_12__* %157, i8* %160, i32 %161, i32 0, i32 %164, %struct.bcmgenet_priv* %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %114
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @device_set_wakeup_capable(%struct.TYPE_12__* %171, i32 1)
  br label %173

173:                                              ; preds = %169, %114
  %174 = load %struct.net_device*, %struct.net_device** %8, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 64
  store i32 %177, i32* %175, align 8
  %178 = load %struct.net_device*, %struct.net_device** %8, align 8
  %179 = call i32 @netdev_boot_setup_check(%struct.net_device* %178)
  %180 = load %struct.net_device*, %struct.net_device** %8, align 8
  %181 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %182 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %181, i32 0, i32 8
  store %struct.net_device* %180, %struct.net_device** %182, align 8
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %185 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %184, i32 0, i32 9
  store %struct.platform_device* %183, %struct.platform_device** %185, align 8
  %186 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %187 = icmp ne %struct.of_device_id* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %173
  %189 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %190 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %194 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 4
  br label %201

195:                                              ; preds = %173
  %196 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %4, align 8
  %197 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %200 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %188
  %202 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %203 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %202, i32 0, i32 9
  %204 = load %struct.platform_device*, %struct.platform_device** %203, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i8* @devm_clk_get(%struct.TYPE_12__* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %207 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %208 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %210 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @IS_ERR(i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %201
  %215 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %216 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %215, i32 0, i32 9
  %217 = load %struct.platform_device*, %struct.platform_device** %216, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = call i32 @dev_warn(%struct.TYPE_12__* %218, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %220 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %221 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %220, i32 0, i32 3
  store i8* null, i8** %221, align 8
  br label %222

222:                                              ; preds = %214, %201
  %223 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %224 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %223, i32 0, i32 3
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @clk_prepare_enable(i8* %225)
  %227 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %228 = call i32 @bcmgenet_set_hw_params(%struct.bcmgenet_priv* %227)
  %229 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %230 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %229, i32 0, i32 12
  %231 = call i32 @init_waitqueue_head(i32* %230)
  %232 = load i32, i32* @RX_BUF_LENGTH, align 4
  %233 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %234 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %233, i32 0, i32 11
  store i32 %232, i32* %234, align 4
  %235 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %236 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %235, i32 0, i32 10
  %237 = load i32, i32* @bcmgenet_irq_task, align 4
  %238 = call i32 @INIT_WORK(i32* %236, i32 %237)
  %239 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %240 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %239, i32 0, i32 9
  %241 = load %struct.platform_device*, %struct.platform_device** %240, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = call i8* @devm_clk_get(%struct.TYPE_12__* %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %244 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %245 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %244, i32 0, i32 4
  store i8* %243, i8** %245, align 8
  %246 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %247 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @IS_ERR(i8* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %222
  %252 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %253 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %252, i32 0, i32 9
  %254 = load %struct.platform_device*, %struct.platform_device** %253, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = call i32 @dev_warn(%struct.TYPE_12__* %255, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %257 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %258 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %257, i32 0, i32 4
  store i8* null, i8** %258, align 8
  br label %259

259:                                              ; preds = %251, %222
  %260 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %261 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %260, i32 0, i32 9
  %262 = load %struct.platform_device*, %struct.platform_device** %261, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = call i8* @devm_clk_get(%struct.TYPE_12__* %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %265 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %266 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %265, i32 0, i32 5
  store i8* %264, i8** %266, align 8
  %267 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %268 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %267, i32 0, i32 5
  %269 = load i8*, i8** %268, align 8
  %270 = call i64 @IS_ERR(i8* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %259
  %273 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %274 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %273, i32 0, i32 9
  %275 = load %struct.platform_device*, %struct.platform_device** %274, align 8
  %276 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %275, i32 0, i32 0
  %277 = call i32 @dev_warn(%struct.TYPE_12__* %276, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %278 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %279 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %278, i32 0, i32 5
  store i8* null, i8** %279, align 8
  br label %280

280:                                              ; preds = %272, %259
  %281 = load %struct.device_node*, %struct.device_node** %5, align 8
  %282 = icmp ne %struct.device_node* %281, null
  br i1 %282, label %283, label %295

283:                                              ; preds = %280
  %284 = load %struct.device_node*, %struct.device_node** %5, align 8
  %285 = call i32 @of_property_read_string(%struct.device_node* %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %12)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %295, label %287

287:                                              ; preds = %283
  %288 = load i8*, i8** %12, align 8
  %289 = call i32 @strcasecmp(i8* %288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %293 = load i32, i32* @GENET_POWER_PASSIVE, align 4
  %294 = call i32 @bcmgenet_power_up(%struct.bcmgenet_priv* %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %287, %283, %280
  %296 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %297 = call i32 @reset_umac(%struct.bcmgenet_priv* %296)
  %298 = load %struct.net_device*, %struct.net_device** %8, align 8
  %299 = call i32 @bcmgenet_mii_init(%struct.net_device* %298)
  store i32 %299, i32* %11, align 4
  %300 = load i32, i32* %11, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  br label %363

303:                                              ; preds = %295
  %304 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %305 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %304, i32 0, i32 8
  %306 = load %struct.net_device*, %struct.net_device** %305, align 8
  %307 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %308 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %307, i32 0, i32 7
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, 1
  %313 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %306, i64 %312)
  %314 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %315 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %314, i32 0, i32 8
  %316 = load %struct.net_device*, %struct.net_device** %315, align 8
  %317 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %318 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %317, i32 0, i32 7
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  %323 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %316, i32 %322)
  store i32 0, i32* %10, align 4
  br label %324

324:                                              ; preds = %340, %303
  %325 = load i32, i32* %10, align 4
  %326 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %327 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %326, i32 0, i32 7
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp ult i32 %325, %330
  br i1 %331, label %332, label %343

332:                                              ; preds = %324
  %333 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %334 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %333, i32 0, i32 6
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = load i32, i32* %10, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %332
  %341 = load i32, i32* %10, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %10, align 4
  br label %324

343:                                              ; preds = %324
  %344 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %345 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %344, i32 0, i32 6
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i64, i64* @DESC_INDEX, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  store i32 1, i32* %349, align 4
  %350 = load %struct.net_device*, %struct.net_device** %8, align 8
  %351 = call i32 @netif_carrier_off(%struct.net_device* %350)
  %352 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %353 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %352, i32 0, i32 3
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @clk_disable_unprepare(i8* %354)
  %356 = load %struct.net_device*, %struct.net_device** %8, align 8
  %357 = call i32 @register_netdev(%struct.net_device* %356)
  store i32 %357, i32* %11, align 4
  %358 = load i32, i32* %11, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %343
  br label %368

361:                                              ; preds = %343
  %362 = load i32, i32* %11, align 4
  store i32 %362, i32* %2, align 4
  br label %372

363:                                              ; preds = %302
  %364 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %365 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %364, i32 0, i32 3
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 @clk_disable_unprepare(i8* %366)
  br label %368

368:                                              ; preds = %363, %360, %109, %88, %73
  %369 = load %struct.net_device*, %struct.net_device** %8, align 8
  %370 = call i32 @free_netdev(%struct.net_device* %369)
  %371 = load i32, i32* %11, align 4
  store i32 %371, i32* %2, align 4
  br label %372

372:                                              ; preds = %368, %361, %45, %30
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i64, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_12__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_12__*, %struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i8*, i32, i32, i32, %struct.bcmgenet_priv*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @netdev_boot_setup_check(%struct.net_device*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @bcmgenet_set_hw_params(%struct.bcmgenet_priv*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @bcmgenet_power_up(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @reset_umac(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_mii_init(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i64) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
