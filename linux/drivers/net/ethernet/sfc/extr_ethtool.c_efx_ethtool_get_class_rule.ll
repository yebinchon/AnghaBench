; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_class_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_class_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ethhdr, %struct.ethtool_usrip6_spec, %struct.ethtool_tcpip6_spec, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ethhdr = type { i64, i32, i32 }
%struct.ethtool_usrip6_spec = type { i64, i32, i32 }
%struct.ethtool_tcpip6_spec = type { i8*, i8*, i32, i32 }
%struct.ethtool_usrip4_spec = type { i64, i8*, i8*, i32 }
%struct.ethtool_tcpip4_spec = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.ethhdr, %struct.ethtool_usrip6_spec, %struct.ethtool_tcpip6_spec, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec }
%struct.efx_filter_spec = type { i64, i32, i64, i64, i32, i32, i32, i8**, i8**, i32, i32, i8*, i8* }

@EFX_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@EFX_FILTER_RX_DMAQ_ID_DROP = common dso_local global i64 0, align 8
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@EFX_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_IP_PROTO = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EFX_FILTER_MATCH_OUTER_VID = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_REM_HOST = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_PORT = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_REM_PORT = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@UDP_V4_FLOW = common dso_local global i32 0, align 4
@IP4_ADDR_FULL_MASK = common dso_local global i8* null, align 8
@PORT_FULL_MASK = common dso_local global i8* null, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@TCP_V6_FLOW = common dso_local global i32 0, align 4
@UDP_V6_FLOW = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_MAC = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_MAC_IG = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_REM_MAC = common dso_local global i32 0, align 4
@ETHER_FLOW = common dso_local global i32 0, align 4
@mac_addr_ig_mask = common dso_local global i32 0, align 4
@ETHER_TYPE_FULL_MASK = common dso_local global i64 0, align 8
@IPV4_USER_FLOW = common dso_local global i32 0, align 4
@ETH_RX_NFC_IP4 = common dso_local global i32 0, align 4
@IP_PROTO_FULL_MASK = common dso_local global i8* null, align 8
@IPV6_USER_FLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@FLOW_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_rx_flow_spec*, i32*)* @efx_ethtool_get_class_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_class_rule(%struct.efx_nic* %0, %struct.ethtool_rx_flow_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %9 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %10 = alloca %struct.ethtool_usrip4_spec*, align 8
  %11 = alloca %struct.ethtool_usrip4_spec*, align 8
  %12 = alloca %struct.ethtool_tcpip6_spec*, align 8
  %13 = alloca %struct.ethtool_tcpip6_spec*, align 8
  %14 = alloca %struct.ethtool_usrip6_spec*, align 8
  %15 = alloca %struct.ethtool_usrip6_spec*, align 8
  %16 = alloca %struct.ethhdr*, align 8
  %17 = alloca %struct.ethhdr*, align 8
  %18 = alloca %struct.efx_filter_spec, align 8
  %19 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %22, %struct.ethtool_tcpip4_spec** %8, align 8
  %23 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %25, %struct.ethtool_tcpip4_spec** %9, align 8
  %26 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  store %struct.ethtool_usrip4_spec* %28, %struct.ethtool_usrip4_spec** %10, align 8
  %29 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store %struct.ethtool_usrip4_spec* %31, %struct.ethtool_usrip4_spec** %11, align 8
  %32 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store %struct.ethtool_tcpip6_spec* %34, %struct.ethtool_tcpip6_spec** %12, align 8
  %35 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store %struct.ethtool_tcpip6_spec* %37, %struct.ethtool_tcpip6_spec** %13, align 8
  %38 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store %struct.ethtool_usrip6_spec* %40, %struct.ethtool_usrip6_spec** %14, align 8
  %41 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store %struct.ethtool_usrip6_spec* %43, %struct.ethtool_usrip6_spec** %15, align 8
  %44 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.ethhdr* %46, %struct.ethhdr** %16, align 8
  %47 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.ethhdr* %49, %struct.ethhdr** %17, align 8
  %50 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %51 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %52 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @efx_filter_get_filter_safe(%struct.efx_nic* %50, i32 %51, i32 %54, %struct.efx_filter_spec* %18)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %3
  %59 = load i32, i32* %19, align 4
  store i32 %59, i32* %4, align 4
  br label %605

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EFX_FILTER_RX_DMAQ_ID_DROP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %73 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %194

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @ETH_P_IP, align 4
  %84 = call i64 @htons(i32 %83)
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %194

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %194

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IPPROTO_TCP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IPPROTO_UDP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %194

102:                                              ; preds = %97, %92
  %103 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %106 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @EFX_FILTER_MATCH_LOC_PORT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @EFX_FILTER_MATCH_REM_PORT, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = and i32 %104, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %194, label %121

121:                                              ; preds = %102
  %122 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IPPROTO_TCP, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @TCP_V4_FLOW, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @UDP_V4_FLOW, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %133 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 8
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %145 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %147 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %148 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %139, %130
  %150 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 7
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %161 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %163 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %164 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %155, %149
  %166 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @EFX_FILTER_MATCH_LOC_PORT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 12
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %175 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** @PORT_FULL_MASK, align 8
  %177 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %178 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %171, %165
  %180 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @EFX_FILTER_MATCH_REM_PORT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 11
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %189 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @PORT_FULL_MASK, align 8
  %191 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %9, align 8
  %192 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %179
  br label %567

194:                                              ; preds = %102, %97, %86, %80, %74
  %195 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %316

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @ETH_P_IPV6, align 4
  %204 = call i64 @htons(i32 %203)
  %205 = icmp eq i64 %202, %204
  br i1 %205, label %206, label %316

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %316

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IPPROTO_TCP, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @IPPROTO_UDP, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %316

222:                                              ; preds = %217, %212
  %223 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %226 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @EFX_FILTER_MATCH_LOC_PORT, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @EFX_FILTER_MATCH_REM_PORT, align 4
  %237 = or i32 %235, %236
  %238 = xor i32 %237, -1
  %239 = and i32 %224, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %316, label %241

241:                                              ; preds = %222
  %242 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @IPPROTO_TCP, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = load i32, i32* @TCP_V6_FLOW, align 4
  br label %250

248:                                              ; preds = %241
  %249 = load i32, i32* @UDP_V6_FLOW, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  %252 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %253 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  %254 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %250
  %260 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %12, align 8
  %261 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 8
  %264 = load i8**, i8*** %263, align 8
  %265 = call i32 @memcpy(i32 %262, i8** %264, i32 4)
  %266 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %13, align 8
  %267 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ip6_fill_mask(i32 %268)
  br label %270

270:                                              ; preds = %259, %250
  %271 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %270
  %277 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %12, align 8
  %278 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 7
  %281 = load i8**, i8*** %280, align 8
  %282 = call i32 @memcpy(i32 %279, i8** %281, i32 4)
  %283 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %13, align 8
  %284 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @ip6_fill_mask(i32 %285)
  br label %287

287:                                              ; preds = %276, %270
  %288 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @EFX_FILTER_MATCH_LOC_PORT, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 12
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %12, align 8
  %297 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %296, i32 0, i32 1
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** @PORT_FULL_MASK, align 8
  %299 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %13, align 8
  %300 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %299, i32 0, i32 1
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %293, %287
  %302 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @EFX_FILTER_MATCH_REM_PORT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 11
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %12, align 8
  %311 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @PORT_FULL_MASK, align 8
  %313 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %13, align 8
  %314 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %307, %301
  br label %566

316:                                              ; preds = %222, %217, %206, %200, %194
  %317 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC, align 4
  %320 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC_IG, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @EFX_FILTER_MATCH_REM_MAC, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %327 = or i32 %325, %326
  %328 = xor i32 %327, -1
  %329 = and i32 %318, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %398, label %331

331:                                              ; preds = %316
  %332 = load i32, i32* @ETHER_FLOW, align 4
  %333 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %334 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %333, i32 0, i32 1
  store i32 %332, i32* %334, align 8
  %335 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC, align 4
  %338 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC_IG, align 4
  %339 = or i32 %337, %338
  %340 = and i32 %336, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %366

342:                                              ; preds = %331
  %343 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %344 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 10
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @ether_addr_copy(i32 %345, i32 %347)
  %349 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %342
  %355 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %356 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @eth_broadcast_addr(i32 %357)
  br label %365

359:                                              ; preds = %342
  %360 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %361 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @mac_addr_ig_mask, align 4
  %364 = call i32 @ether_addr_copy(i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %359, %354
  br label %366

366:                                              ; preds = %365, %331
  %367 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @EFX_FILTER_MATCH_REM_MAC, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %383

372:                                              ; preds = %366
  %373 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %374 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 9
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @ether_addr_copy(i32 %375, i32 %377)
  %379 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %380 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @eth_broadcast_addr(i32 %381)
  br label %383

383:                                              ; preds = %372, %366
  %384 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %383
  %390 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %393 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %392, i32 0, i32 0
  store i64 %391, i64* %393, align 8
  %394 = load i64, i64* @ETHER_TYPE_FULL_MASK, align 8
  %395 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %396 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %395, i32 0, i32 0
  store i64 %394, i64* %396, align 8
  br label %397

397:                                              ; preds = %389, %383
  br label %565

398:                                              ; preds = %316
  %399 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %479

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = load i32, i32* @ETH_P_IP, align 4
  %408 = call i64 @htons(i32 %407)
  %409 = icmp eq i64 %406, %408
  br i1 %409, label %410, label %479

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %414 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %419 = or i32 %417, %418
  %420 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %421 = or i32 %419, %420
  %422 = xor i32 %421, -1
  %423 = and i32 %412, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %479, label %425

425:                                              ; preds = %410
  %426 = load i32, i32* @IPV4_USER_FLOW, align 4
  %427 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %428 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %427, i32 0, i32 1
  store i32 %426, i32* %428, align 8
  %429 = load i32, i32* @ETH_RX_NFC_IP4, align 4
  %430 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %10, align 8
  %431 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %430, i32 0, i32 3
  store i32 %429, i32* %431, align 8
  %432 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %425
  %438 = load i8*, i8** @IP_PROTO_FULL_MASK, align 8
  %439 = ptrtoint i8* %438 to i64
  %440 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %441 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %440, i32 0, i32 0
  store i64 %439, i64* %441, align 8
  %442 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %10, align 8
  %445 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %444, i32 0, i32 0
  store i64 %443, i64* %445, align 8
  br label %446

446:                                              ; preds = %437, %425
  %447 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %462

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 8
  %454 = load i8**, i8*** %453, align 8
  %455 = getelementptr inbounds i8*, i8** %454, i64 0
  %456 = load i8*, i8** %455, align 8
  %457 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %10, align 8
  %458 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %457, i32 0, i32 2
  store i8* %456, i8** %458, align 8
  %459 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %460 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %461 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %460, i32 0, i32 2
  store i8* %459, i8** %461, align 8
  br label %462

462:                                              ; preds = %452, %446
  %463 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %478

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 7
  %470 = load i8**, i8*** %469, align 8
  %471 = getelementptr inbounds i8*, i8** %470, i64 0
  %472 = load i8*, i8** %471, align 8
  %473 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %10, align 8
  %474 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %473, i32 0, i32 1
  store i8* %472, i8** %474, align 8
  %475 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %476 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %477 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %476, i32 0, i32 1
  store i8* %475, i8** %477, align 8
  br label %478

478:                                              ; preds = %468, %462
  br label %564

479:                                              ; preds = %410, %404, %398
  %480 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %559

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 2
  %487 = load i64, i64* %486, align 8
  %488 = load i32, i32* @ETH_P_IPV6, align 4
  %489 = call i64 @htons(i32 %488)
  %490 = icmp eq i64 %487, %489
  br i1 %490, label %491, label %559

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %495 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %496 = or i32 %494, %495
  %497 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %498 = or i32 %496, %497
  %499 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %500 = or i32 %498, %499
  %501 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %502 = or i32 %500, %501
  %503 = xor i32 %502, -1
  %504 = and i32 %493, %503
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %559, label %506

506:                                              ; preds = %491
  %507 = load i32, i32* @IPV6_USER_FLOW, align 4
  %508 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %509 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 8
  %510 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %524

515:                                              ; preds = %506
  %516 = load i8*, i8** @IP_PROTO_FULL_MASK, align 8
  %517 = ptrtoint i8* %516 to i64
  %518 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %15, align 8
  %519 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %518, i32 0, i32 0
  store i64 %517, i64* %519, align 8
  %520 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 3
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %14, align 8
  %523 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %522, i32 0, i32 0
  store i64 %521, i64* %523, align 8
  br label %524

524:                                              ; preds = %515, %506
  %525 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %541

530:                                              ; preds = %524
  %531 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %14, align 8
  %532 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 8
  %535 = load i8**, i8*** %534, align 8
  %536 = call i32 @memcpy(i32 %533, i8** %535, i32 4)
  %537 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %15, align 8
  %538 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @ip6_fill_mask(i32 %539)
  br label %541

541:                                              ; preds = %530, %524
  %542 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @EFX_FILTER_MATCH_REM_HOST, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %541
  %548 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %14, align 8
  %549 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 8
  %551 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 7
  %552 = load i8**, i8*** %551, align 8
  %553 = call i32 @memcpy(i32 %550, i8** %552, i32 4)
  %554 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %15, align 8
  %555 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 8
  %557 = call i32 @ip6_fill_mask(i32 %556)
  br label %558

558:                                              ; preds = %547, %541
  br label %563

559:                                              ; preds = %491, %485, %479
  %560 = call i32 @WARN_ON(i32 1)
  %561 = load i32, i32* @EINVAL, align 4
  %562 = sub nsw i32 0, %561
  store i32 %562, i32* %4, align 4
  br label %605

563:                                              ; preds = %558
  br label %564

564:                                              ; preds = %563, %478
  br label %565

565:                                              ; preds = %564, %397
  br label %566

566:                                              ; preds = %565, %315
  br label %567

567:                                              ; preds = %566, %193
  %568 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 1
  %569 = load i32, i32* %568, align 8
  %570 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %571 = and i32 %569, %570
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %588

573:                                              ; preds = %567
  %574 = load i32, i32* @FLOW_EXT, align 4
  %575 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %576 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 8
  %578 = or i32 %577, %574
  store i32 %578, i32* %576, align 8
  %579 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 6
  %580 = load i32, i32* %579, align 8
  %581 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %582 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %581, i32 0, i32 3
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 0
  store i32 %580, i32* %583, align 8
  %584 = call i64 @htons(i32 4095)
  %585 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %586 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %585, i32 0, i32 2
  %587 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %586, i32 0, i32 0
  store i64 %584, i64* %587, align 8
  br label %588

588:                                              ; preds = %573, %567
  %589 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 4
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %592 = and i32 %590, %591
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %603

594:                                              ; preds = %588
  %595 = load i32, i32* @FLOW_RSS, align 4
  %596 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %597 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 8
  %599 = or i32 %598, %595
  store i32 %599, i32* %597, align 8
  %600 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 5
  %601 = load i32, i32* %600, align 4
  %602 = load i32*, i32** %7, align 8
  store i32 %601, i32* %602, align 4
  br label %603

603:                                              ; preds = %594, %588
  %604 = load i32, i32* %19, align 4
  store i32 %604, i32* %4, align 4
  br label %605

605:                                              ; preds = %603, %559, %58
  %606 = load i32, i32* %4, align 4
  ret i32 %606
}

declare dso_local i32 @efx_filter_get_filter_safe(%struct.efx_nic*, i32, i32, %struct.efx_filter_spec*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @ip6_fill_mask(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
