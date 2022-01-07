; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_add_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_add_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_12__**, i32*, %struct.TYPE_9__*, i64, i64, i32, %struct.mtk_mac** }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, %struct.TYPE_10__, i32, i32*, i32* }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.TYPE_9__ = type { i32 }
%struct.mtk_mac = type { i32, %struct.phylink*, %struct.device_node*, %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_13__*, i64, i32, %struct.mtk_eth* }
%struct.phylink = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"missing mac id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTK_MAC_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%d is not a valid mac id\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"duplicate mac id found: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"alloc_etherdev failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to allocate counter memory\0A\00", align 1
@MTK_STAT_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"incorrect phy-mode\0A\00", align 1
@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@MLO_AN_PHY = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@PHYLINK_NETDEV = common dso_local global i32 0, align 4
@mtk_phylink_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@mtk_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@mtk_ethtool_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, %struct.device_node*)* @mtk_add_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_add_mac(%struct.mtk_eth* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_eth*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.phylink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtk_mac*, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %342

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @be32_to_cpup(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MTK_MAC_COUNT, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %342

37:                                               ; preds = %23
  %38 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %40, i64 %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %342

54:                                               ; preds = %37
  %55 = call %struct.TYPE_12__* @alloc_etherdev(i32 88)
  %56 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %58, i64 %60
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %61, align 8
  %62 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %64, i64 %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %54
  %71 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %72 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %342

77:                                               ; preds = %54
  %78 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %79 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %80, i64 %82
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call %struct.mtk_mac* @netdev_priv(%struct.TYPE_12__* %84)
  store %struct.mtk_mac* %85, %struct.mtk_mac** %11, align 8
  %86 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %87 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %87, i32 0, i32 6
  %89 = load %struct.mtk_mac**, %struct.mtk_mac*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.mtk_mac*, %struct.mtk_mac** %89, i64 %91
  store %struct.mtk_mac* %86, %struct.mtk_mac** %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %95 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %97 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %98 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %97, i32 0, i32 10
  store %struct.mtk_eth* %96, %struct.mtk_eth** %98, align 8
  %99 = load %struct.device_node*, %struct.device_node** %5, align 8
  %100 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %101 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %100, i32 0, i32 2
  store %struct.device_node* %99, %struct.device_node** %101, align 8
  %102 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %103 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @memset(i32 %104, i32 0, i32 4)
  %106 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %107 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %106, i32 0, i32 8
  store i64 0, i64* %107, align 8
  %108 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.TYPE_13__* @devm_kzalloc(i32 %110, i32 12, i32 %111)
  %113 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %114 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %113, i32 0, i32 7
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %114, align 8
  %115 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %116 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %115, i32 0, i32 7
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %77
  %120 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %121 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %332

126:                                              ; preds = %77
  %127 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %128 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %127, i32 0, i32 7
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %133 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %132, i32 0, i32 7
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = call i32 @u64_stats_init(i32* %135)
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @MTK_STAT_OFFSET, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %141 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %140, i32 0, i32 7
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call i32 @of_get_phy_mode(%struct.device_node* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %126
  %149 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %150 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %332

155:                                              ; preds = %126
  %156 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  %157 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %158 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @MLO_AN_PHY, align 4
  %160 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %161 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @SPEED_UNKNOWN, align 4
  %163 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %164 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %166 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %167, i64 %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 5
  %173 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %174 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %175, align 8
  %176 = load i32, i32* @PHYLINK_NETDEV, align 4
  %177 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %178 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  %180 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %181 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %180, i32 0, i32 3
  %182 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %183 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %182, i32 0, i32 2
  %184 = load %struct.device_node*, %struct.device_node** %183, align 8
  %185 = call i32 @of_fwnode_handle(%struct.device_node* %184)
  %186 = load i32, i32* %8, align 4
  %187 = call %struct.phylink* @phylink_create(%struct.TYPE_11__* %181, i32 %185, i32 %186, i32* @mtk_phylink_ops)
  store %struct.phylink* %187, %struct.phylink** %7, align 8
  %188 = load %struct.phylink*, %struct.phylink** %7, align 8
  %189 = call i64 @IS_ERR(%struct.phylink* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %155
  %192 = load %struct.phylink*, %struct.phylink** %7, align 8
  %193 = call i32 @PTR_ERR(%struct.phylink* %192)
  store i32 %193, i32* %10, align 4
  br label %332

194:                                              ; preds = %155
  %195 = load %struct.phylink*, %struct.phylink** %7, align 8
  %196 = load %struct.mtk_mac*, %struct.mtk_mac** %11, align 8
  %197 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %196, i32 0, i32 1
  store %struct.phylink* %195, %struct.phylink** %197, align 8
  %198 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %199 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %198, i32 0, i32 0
  %200 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %200, i64 %202
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %206 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @SET_NETDEV_DEV(%struct.TYPE_12__* %204, i32 %207)
  %209 = load i32, i32* @HZ, align 4
  %210 = mul nsw i32 5, %209
  %211 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %212 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %213, i64 %215
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  store i32 %210, i32* %218, align 8
  %219 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %220 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %219, i32 0, i32 0
  %221 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %221, i64 %223
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 8
  store i32* @mtk_netdev_ops, i32** %226, align 8
  %227 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %228 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %231 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %230, i32 0, i32 0
  %232 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %232, i64 %234
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  store i64 %229, i64* %237, align 8
  %238 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %239 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %238, i32 0, i32 2
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %244 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %245, i64 %247
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  store i32 %242, i32* %250, align 8
  %251 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %252 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %194
  %256 = load i32, i32* @NETIF_F_LRO, align 4
  %257 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %258 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %257, i32 0, i32 0
  %259 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %259, i64 %261
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %256
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %255, %194
  %268 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %269 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %268, i32 0, i32 2
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %274 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %275 = or i32 %273, %274
  %276 = xor i32 %275, -1
  %277 = and i32 %272, %276
  %278 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %279 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %278, i32 0, i32 0
  %280 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %280, i64 %282
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 3
  store i32 %277, i32* %285, align 4
  %286 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %287 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %286, i32 0, i32 2
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %292 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %291, i32 0, i32 0
  %293 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %292, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %293, i64 %295
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %290
  store i32 %300, i32* %298, align 8
  %301 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %302 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %301, i32 0, i32 0
  %303 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %303, i64 %305
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 7
  store i32* @mtk_ethtool_ops, i32** %308, align 8
  %309 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %310 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %315 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %314, i32 0, i32 0
  %316 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %316, i64 %318
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 6
  store i32 %313, i32* %321, align 8
  %322 = load %struct.device_node*, %struct.device_node** %5, align 8
  %323 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %324 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %323, i32 0, i32 0
  %325 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %325, i64 %327
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 0
  store %struct.device_node* %322, %struct.device_node** %331, align 8
  store i32 0, i32* %3, align 4
  br label %342

332:                                              ; preds = %191, %148, %119
  %333 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %334 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %333, i32 0, i32 0
  %335 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %334, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %335, i64 %337
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %338, align 8
  %340 = call i32 @free_netdev(%struct.TYPE_12__* %339)
  %341 = load i32, i32* %10, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %332, %267, %70, %46, %29, %16
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local %struct.TYPE_12__* @alloc_etherdev(i32) #1

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local %struct.phylink* @phylink_create(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.phylink*) #1

declare dso_local i32 @PTR_ERR(%struct.phylink*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @free_netdev(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
