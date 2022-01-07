; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_netdev_set_hwcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_netdev_set_hwcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.netvsc_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.ndis_offload = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.ndis_offload_params = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@GSO_MAX_SIZE = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMETERS_TX_RX_DISABLED = common dso_local global i32 0, align 4
@NETVSC_SUPPORTED_HW_FEATURES = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NDIS_TXCSUM_ALL_TCP4 = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@TRANSPORT_INFO_IPV4_TCP = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMETERS_TX_RX_ENABLED = common dso_local global i8* null, align 8
@NDIS_OFFLOAD_ENCAP_8023 = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMETERS_LSOV2_ENABLED = common dso_local global i8* null, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NDIS_TXCSUM_CAP_UDP4 = common dso_local global i32 0, align 4
@TRANSPORT_INFO_IPV4_UDP = common dso_local global i32 0, align 4
@NDIS_TXCSUM_ALL_TCP6 = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@TRANSPORT_INFO_IPV6_TCP = common dso_local global i32 0, align 4
@NDIS_LSOV2_CAP_IP6 = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NDIS_TXCSUM_CAP_UDP6 = common dso_local global i32 0, align 4
@TRANSPORT_INFO_IPV6_UDP = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED = common dso_local global i8* null, align 8
@NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_device*, %struct.netvsc_device*)* @rndis_netdev_set_hwcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_netdev_set_hwcaps(%struct.rndis_device* %0, %struct.netvsc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rndis_device*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device_context*, align 8
  %8 = alloca %struct.ndis_offload, align 8
  %9 = alloca %struct.ndis_offload_params, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rndis_device* %0, %struct.rndis_device** %4, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %5, align 8
  %12 = load %struct.rndis_device*, %struct.rndis_device** %4, align 8
  %13 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %15)
  store %struct.net_device_context* %16, %struct.net_device_context** %7, align 8
  %17 = load i32, i32* @GSO_MAX_SIZE, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.rndis_device*, %struct.rndis_device** %4, align 8
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %20 = call i32 @rndis_query_hwcaps(%struct.rndis_device* %18, %struct.netvsc_device* %19, %struct.ndis_offload* %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %227

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.ndis_offload_params* %9, i32 0, i32 72)
  %27 = load i32, i32* @NDIS_OFFLOAD_PARAMETERS_TX_RX_DISABLED, align 4
  %28 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 8
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @NETVSC_SUPPORTED_HW_FEATURES, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %36 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @NETIF_F_SG, align 4
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NDIS_TXCSUM_ALL_TCP4, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @NDIS_TXCSUM_ALL_TCP4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %25
  %55 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @TRANSPORT_INFO_IPV4_TCP, align 4
  %61 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %62 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_TX_RX_ENABLED, align 8
  %66 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 7
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NDIS_OFFLOAD_ENCAP_8023, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %54
  %74 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_LSOV2_ENABLED, align 8
  %75 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 6
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @NETIF_F_TSO, align 4
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %73
  br label %91

91:                                               ; preds = %90, %54
  %92 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NDIS_TXCSUM_CAP_UDP4, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_TX_RX_ENABLED, align 8
  %100 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 5
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @TRANSPORT_INFO_IPV4_UDP, align 4
  %102 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %103 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %98, %91
  br label %107

107:                                              ; preds = %106, %25
  %108 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NDIS_TXCSUM_ALL_TCP6, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @NDIS_TXCSUM_ALL_TCP6, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %176

115:                                              ; preds = %107
  %116 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_TX_RX_ENABLED, align 8
  %122 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 4
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* @TRANSPORT_INFO_IPV6_TCP, align 4
  %124 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %125 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NDIS_OFFLOAD_ENCAP_8023, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @NDIS_LSOV2_CAP_IP6, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @NDIS_LSOV2_CAP_IP6, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %134
  %143 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_LSOV2_ENABLED, align 8
  %144 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 3
  store i8* %143, i8** %144, align 8
  %145 = load i32, i32* @NETIF_F_TSO6, align 4
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %155, %142
  br label %160

160:                                              ; preds = %159, %134, %115
  %161 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NDIS_TXCSUM_CAP_UDP6, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_TX_RX_ENABLED, align 8
  %169 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  %170 = load i32, i32* @TRANSPORT_INFO_IPV6_UDP, align 4
  %171 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %172 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %167, %160
  br label %176

176:                                              ; preds = %175, %107
  %177 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %209

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %8, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %181
  %187 = load i32, i32* @NETIF_F_LRO, align 4
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.net_device*, %struct.net_device** %6, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @NETIF_F_LRO, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %186
  %199 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED, align 8
  %200 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 1
  store i8* %199, i8** %200, align 8
  %201 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_ENABLED, align 8
  %202 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 0
  store i8* %201, i8** %202, align 8
  br label %208

203:                                              ; preds = %186
  %204 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED, align 8
  %205 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 1
  store i8* %204, i8** %205, align 8
  %206 = load i8*, i8** @NDIS_OFFLOAD_PARAMETERS_RSC_DISABLED, align 8
  %207 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %9, i32 0, i32 0
  store i8* %206, i8** %207, align 8
  br label %208

208:                                              ; preds = %203, %198
  br label %209

209:                                              ; preds = %208, %181, %176
  %210 = load i32, i32* @NETVSC_SUPPORTED_HW_FEATURES, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.net_device*, %struct.net_device** %6, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %211, %214
  %216 = load %struct.net_device*, %struct.net_device** %6, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load %struct.net_device*, %struct.net_device** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @netif_set_gso_max_size(%struct.net_device* %220, i32 %221)
  %223 = load %struct.net_device*, %struct.net_device** %6, align 8
  %224 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %225 = call i32 @rndis_filter_set_offload_params(%struct.net_device* %223, %struct.netvsc_device* %224, %struct.ndis_offload_params* %9)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %209, %23
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rndis_query_hwcaps(%struct.rndis_device*, %struct.netvsc_device*, %struct.ndis_offload*) #1

declare dso_local i32 @memset(%struct.ndis_offload_params*, i32, i32) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i32) #1

declare dso_local i32 @rndis_filter_set_offload_params(%struct.net_device*, %struct.netvsc_device*, %struct.ndis_offload_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
