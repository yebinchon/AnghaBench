; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_init_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32 }
%struct.sky2_hw = type { i64, i32, i64, %struct.TYPE_7__*, %struct.net_device** }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sky2_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.sky2_hw*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32, i32 }

@sky2_ethtool_ops = common dso_local global i32 0, align 4
@TX_WATCHDOG = common dso_local global i32 0, align 4
@sky2_netdev_ops = common dso_local global i32* null, align 8
@debug = common dso_local global i32 0, align 4
@default_msg = common dso_local global i32 0, align 4
@SKY2_FLAG_AUTO_SPEED = common dso_local global i32 0, align 4
@SKY2_FLAG_AUTO_PAUSE = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@FC_BOTH = common dso_local global i32 0, align 4
@TX_DEF_PENDING = common dso_local global i32 0, align 4
@RX_DEF_PENDING = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@SKY2_HW_RSS_BROKEN = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@SKY2_HW_VLAN_BROKEN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@SKY2_VLAN_OFFLOADS = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_FE = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE_P = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ETH_JUMBO_MTU = common dso_local global i32 0, align 4
@B2_MAC_1 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid MAC address, defaulting to random\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set MAC address.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.sky2_hw*, i32, i32, i32)* @sky2_init_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @sky2_init_netdev(%struct.sky2_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sky2_port*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %14, %struct.net_device** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %11, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %260

18:                                               ; preds = %4
  %19 = load %struct.net_device*, %struct.net_device** %11, align 8
  %20 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %21 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @SET_NETDEV_DEV(%struct.net_device* %19, %struct.TYPE_8__* %23)
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %26 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %11, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %11, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 8
  store i32* @sky2_ethtool_ops, i32** %33, align 8
  %34 = load i32, i32* @TX_WATCHDOG, align 4
  %35 = load %struct.net_device*, %struct.net_device** %11, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** @sky2_netdev_ops, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load %struct.net_device*, %struct.net_device** %11, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %11, align 8
  %44 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %43)
  store %struct.sky2_port* %44, %struct.sky2_port** %10, align 8
  %45 = load %struct.net_device*, %struct.net_device** %11, align 8
  %46 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %47 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %46, i32 0, i32 15
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  %48 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %49 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %50 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %49, i32 0, i32 14
  store %struct.sky2_hw* %48, %struct.sky2_hw** %50, align 8
  %51 = load i32, i32* @debug, align 4
  %52 = load i32, i32* @default_msg, align 4
  %53 = call i32 @netif_msg_init(i32 %51, i32 %52)
  %54 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %55 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %57 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @u64_stats_init(i32* %58)
  %60 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %61 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %60, i32 0, i32 11
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @u64_stats_init(i32* %62)
  %64 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %65 = load i32, i32* @SKY2_FLAG_AUTO_PAUSE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %68 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %70 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %18
  %75 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %18
  %81 = load i32, i32* @FC_BOTH, align 4
  %82 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %83 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %85 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  %86 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %87 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %86, i32 0, i32 2
  store i32 -1, i32* %87, align 8
  %88 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %89 = call i32 @sky2_supported_modes(%struct.sky2_hw* %88)
  %90 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %91 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %94 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %96 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %95, i32 0, i32 8
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load i32, i32* @TX_DEF_PENDING, align 4
  %99 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %100 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @TX_DEF_PENDING, align 4
  %102 = call i32 @roundup_ring_size(i32 %101)
  %103 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %104 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @RX_DEF_PENDING, align 4
  %106 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %107 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.net_device*, %struct.net_device** %11, align 8
  %109 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %110 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %109, i32 0, i32 4
  %111 = load %struct.net_device**, %struct.net_device*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.net_device*, %struct.net_device** %111, i64 %113
  store %struct.net_device* %108, %struct.net_device** %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %117 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %119 = load i32, i32* @NETIF_F_SG, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @NETIF_F_TSO, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.net_device*, %struct.net_device** %11, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %80
  %130 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %131 = load %struct.net_device*, %struct.net_device** %11, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %80
  %136 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %137 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SKY2_HW_RSS_BROKEN, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @NETIF_F_RXHASH, align 4
  %144 = load %struct.net_device*, %struct.net_device** %11, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %135
  %149 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %150 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SKY2_HW_VLAN_BROKEN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %148
  %156 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %157 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.net_device*, %struct.net_device** %11, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load i32, i32* @SKY2_VLAN_OFFLOADS, align 4
  %164 = load %struct.net_device*, %struct.net_device** %11, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %155, %148
  %169 = load %struct.net_device*, %struct.net_device** %11, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.net_device*, %struct.net_device** %11, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* @ETH_ZLEN, align 4
  %177 = load %struct.net_device*, %struct.net_device** %11, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %180 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @CHIP_ID_YUKON_FE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %168
  %185 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %186 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184, %168
  %191 = load i32, i32* @ETH_DATA_LEN, align 4
  %192 = load %struct.net_device*, %struct.net_device** %11, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  br label %198

194:                                              ; preds = %184
  %195 = load i32, i32* @ETH_JUMBO_MTU, align 4
  %196 = load %struct.net_device*, %struct.net_device** %11, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %190
  %199 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %200 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %199, i32 0, i32 3
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @of_get_mac_address(i32 %204)
  store i8* %205, i8** %12, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @IS_ERR(i8* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %198
  %210 = load %struct.net_device*, %struct.net_device** %11, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = call i32 @ether_addr_copy(i32 %212, i8* %213)
  br label %230

215:                                              ; preds = %198
  %216 = load %struct.net_device*, %struct.net_device** %11, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %220 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @B2_MAC_1, align 8
  %223 = add nsw i64 %221, %222
  %224 = load i32, i32* %7, align 4
  %225 = mul i32 %224, 8
  %226 = zext i32 %225 to i64
  %227 = add nsw i64 %223, %226
  %228 = load i32, i32* @ETH_ALEN, align 4
  %229 = call i32 @memcpy_fromio(i32 %218, i64 %227, i32 %228)
  br label %230

230:                                              ; preds = %215, %209
  %231 = load %struct.net_device*, %struct.net_device** %11, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @is_valid_ether_addr(i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %258, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %238 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %238, i32* %237, align 4
  %239 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 1
  store i32 0, i32* %239, align 4
  %240 = load %struct.net_device*, %struct.net_device** %11, align 8
  %241 = call i32 @netdev_warn(%struct.net_device* %240, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %242 = load %struct.net_device*, %struct.net_device** %11, align 8
  %243 = call i32 @eth_hw_addr_random(%struct.net_device* %242)
  %244 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.net_device*, %struct.net_device** %11, align 8
  %247 = getelementptr inbounds %struct.net_device, %struct.net_device* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @ETH_ALEN, align 4
  %250 = call i32 @memcpy(i32 %245, i32 %248, i32 %249)
  %251 = load %struct.net_device*, %struct.net_device** %11, align 8
  %252 = call i64 @sky2_set_mac_address(%struct.net_device* %251, %struct.sockaddr* %13)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %236
  %255 = load %struct.net_device*, %struct.net_device** %11, align 8
  %256 = call i32 @netdev_warn(%struct.net_device* %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %236
  br label %258

258:                                              ; preds = %257, %230
  %259 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %259, %struct.net_device** %5, align 8
  br label %260

260:                                              ; preds = %258, %17
  %261 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %261
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_8__*) #1

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @sky2_supported_modes(%struct.sky2_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @roundup_ring_size(i32) #1

declare dso_local i8* @of_get_mac_address(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @sky2_set_mac_address(%struct.net_device*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
