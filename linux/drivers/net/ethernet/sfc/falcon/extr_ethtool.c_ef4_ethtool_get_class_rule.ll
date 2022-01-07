; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_class_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_class_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ethhdr, %struct.ethtool_usrip6_spec, %struct.ethtool_tcpip6_spec, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ethhdr = type { i64, i32, i32 }
%struct.ethtool_usrip6_spec = type { i64, i32, i32 }
%struct.ethtool_tcpip6_spec = type { i8*, i8*, i32, i32 }
%struct.ethtool_usrip4_spec = type { i64, i8*, i8*, i32 }
%struct.ethtool_tcpip4_spec = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.ethhdr, %struct.ethtool_usrip6_spec, %struct.ethtool_tcpip6_spec, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ef4_filter_spec = type { i64, i32, i64, i64, i32, i8**, i8**, i32, i32, i8*, i8* }

@EF4_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@EF4_FILTER_RX_DMAQ_ID_DROP = common dso_local global i64 0, align 8
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@EF4_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_IP_PROTO = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EF4_FILTER_MATCH_OUTER_VID = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_HOST = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_PORT = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_PORT = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@UDP_V4_FLOW = common dso_local global i32 0, align 4
@IP4_ADDR_FULL_MASK = common dso_local global i8* null, align 8
@PORT_FULL_MASK = common dso_local global i8* null, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@TCP_V6_FLOW = common dso_local global i32 0, align 4
@UDP_V6_FLOW = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_MAC = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_MAC_IG = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_MAC = common dso_local global i32 0, align 4
@ETHER_FLOW = common dso_local global i32 0, align 4
@mac_addr_ig_mask = common dso_local global i32 0, align 4
@ETHER_TYPE_FULL_MASK = common dso_local global i64 0, align 8
@IPV4_USER_FLOW = common dso_local global i32 0, align 4
@ETH_RX_NFC_IP4 = common dso_local global i32 0, align 4
@IP_PROTO_FULL_MASK = common dso_local global i8* null, align 8
@IPV6_USER_FLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, %struct.ethtool_rx_flow_spec*)* @ef4_ethtool_get_class_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_get_class_rule(%struct.ef4_nic* %0, %struct.ethtool_rx_flow_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %6 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %7 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %8 = alloca %struct.ethtool_usrip4_spec*, align 8
  %9 = alloca %struct.ethtool_usrip4_spec*, align 8
  %10 = alloca %struct.ethtool_tcpip6_spec*, align 8
  %11 = alloca %struct.ethtool_tcpip6_spec*, align 8
  %12 = alloca %struct.ethtool_usrip6_spec*, align 8
  %13 = alloca %struct.ethtool_usrip6_spec*, align 8
  %14 = alloca %struct.ethhdr*, align 8
  %15 = alloca %struct.ethhdr*, align 8
  %16 = alloca %struct.ef4_filter_spec, align 8
  %17 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %5, align 8
  %18 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %20, %struct.ethtool_tcpip4_spec** %6, align 8
  %21 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %23, %struct.ethtool_tcpip4_spec** %7, align 8
  %24 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store %struct.ethtool_usrip4_spec* %26, %struct.ethtool_usrip4_spec** %8, align 8
  %27 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store %struct.ethtool_usrip4_spec* %29, %struct.ethtool_usrip4_spec** %9, align 8
  %30 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store %struct.ethtool_tcpip6_spec* %32, %struct.ethtool_tcpip6_spec** %10, align 8
  %33 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store %struct.ethtool_tcpip6_spec* %35, %struct.ethtool_tcpip6_spec** %11, align 8
  %36 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store %struct.ethtool_usrip6_spec* %38, %struct.ethtool_usrip6_spec** %12, align 8
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store %struct.ethtool_usrip6_spec* %41, %struct.ethtool_usrip6_spec** %13, align 8
  %42 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.ethhdr* %44, %struct.ethhdr** %14, align 8
  %45 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.ethhdr* %47, %struct.ethhdr** %15, align 8
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %49 = load i32, i32* @EF4_FILTER_PRI_MANUAL, align 4
  %50 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ef4_filter_get_filter_safe(%struct.ef4_nic* %48, i32 %49, i32 %52, %struct.ef4_filter_spec* %16)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %3, align 4
  br label %588

58:                                               ; preds = %2
  %59 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EF4_FILTER_RX_DMAQ_ID_DROP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %65 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %72

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %192

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ETH_P_IP, align 4
  %82 = call i64 @htons(i32 %81)
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %192

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %192

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IPPROTO_TCP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IPPROTO_UDP, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %192

100:                                              ; preds = %95, %90
  %101 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %104 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @EF4_FILTER_MATCH_LOC_PORT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @EF4_FILTER_MATCH_REM_PORT, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = and i32 %102, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %192, label %119

119:                                              ; preds = %100
  %120 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IPPROTO_TCP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @TCP_V4_FLOW, align 4
  br label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @UDP_V4_FLOW, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 6
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %143 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %145 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %146 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %137, %128
  %148 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 5
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %159 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %161 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %162 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %153, %147
  %164 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @EF4_FILTER_MATCH_LOC_PORT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 10
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %173 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @PORT_FULL_MASK, align 8
  %175 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %176 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %169, %163
  %178 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @EF4_FILTER_MATCH_REM_PORT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 9
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %6, align 8
  %187 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = load i8*, i8** @PORT_FULL_MASK, align 8
  %189 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %190 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %183, %177
  br label %565

192:                                              ; preds = %100, %95, %84, %78, %72
  %193 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %314

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @ETH_P_IPV6, align 4
  %202 = call i64 @htons(i32 %201)
  %203 = icmp eq i64 %200, %202
  br i1 %203, label %204, label %314

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %314

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @IPPROTO_TCP, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @IPPROTO_UDP, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %314

220:                                              ; preds = %215, %210
  %221 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %224 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @EF4_FILTER_MATCH_LOC_PORT, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @EF4_FILTER_MATCH_REM_PORT, align 4
  %235 = or i32 %233, %234
  %236 = xor i32 %235, -1
  %237 = and i32 %222, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %314, label %239

239:                                              ; preds = %220
  %240 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @IPPROTO_TCP, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, i32* @TCP_V6_FLOW, align 4
  br label %248

246:                                              ; preds = %239
  %247 = load i32, i32* @UDP_V6_FLOW, align 4
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  %250 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %251 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %248
  %258 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %259 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 6
  %262 = load i8**, i8*** %261, align 8
  %263 = call i32 @memcpy(i32 %260, i8** %262, i32 4)
  %264 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %11, align 8
  %265 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ip6_fill_mask(i32 %266)
  br label %268

268:                                              ; preds = %257, %248
  %269 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %268
  %275 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %276 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 5
  %279 = load i8**, i8*** %278, align 8
  %280 = call i32 @memcpy(i32 %277, i8** %279, i32 4)
  %281 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %11, align 8
  %282 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ip6_fill_mask(i32 %283)
  br label %285

285:                                              ; preds = %274, %268
  %286 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @EF4_FILTER_MATCH_LOC_PORT, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 10
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %295 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @PORT_FULL_MASK, align 8
  %297 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %11, align 8
  %298 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %291, %285
  %300 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @EF4_FILTER_MATCH_REM_PORT, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 9
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %309 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %308, i32 0, i32 0
  store i8* %307, i8** %309, align 8
  %310 = load i8*, i8** @PORT_FULL_MASK, align 8
  %311 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %11, align 8
  %312 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %311, i32 0, i32 0
  store i8* %310, i8** %312, align 8
  br label %313

313:                                              ; preds = %305, %299
  br label %564

314:                                              ; preds = %220, %215, %204, %198, %192
  %315 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC, align 4
  %318 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC_IG, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @EF4_FILTER_MATCH_REM_MAC, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %325 = or i32 %323, %324
  %326 = xor i32 %325, -1
  %327 = and i32 %316, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %396, label %329

329:                                              ; preds = %314
  %330 = load i32, i32* @ETHER_FLOW, align 4
  %331 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %332 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 4
  %333 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC, align 4
  %336 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC_IG, align 4
  %337 = or i32 %335, %336
  %338 = and i32 %334, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %364

340:                                              ; preds = %329
  %341 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %342 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 8
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @ether_addr_copy(i32 %343, i32 %345)
  %347 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %340
  %353 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %354 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @eth_broadcast_addr(i32 %355)
  br label %363

357:                                              ; preds = %340
  %358 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %359 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @mac_addr_ig_mask, align 4
  %362 = call i32 @ether_addr_copy(i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %357, %352
  br label %364

364:                                              ; preds = %363, %329
  %365 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @EF4_FILTER_MATCH_REM_MAC, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %381

370:                                              ; preds = %364
  %371 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %372 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @ether_addr_copy(i32 %373, i32 %375)
  %377 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %378 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @eth_broadcast_addr(i32 %379)
  br label %381

381:                                              ; preds = %370, %364
  %382 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %391 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  %392 = load i64, i64* @ETHER_TYPE_FULL_MASK, align 8
  %393 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %394 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %393, i32 0, i32 0
  store i64 %392, i64* %394, align 8
  br label %395

395:                                              ; preds = %387, %381
  br label %563

396:                                              ; preds = %314
  %397 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %477

402:                                              ; preds = %396
  %403 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = load i32, i32* @ETH_P_IP, align 4
  %406 = call i64 @htons(i32 %405)
  %407 = icmp eq i64 %404, %406
  br i1 %407, label %408, label %477

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %412 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %419 = or i32 %417, %418
  %420 = xor i32 %419, -1
  %421 = and i32 %410, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %477, label %423

423:                                              ; preds = %408
  %424 = load i32, i32* @IPV4_USER_FLOW, align 4
  %425 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %426 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %425, i32 0, i32 3
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* @ETH_RX_NFC_IP4, align 4
  %428 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %429 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %428, i32 0, i32 3
  store i32 %427, i32* %429, align 8
  %430 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %444

435:                                              ; preds = %423
  %436 = load i8*, i8** @IP_PROTO_FULL_MASK, align 8
  %437 = ptrtoint i8* %436 to i64
  %438 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %439 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %438, i32 0, i32 0
  store i64 %437, i64* %439, align 8
  %440 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %443 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %442, i32 0, i32 0
  store i64 %441, i64* %443, align 8
  br label %444

444:                                              ; preds = %435, %423
  %445 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %460

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 6
  %452 = load i8**, i8*** %451, align 8
  %453 = getelementptr inbounds i8*, i8** %452, i64 0
  %454 = load i8*, i8** %453, align 8
  %455 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %456 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %455, i32 0, i32 2
  store i8* %454, i8** %456, align 8
  %457 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %458 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %459 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %458, i32 0, i32 2
  store i8* %457, i8** %459, align 8
  br label %460

460:                                              ; preds = %450, %444
  %461 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %476

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 5
  %468 = load i8**, i8*** %467, align 8
  %469 = getelementptr inbounds i8*, i8** %468, i64 0
  %470 = load i8*, i8** %469, align 8
  %471 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %8, align 8
  %472 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %471, i32 0, i32 1
  store i8* %470, i8** %472, align 8
  %473 = load i8*, i8** @IP4_ADDR_FULL_MASK, align 8
  %474 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %475 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %474, i32 0, i32 1
  store i8* %473, i8** %475, align 8
  br label %476

476:                                              ; preds = %466, %460
  br label %562

477:                                              ; preds = %408, %402, %396
  %478 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %557

483:                                              ; preds = %477
  %484 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = load i32, i32* @ETH_P_IPV6, align 4
  %487 = call i64 @htons(i32 %486)
  %488 = icmp eq i64 %485, %487
  br i1 %488, label %489, label %557

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %493 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %494 = or i32 %492, %493
  %495 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %496 = or i32 %494, %495
  %497 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %498 = or i32 %496, %497
  %499 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %500 = or i32 %498, %499
  %501 = xor i32 %500, -1
  %502 = and i32 %491, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %557, label %504

504:                                              ; preds = %489
  %505 = load i32, i32* @IPV6_USER_FLOW, align 4
  %506 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %507 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %506, i32 0, i32 3
  store i32 %505, i32* %507, align 4
  %508 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %522

513:                                              ; preds = %504
  %514 = load i8*, i8** @IP_PROTO_FULL_MASK, align 8
  %515 = ptrtoint i8* %514 to i64
  %516 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %13, align 8
  %517 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %516, i32 0, i32 0
  store i64 %515, i64* %517, align 8
  %518 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 3
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %12, align 8
  %521 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %520, i32 0, i32 0
  store i64 %519, i64* %521, align 8
  br label %522

522:                                              ; preds = %513, %504
  %523 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %539

528:                                              ; preds = %522
  %529 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %12, align 8
  %530 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 4
  %532 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 6
  %533 = load i8**, i8*** %532, align 8
  %534 = call i32 @memcpy(i32 %531, i8** %533, i32 4)
  %535 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %13, align 8
  %536 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @ip6_fill_mask(i32 %537)
  br label %539

539:                                              ; preds = %528, %522
  %540 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %556

545:                                              ; preds = %539
  %546 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %12, align 8
  %547 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 8
  %549 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 5
  %550 = load i8**, i8*** %549, align 8
  %551 = call i32 @memcpy(i32 %548, i8** %550, i32 4)
  %552 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %13, align 8
  %553 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @ip6_fill_mask(i32 %554)
  br label %556

556:                                              ; preds = %545, %539
  br label %561

557:                                              ; preds = %489, %483, %477
  %558 = call i32 @WARN_ON(i32 1)
  %559 = load i32, i32* @EINVAL, align 4
  %560 = sub nsw i32 0, %559
  store i32 %560, i32* %3, align 4
  br label %588

561:                                              ; preds = %556
  br label %562

562:                                              ; preds = %561, %476
  br label %563

563:                                              ; preds = %562, %395
  br label %564

564:                                              ; preds = %563, %313
  br label %565

565:                                              ; preds = %564, %191
  %566 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 1
  %567 = load i32, i32* %566, align 8
  %568 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %586

571:                                              ; preds = %565
  %572 = load i32, i32* @FLOW_EXT, align 4
  %573 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %574 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %573, i32 0, i32 3
  %575 = load i32, i32* %574, align 4
  %576 = or i32 %575, %572
  store i32 %576, i32* %574, align 4
  %577 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %16, i32 0, i32 4
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %580 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %579, i32 0, i32 2
  %581 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %580, i32 0, i32 0
  store i32 %578, i32* %581, align 8
  %582 = call i64 @htons(i32 4095)
  %583 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %584 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %584, i32 0, i32 0
  store i64 %582, i64* %585, align 8
  br label %586

586:                                              ; preds = %571, %565
  %587 = load i32, i32* %17, align 4
  store i32 %587, i32* %3, align 4
  br label %588

588:                                              ; preds = %586, %557, %56
  %589 = load i32, i32* %3, align 4
  ret i32 %589
}

declare dso_local i32 @ef4_filter_get_filter_safe(%struct.ef4_nic*, i32, i32, %struct.ef4_filter_spec*) #1

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
