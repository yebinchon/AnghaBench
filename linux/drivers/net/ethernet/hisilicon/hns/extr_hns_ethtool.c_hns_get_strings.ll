; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae_handle*, i32, i32*)* }

@.str = private unnamed_addr constant [35 x i8] c"h->dev->ops->get_strings is null!\0A\00", align 1
@ETH_SS_TEST = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@hns_nic_test_strs = common dso_local global i32* null, align 8
@MAC_INTERNALLOOP_MAC = common dso_local global i64 0, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@MAC_INTERNALLOOP_SERDES = common dso_local global i64 0, align 8
@MAC_INTERNALLOOP_PHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"rx_packets\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tx_packets\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rx_bytes\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tx_bytes\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"rx_errors\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tx_errors\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"rx_dropped\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tx_dropped\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"multicast\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"collisions\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"rx_over_errors\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"rx_crc_errors\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"rx_frame_errors\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"rx_fifo_errors\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"rx_missed_errors\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"tx_aborted_errors\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"tx_carrier_errors\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"tx_fifo_errors\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"tx_heartbeat_errors\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"rx_length_errors\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"tx_window_errors\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"rx_compressed\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"tx_compressed\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"netdev_rx_dropped\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"netdev_tx_dropped\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"netdev_tx_timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @hns_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hns_nic_priv*, align 8
  %8 = alloca %struct.hnae_handle*, align 8
  %9 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hns_nic_priv* %11, %struct.hns_nic_priv** %7, align 8
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 0
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %13, align 8
  store %struct.hnae_handle* %14, %struct.hnae_handle** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %18 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.hnae_handle*, i32, i32*)*, i32 (%struct.hnae_handle*, i32, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.hnae_handle*, i32, i32*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %279

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ETH_SS_TEST, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %28
  %33 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %34 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %33, i32 0, i32 0
  %35 = load %struct.hnae_handle*, %struct.hnae_handle** %34, align 8
  %36 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  %42 = load i32*, i32** @hns_nic_test_strs, align 8
  %43 = load i64, i64* @MAC_INTERNALLOOP_MAC, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = call i32 @memcpy(i8* %41, i32 %45, i32 %46)
  %48 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %40, %32
  %53 = load i8*, i8** %9, align 8
  %54 = load i32*, i32** @hns_nic_test_strs, align 8
  %55 = load i64, i64* @MAC_INTERNALLOOP_SERDES, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = call i32 @memcpy(i8* %53, i32 %57, i32 %58)
  %60 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %9, align 8
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %52
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %9, align 8
  %77 = load i32*, i32** @hns_nic_test_strs, align 8
  %78 = load i64, i64* @MAC_INTERNALLOOP_PHY, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %82 = call i32 @memcpy(i8* %76, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %68, %52
  br label %279

84:                                               ; preds = %28
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %87 = call i32 @snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %94 = call i32 @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %101 = call i32 @snprintf(i8* %99, i32 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %108 = call i32 @snprintf(i8* %106, i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8* %112, i8** %9, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %115 = call i32 @snprintf(i8* %113, i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %122 = call i32 @snprintf(i8* %120, i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %9, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %129 = call i32 @snprintf(i8* %127, i32 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8* %133, i8** %9, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %136 = call i32 @snprintf(i8* %134, i32 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8* %140, i8** %9, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %143 = call i32 @snprintf(i8* %141, i32 %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8* %147, i8** %9, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %150 = call i32 @snprintf(i8* %148, i32 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %157 = call i32 @snprintf(i8* %155, i32 %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %164 = call i32 @snprintf(i8* %162, i32 %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8* %168, i8** %9, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %171 = call i32 @snprintf(i8* %169, i32 %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8* %175, i8** %9, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %178 = call i32 @snprintf(i8* %176, i32 %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8* %182, i8** %9, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %185 = call i32 @snprintf(i8* %183, i32 %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %186 = load i8*, i8** %9, align 8
  %187 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8* %189, i8** %9, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %192 = call i32 @snprintf(i8* %190, i32 %191, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8* %196, i8** %9, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %199 = call i32 @snprintf(i8* %197, i32 %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %200 = load i8*, i8** %9, align 8
  %201 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8* %203, i8** %9, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %206 = call i32 @snprintf(i8* %204, i32 %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %207 = load i8*, i8** %9, align 8
  %208 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8* %210, i8** %9, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %213 = call i32 @snprintf(i8* %211, i32 %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %214 = load i8*, i8** %9, align 8
  %215 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8* %217, i8** %9, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %220 = call i32 @snprintf(i8* %218, i32 %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %221 = load i8*, i8** %9, align 8
  %222 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  store i8* %224, i8** %9, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %227 = call i32 @snprintf(i8* %225, i32 %226, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %228 = load i8*, i8** %9, align 8
  %229 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  store i8* %231, i8** %9, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %234 = call i32 @snprintf(i8* %232, i32 %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %235 = load i8*, i8** %9, align 8
  %236 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  store i8* %238, i8** %9, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %241 = call i32 @snprintf(i8* %239, i32 %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %242 = load i8*, i8** %9, align 8
  %243 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  store i8* %245, i8** %9, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %248 = call i32 @snprintf(i8* %246, i32 %247, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %249 = load i8*, i8** %9, align 8
  %250 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  store i8* %252, i8** %9, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %255 = call i32 @snprintf(i8* %253, i32 %254, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %256 = load i8*, i8** %9, align 8
  %257 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  store i8* %259, i8** %9, align 8
  %260 = load i8*, i8** %9, align 8
  %261 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %262 = call i32 @snprintf(i8* %260, i32 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %263 = load i8*, i8** %9, align 8
  %264 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8* %266, i8** %9, align 8
  %267 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %268 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %267, i32 0, i32 1
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = load i32 (%struct.hnae_handle*, i32, i32*)*, i32 (%struct.hnae_handle*, i32, i32*)** %272, align 8
  %274 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load i8*, i8** %9, align 8
  %277 = bitcast i8* %276 to i32*
  %278 = call i32 %273(%struct.hnae_handle* %274, i32 %275, i32* %277)
  br label %279

279:                                              ; preds = %25, %84, %83
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
