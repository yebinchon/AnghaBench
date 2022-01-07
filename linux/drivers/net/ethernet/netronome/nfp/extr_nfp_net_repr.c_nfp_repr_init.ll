; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_port = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.nfp_repr = type { %struct.TYPE_10__*, %struct.nfp_port* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.net_device* }
%struct.nfp_net = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dst_entry = type { i32 }

@METADATA_HW_PORT_MUX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfp_repr_netdev_ops = common dso_local global i32 0, align 4
@nfp_port_ethtool_ops = common dso_local global i32 0, align 4
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
@NFP_NET_LSO_MAX_SEGS = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@IFF_DISABLE_NETPOLL = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_repr_init(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2, %struct.nfp_port* %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_port*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.nfp_repr*, align 8
  %13 = alloca %struct.nfp_net*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nfp_port* %3, %struct.nfp_port** %10, align 8
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i8* @netdev_priv(%struct.net_device* %16)
  %18 = bitcast i8* %17 to %struct.nfp_repr*
  store %struct.nfp_repr* %18, %struct.nfp_repr** %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %11, align 8
  %20 = call i8* @netdev_priv(%struct.net_device* %19)
  %21 = bitcast i8* %20 to %struct.nfp_net*
  store %struct.nfp_net* %21, %struct.nfp_net** %13, align 8
  %22 = load %struct.nfp_net*, %struct.nfp_net** %13, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.nfp_port*, %struct.nfp_port** %10, align 8
  %27 = load %struct.nfp_repr*, %struct.nfp_repr** %12, align 8
  %28 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %27, i32 0, i32 1
  store %struct.nfp_port* %26, %struct.nfp_port** %28, align 8
  %29 = load i32, i32* @METADATA_HW_PORT_MUX, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.TYPE_10__* @metadata_dst_alloc(i32 0, i32 %29, i32 %30)
  %32 = load %struct.nfp_repr*, %struct.nfp_repr** %12, align 8
  %33 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %32, i32 0, i32 0
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.nfp_repr*, %struct.nfp_repr** %12, align 8
  %35 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %310

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.nfp_repr*, %struct.nfp_repr** %12, align 8
  %44 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %11, align 8
  %50 = load %struct.nfp_repr*, %struct.nfp_repr** %12, align 8
  %51 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store %struct.net_device* %49, %struct.net_device** %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 8
  store i32* @nfp_repr_netdev_ops, i32** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 7
  store i32* @nfp_port_ethtool_ops, i32** %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %11, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @NFP_NET_CFG_CTRL_LIVE_ADDR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %41
  %70 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %71 = load %struct.net_device*, %struct.net_device** %8, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %41
  %76 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @NFP_NET_CFG_CTRL_RXCSUM_ANY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %85 = load %struct.net_device*, %struct.net_device** %8, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %75
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @NFP_NET_CFG_CTRL_TXCSUM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %96 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.net_device*, %struct.net_device** %8, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %94, %89
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @NFP_NET_CFG_CTRL_GATHER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @NETIF_F_SG, align 4
  %109 = load %struct.net_device*, %struct.net_device** %8, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.nfp_net*, %struct.nfp_net** %13, align 8
  %120 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 2
  br i1 %123, label %129, label %124

124:                                              ; preds = %118, %113
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @NFP_NET_CFG_CTRL_LSO2, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124, %118
  %130 = load i32, i32* @NETIF_F_TSO, align 4
  %131 = load i32, i32* @NETIF_F_TSO6, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.net_device*, %struct.net_device** %8, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %124
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @NFP_NET_CFG_CTRL_RSS_ANY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @NETIF_F_RXHASH, align 4
  %144 = load %struct.net_device*, %struct.net_device** %8, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %137
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %160 = load %struct.net_device*, %struct.net_device** %8, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %164, %148
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @NFP_NET_CFG_CTRL_NVGRE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %165
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %177 = load %struct.net_device*, %struct.net_device** %8, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %170
  br label %182

182:                                              ; preds = %181, %165
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %185 = load i32, i32* @NFP_NET_CFG_CTRL_NVGRE, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load %struct.net_device*, %struct.net_device** %8, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.net_device*, %struct.net_device** %8, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %189, %182
  %196 = load %struct.net_device*, %struct.net_device** %8, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.net_device*, %struct.net_device** %8, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @NFP_NET_CFG_CTRL_RXVLAN, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %195
  %206 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %207 = load %struct.net_device*, %struct.net_device** %8, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %195
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @NFP_NET_CFG_CTRL_TXVLAN, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %211
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @NFP_NET_CFG_CTRL_LSO2, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.net_device*, %struct.net_device** %8, align 8
  %223 = call i32 @netdev_warn(%struct.net_device* %222, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %230

224:                                              ; preds = %216
  %225 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %226 = load %struct.net_device*, %struct.net_device** %8, align 8
  %227 = getelementptr inbounds %struct.net_device, %struct.net_device* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %221
  br label %231

231:                                              ; preds = %230, %211
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* @NFP_NET_CFG_CTRL_CTAG_FILTER, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %238 = load %struct.net_device*, %struct.net_device** %8, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %236, %231
  %243 = load %struct.net_device*, %struct.net_device** %8, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.net_device*, %struct.net_device** %8, align 8
  %247 = getelementptr inbounds %struct.net_device, %struct.net_device* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* @NETIF_F_TSO, align 4
  %249 = load i32, i32* @NETIF_F_TSO6, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load %struct.net_device*, %struct.net_device** %8, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load i32, i32* @NFP_NET_LSO_MAX_SEGS, align 4
  %257 = load %struct.net_device*, %struct.net_device** %8, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @IFF_NO_QUEUE, align 4
  %260 = load i32, i32* @IFF_DISABLE_NETPOLL, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.net_device*, %struct.net_device** %8, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load i32, i32* @NETIF_F_LLTX, align 4
  %267 = load %struct.net_device*, %struct.net_device** %8, align 8
  %268 = getelementptr inbounds %struct.net_device, %struct.net_device* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %272 = call i64 @nfp_app_has_tc(%struct.nfp_app* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %242
  %275 = load i32, i32* @NETIF_F_HW_TC, align 4
  %276 = load %struct.net_device*, %struct.net_device** %8, align 8
  %277 = getelementptr inbounds %struct.net_device, %struct.net_device* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load i32, i32* @NETIF_F_HW_TC, align 4
  %281 = load %struct.net_device*, %struct.net_device** %8, align 8
  %282 = getelementptr inbounds %struct.net_device, %struct.net_device* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %274, %242
  %286 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %287 = load %struct.net_device*, %struct.net_device** %8, align 8
  %288 = call i32 @nfp_app_repr_init(%struct.nfp_app* %286, %struct.net_device* %287)
  store i32 %288, i32* %15, align 4
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  br label %303

292:                                              ; preds = %285
  %293 = load %struct.net_device*, %struct.net_device** %8, align 8
  %294 = call i32 @register_netdev(%struct.net_device* %293)
  store i32 %294, i32* %15, align 4
  %295 = load i32, i32* %15, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %299

298:                                              ; preds = %292
  store i32 0, i32* %6, align 4
  br label %310

299:                                              ; preds = %297
  %300 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %301 = load %struct.net_device*, %struct.net_device** %8, align 8
  %302 = call i32 @nfp_app_repr_clean(%struct.nfp_app* %300, %struct.net_device* %301)
  br label %303

303:                                              ; preds = %299, %291
  %304 = load %struct.nfp_repr*, %struct.nfp_repr** %12, align 8
  %305 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %304, i32 0, i32 0
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = bitcast %struct.TYPE_10__* %306 to %struct.dst_entry*
  %308 = call i32 @dst_release(%struct.dst_entry* %307)
  %309 = load i32, i32* %15, align 4
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %303, %298, %38
  %311 = load i32, i32* %6, align 4
  ret i32 %311
}

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_10__* @metadata_dst_alloc(i32, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i64 @nfp_app_has_tc(%struct.nfp_app*) #1

declare dso_local i32 @nfp_app_repr_init(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_app_repr_clean(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
