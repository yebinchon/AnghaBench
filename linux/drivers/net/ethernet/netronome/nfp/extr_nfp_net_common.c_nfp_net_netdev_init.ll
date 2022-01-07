; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, %struct.TYPE_4__, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NFP_NET_CFG_CTRL_LIVE_ADDR = common dso_local global i32 0, align 4
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RXCSUM_ANY = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_TXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_GATHER = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_LSO = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_LSO2 = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RSS_ANY = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_VXLAN = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_NVGRE = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RXVLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_TXVLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Device advertises both TSO2 and TXVLAN. Refusing to enable TXVLAN.\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_LSO_ANY = common dso_local global i32 0, align 4
@nfp_net_netdev_ops = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@NFP_NET_LSO_MAX_SEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_netdev_init(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %4 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %9 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nfp_net_write_mac_addr(%struct.nfp_net* %8, i32 %14)
  %16 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NFP_NET_CFG_CTRL_LIVE_ADDR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %1
  %35 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %39 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NFP_NET_CFG_CTRL_RXCSUM_ANY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %34
  %45 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %51 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NFP_NET_CFG_CTRL_RXCSUM_ANY, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %56 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %44, %34
  %61 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %62 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NFP_NET_CFG_CTRL_TXCSUM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %69 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @NFP_NET_CFG_CTRL_TXCSUM, align 4
  %76 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %77 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %67, %60
  %82 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %83 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NFP_NET_CFG_CTRL_GATHER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load i32, i32* @NETIF_F_SG, align 4
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @NFP_NET_CFG_CTRL_GATHER, align 4
  %95 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %96 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %88, %81
  %101 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %102 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %109 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 2
  br i1 %112, label %120, label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %115 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NFP_NET_CFG_CTRL_LSO2, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %113, %107
  %121 = load i32, i32* @NETIF_F_TSO, align 4
  %122 = load i32, i32* @NETIF_F_TSO6, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %129 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NFP_NET_CFG_CTRL_LSO2, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %137

135:                                              ; preds = %120
  %136 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  br label %137

137:                                              ; preds = %135, %134
  %138 = phi i32 [ %132, %134 ], [ %136, %135 ]
  %139 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %140 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %137, %113
  %145 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %146 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NFP_NET_CFG_CTRL_RSS_ANY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @NETIF_F_RXHASH, align 4
  %153 = load %struct.net_device*, %struct.net_device** %3, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %144
  %158 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %159 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %157
  %165 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %166 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %173 = load %struct.net_device*, %struct.net_device** %3, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %164
  %178 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %179 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %180 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %178
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %157
  %185 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %186 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @NFP_NET_CFG_CTRL_NVGRE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %184
  %192 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %193 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %200 = load %struct.net_device*, %struct.net_device** %3, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %191
  %205 = load i32, i32* @NFP_NET_CFG_CTRL_NVGRE, align 4
  %206 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %207 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %205
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %204, %184
  %212 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %213 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %216 = load i32, i32* @NFP_NET_CFG_CTRL_NVGRE, align 4
  %217 = or i32 %215, %216
  %218 = and i32 %214, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load %struct.net_device*, %struct.net_device** %3, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.net_device*, %struct.net_device** %3, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %220, %211
  %227 = load %struct.net_device*, %struct.net_device** %3, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.net_device*, %struct.net_device** %3, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %233 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @NFP_NET_CFG_CTRL_RXVLAN, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %226
  %239 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %240 = load %struct.net_device*, %struct.net_device** %3, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  %244 = load i32, i32* @NFP_NET_CFG_CTRL_RXVLAN, align 4
  %245 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %246 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %238, %226
  %251 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %252 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @NFP_NET_CFG_CTRL_TXVLAN, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %280

257:                                              ; preds = %250
  %258 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %259 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @NFP_NET_CFG_CTRL_LSO2, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %266 = call i32 @nn_warn(%struct.nfp_net* %265, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %279

267:                                              ; preds = %257
  %268 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %269 = load %struct.net_device*, %struct.net_device** %3, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  %273 = load i32, i32* @NFP_NET_CFG_CTRL_TXVLAN, align 4
  %274 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %275 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %273
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %267, %264
  br label %280

280:                                              ; preds = %279, %250
  %281 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %282 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @NFP_NET_CFG_CTRL_CTAG_FILTER, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %280
  %288 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %289 = load %struct.net_device*, %struct.net_device** %3, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  %293 = load i32, i32* @NFP_NET_CFG_CTRL_CTAG_FILTER, align 4
  %294 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %295 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %293
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %287, %280
  %300 = load %struct.net_device*, %struct.net_device** %3, align 8
  %301 = getelementptr inbounds %struct.net_device, %struct.net_device* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.net_device*, %struct.net_device** %3, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 3
  store i32 %302, i32* %304, align 4
  %305 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %306 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @nfp_app_has_tc(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %299
  %311 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %312 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load i32, i32* @NETIF_F_HW_TC, align 4
  %317 = load %struct.net_device*, %struct.net_device** %3, align 8
  %318 = getelementptr inbounds %struct.net_device, %struct.net_device* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  br label %321

321:                                              ; preds = %315, %310, %299
  %322 = load i32, i32* @NETIF_F_TSO, align 4
  %323 = load i32, i32* @NETIF_F_TSO6, align 4
  %324 = or i32 %322, %323
  %325 = xor i32 %324, -1
  %326 = load %struct.net_device*, %struct.net_device** %3, align 8
  %327 = getelementptr inbounds %struct.net_device, %struct.net_device* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 4
  %330 = load i32, i32* @NFP_NET_CFG_CTRL_LSO_ANY, align 4
  %331 = xor i32 %330, -1
  %332 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %333 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, %331
  store i32 %336, i32* %334, align 8
  %337 = load %struct.net_device*, %struct.net_device** %3, align 8
  %338 = getelementptr inbounds %struct.net_device, %struct.net_device* %337, i32 0, i32 8
  store i32* @nfp_net_netdev_ops, i32** %338, align 8
  %339 = call i32 @msecs_to_jiffies(i32 5000)
  %340 = load %struct.net_device*, %struct.net_device** %3, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* @ETH_MIN_MTU, align 4
  %343 = load %struct.net_device*, %struct.net_device** %3, align 8
  %344 = getelementptr inbounds %struct.net_device, %struct.net_device* %343, i32 0, i32 6
  store i32 %342, i32* %344, align 8
  %345 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %346 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.net_device*, %struct.net_device** %3, align 8
  %349 = getelementptr inbounds %struct.net_device, %struct.net_device* %348, i32 0, i32 5
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* @NFP_NET_LSO_MAX_SEGS, align 4
  %351 = load %struct.net_device*, %struct.net_device** %3, align 8
  %352 = getelementptr inbounds %struct.net_device, %struct.net_device* %351, i32 0, i32 4
  store i32 %350, i32* %352, align 8
  %353 = load %struct.net_device*, %struct.net_device** %3, align 8
  %354 = call i32 @netif_carrier_off(%struct.net_device* %353)
  %355 = load %struct.net_device*, %struct.net_device** %3, align 8
  %356 = call i32 @nfp_net_set_ethtool_ops(%struct.net_device* %355)
  ret void
}

declare dso_local i32 @nfp_net_write_mac_addr(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_warn(%struct.nfp_net*, i8*) #1

declare dso_local i64 @nfp_app_has_tc(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @nfp_net_set_ethtool_ops(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
