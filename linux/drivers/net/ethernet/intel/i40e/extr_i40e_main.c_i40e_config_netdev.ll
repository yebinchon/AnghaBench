; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, %struct.TYPE_10__, i32, %struct.net_device*, i32, %struct.i40e_pf* }
%struct.TYPE_10__ = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32*, i32*, i32 }
%struct.i40e_pf = type { i32, i32, i64, %struct.TYPE_9__**, %struct.TYPE_6__*, %struct.i40e_hw }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }

@ETH_ALEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_SOFT_FEATURES = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_PARTIAL = common dso_local global i32 0, align 4
@NETIF_F_GSO_IPXIP4 = common dso_local global i32 0, align 4
@NETIF_F_GSO_IPXIP6 = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SCTP_CRC = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@I40E_HW_OUTER_UDP_CSUM_CAPABLE = common dso_local global i32 0, align 4
@NETIF_F_TSO_MANGLEID = common dso_local global i32 0, align 4
@NETIF_F_HW_L2FW_DOFFLOAD = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%.*sv%%d\00", align 1
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@IFF_SUPP_NOFCS = common dso_local global i32 0, align 4
@i40e_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@I40E_MAX_RXBUFFER = common dso_local global i64 0, align 8
@I40E_PACKET_HDR_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_config_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_netdev(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 5
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %4, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 5
  store %struct.i40e_hw* %19, %struct.i40e_hw** %5, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  store i32 8, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.net_device* @alloc_etherdev_mq(i32 %27, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %7, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %259

37:                                               ; preds = %1
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %39, i32 0, i32 3
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %41)
  store %struct.i40e_netdev_priv* %42, %struct.i40e_netdev_priv** %6, align 8
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %44 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %45 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %44, i32 0, i32 0
  store %struct.i40e_vsi* %43, %struct.i40e_vsi** %45, align 8
  %46 = load i32, i32* @NETIF_F_SG, align 4
  %47 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NETIF_F_SOFT_FEATURES, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NETIF_F_TSO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NETIF_F_TSO6, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NETIF_F_GSO_PARTIAL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NETIF_F_GSO_IPXIP4, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NETIF_F_GSO_IPXIP6, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NETIF_F_RXHASH, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %82 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @I40E_HW_OUTER_UDP_CSUM_CAPABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %37
  %88 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %37
  %94 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.net_device*, %struct.net_device** %7, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.net_device*, %struct.net_device** %7, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @NETIF_F_HW_L2FW_DOFFLOAD, align 4
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %13, align 4
  %121 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %122 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %93
  %128 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %129 = load i32, i32* @NETIF_F_HW_TC, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %127, %93
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.net_device*, %struct.net_device** %7, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %147 = load %struct.net_device*, %struct.net_device** %7, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %152 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @I40E_VSI_MAIN, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %133
  %157 = load %struct.net_device*, %struct.net_device** %7, align 8
  %158 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %159 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %158, i32 0, i32 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = call i32 @SET_NETDEV_DEV(%struct.net_device* %157, i32* %161)
  %163 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %164 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @ether_addr_copy(i32* %26, i32* %166)
  %168 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %169 = call i32 @i40e_rm_default_mac_filter(%struct.i40e_vsi* %168, i32* %26)
  %170 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %171 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %170, i32 0, i32 2
  %172 = call i32 @spin_lock_bh(i32* %171)
  %173 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %174 = call i32 @i40e_add_mac_filter(%struct.i40e_vsi* %173, i32* %26)
  %175 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %176 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %175, i32 0, i32 2
  %177 = call i32 @spin_unlock_bh(i32* %176)
  br label %207

178:                                              ; preds = %133
  %179 = load %struct.net_device*, %struct.net_device** %7, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** @IFNAMSIZ, align 8
  %183 = load i8*, i8** @IFNAMSIZ, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 -4
  %185 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %186 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %185, i32 0, i32 3
  %187 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %186, align 8
  %188 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %189 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %187, i64 %190
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @snprintf(i32 %181, i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %184, i32 %196)
  %198 = call i32 @eth_random_addr(i32* %26)
  %199 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %200 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %199, i32 0, i32 2
  %201 = call i32 @spin_lock_bh(i32* %200)
  %202 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %203 = call i32 @i40e_add_mac_filter(%struct.i40e_vsi* %202, i32* %26)
  %204 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %205 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %204, i32 0, i32 2
  %206 = call i32 @spin_unlock_bh(i32* %205)
  br label %207

207:                                              ; preds = %178, %156
  %208 = call i32 @eth_broadcast_addr(i32* %23)
  %209 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %210 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %209, i32 0, i32 2
  %211 = call i32 @spin_lock_bh(i32* %210)
  %212 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %213 = call i32 @i40e_add_mac_filter(%struct.i40e_vsi* %212, i32* %23)
  %214 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %215 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %214, i32 0, i32 2
  %216 = call i32 @spin_unlock_bh(i32* %215)
  %217 = load %struct.net_device*, %struct.net_device** %7, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 12
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @ether_addr_copy(i32* %219, i32* %26)
  %221 = load %struct.net_device*, %struct.net_device** %7, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 11
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @ether_addr_copy(i32* %223, i32* %26)
  %225 = load %struct.net_device*, %struct.net_device** %7, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 5
  store i32 16, i32* %226, align 4
  %227 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %228 = load %struct.net_device*, %struct.net_device** %7, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load i32, i32* @IFF_SUPP_NOFCS, align 4
  %233 = load %struct.net_device*, %struct.net_device** %7, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %238 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %239 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @i40e_vsi_config_netdev_tc(%struct.i40e_vsi* %237, i32 %241)
  %243 = load %struct.net_device*, %struct.net_device** %7, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 9
  store i32* @i40e_netdev_ops, i32** %244, align 8
  %245 = load i32, i32* @HZ, align 4
  %246 = mul nsw i32 5, %245
  %247 = load %struct.net_device*, %struct.net_device** %7, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 6
  store i32 %246, i32* %248, align 8
  %249 = load %struct.net_device*, %struct.net_device** %7, align 8
  %250 = call i32 @i40e_set_ethtool_ops(%struct.net_device* %249)
  %251 = load i32, i32* @ETH_MIN_MTU, align 4
  %252 = load %struct.net_device*, %struct.net_device** %7, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 8
  store i32 %251, i32* %253, align 8
  %254 = load i64, i64* @I40E_MAX_RXBUFFER, align 8
  %255 = load i64, i64* @I40E_PACKET_HDR_PAD, align 8
  %256 = sub nsw i64 %254, %255
  %257 = load %struct.net_device*, %struct.net_device** %7, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 7
  store i64 %256, i64* %258, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %259

259:                                              ; preds = %207, %34
  %260 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #2

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @i40e_rm_default_mac_filter(%struct.i40e_vsi*, i32*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @i40e_add_mac_filter(%struct.i40e_vsi*, i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @snprintf(i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @eth_random_addr(i32*) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @i40e_vsi_config_netdev_tc(%struct.i40e_vsi*, i32) #2

declare dso_local i32 @i40e_set_ethtool_ops(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
