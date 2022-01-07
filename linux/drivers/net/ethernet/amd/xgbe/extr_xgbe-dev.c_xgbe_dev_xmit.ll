; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i64, i32, %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i32, i32, i32, %struct.TYPE_6__, %struct.xgbe_packet_data }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.xgbe_packet_data = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32* }
%struct.xgbe_ring_data = type { i32, %struct.xgbe_ring_desc*, %struct.TYPE_4__, i32 }
%struct.xgbe_ring_desc = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"-->xgbe_dev_xmit\0A\00", align 1
@TX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@CSUM_ENABLE = common dso_local global i32 0, align 4
@TSO_ENABLE = common dso_local global i32 0, align 4
@VLAN_CTAG = common dso_local global i32 0, align 4
@VXLAN = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"TSO context descriptor, mss=%u\0A\00", align 1
@TX_CONTEXT_DESC2 = common dso_local global i32 0, align 4
@MSS = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3 = common dso_local global i32 0, align 4
@CTXT = common dso_local global i32 0, align 4
@TCMSSV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"VLAN context descriptor, ctag=%u\0A\00", align 1
@VT = common dso_local global i32 0, align 4
@VLTV = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2 = common dso_local global i32 0, align 4
@HL_B1L = common dso_local global i32 0, align 4
@VTIR = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_VLAN_INSERT = common dso_local global i32 0, align 4
@PTP = common dso_local global i32 0, align 4
@TTSE = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3 = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@OWN = common dso_local global i32 0, align 4
@TSE = common dso_local global i32 0, align 4
@TCPPL = common dso_local global i32 0, align 4
@TCPHDRLEN = common dso_local global i32 0, align 4
@CPC = common dso_local global i32 0, align 4
@CIC = common dso_local global i32 0, align 4
@FL = common dso_local global i32 0, align 4
@VNP = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_VXLAN_PACKET = common dso_local global i32 0, align 4
@LD = common dso_local global i32 0, align 4
@IC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"  %s: descriptors %u to %u written\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"<--xgbe_dev_xmit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*)* @xgbe_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_dev_xmit(%struct.xgbe_channel* %0) #0 {
  %2 = alloca %struct.xgbe_channel*, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_ring_data*, align 8
  %6 = alloca %struct.xgbe_ring_desc*, align 8
  %7 = alloca %struct.xgbe_packet_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %2, align 8
  %20 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %20, i32 0, i32 3
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %21, align 8
  store %struct.xgbe_prv_data* %22, %struct.xgbe_prv_data** %3, align 8
  %23 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %23, i32 0, i32 2
  %25 = load %struct.xgbe_ring*, %struct.xgbe_ring** %24, align 8
  store %struct.xgbe_ring* %25, %struct.xgbe_ring** %4, align 8
  %26 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %26, i32 0, i32 4
  store %struct.xgbe_packet_data* %27, %struct.xgbe_packet_data** %7, align 8
  %28 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %36 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %39 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %42 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TX_PACKET_ATTRIBUTES, align 4
  %45 = load i32, i32* @CSUM_ENABLE, align 4
  %46 = call i32 @XGMAC_GET_BITS(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %48 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TX_PACKET_ATTRIBUTES, align 4
  %51 = load i32, i32* @TSO_ENABLE, align 4
  %52 = call i32 @XGMAC_GET_BITS(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %54 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TX_PACKET_ATTRIBUTES, align 4
  %57 = load i32, i32* @VLAN_CTAG, align 4
  %58 = call i32 @XGMAC_GET_BITS(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %60 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TX_PACKET_ATTRIBUTES, align 4
  %63 = load i32, i32* @VXLAN, align 4
  %64 = call i32 @XGMAC_GET_BITS(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %1
  %68 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %69 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %72 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %14, align 4
  br label %78

77:                                               ; preds = %67, %1
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %83 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %86 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 1, i32* %15, align 4
  br label %92

91:                                               ; preds = %81, %78
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %95 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %99 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  store i32 0, i32* %16, align 4
  br label %124

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %106 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ugt i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %16, align 4
  br label %123

110:                                              ; preds = %103
  %111 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %112 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %115 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = urem i32 %113, %116
  %118 = load i32, i32* %8, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 1, i32* %16, align 4
  br label %122

121:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %125, i32 %126)
  store %struct.xgbe_ring_data* %127, %struct.xgbe_ring_data** %5, align 8
  %128 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %129 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %128, i32 0, i32 1
  %130 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %129, align 8
  store %struct.xgbe_ring_desc* %130, %struct.xgbe_ring_desc** %6, align 8
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %227

136:                                              ; preds = %133, %124
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %136
  %140 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %141 = load i32, i32* @tx_queued, align 4
  %142 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %143 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %146 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @netif_dbg(%struct.xgbe_prv_data* %140, i32 %141, i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %147)
  %149 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %150 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TX_CONTEXT_DESC2, align 4
  %153 = load i32, i32* @MSS, align 4
  %154 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %155 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @XGMAC_SET_BITS_LE(i32 %151, i32 %152, i32 %153, i32 %157)
  %159 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %160 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TX_CONTEXT_DESC3, align 4
  %163 = load i32, i32* @CTXT, align 4
  %164 = call i32 @XGMAC_SET_BITS_LE(i32 %161, i32 %162, i32 %163, i32 1)
  %165 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %166 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TX_CONTEXT_DESC3, align 4
  %169 = load i32, i32* @TCMSSV, align 4
  %170 = call i32 @XGMAC_SET_BITS_LE(i32 %167, i32 %168, i32 %169, i32 1)
  %171 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %172 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %175 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i64 %173, i64* %176, align 8
  br label %177

177:                                              ; preds = %139, %136
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %218

180:                                              ; preds = %177
  %181 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %182 = load i32, i32* @tx_queued, align 4
  %183 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %184 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %187 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @netif_dbg(%struct.xgbe_prv_data* %181, i32 %182, i32 %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %188)
  %190 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %191 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @TX_CONTEXT_DESC3, align 4
  %194 = load i32, i32* @CTXT, align 4
  %195 = call i32 @XGMAC_SET_BITS_LE(i32 %192, i32 %193, i32 %194, i32 1)
  %196 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %197 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TX_CONTEXT_DESC3, align 4
  %200 = load i32, i32* @VT, align 4
  %201 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %202 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @XGMAC_SET_BITS_LE(i32 %198, i32 %199, i32 %200, i32 %204)
  %206 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %207 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @TX_CONTEXT_DESC3, align 4
  %210 = load i32, i32* @VLTV, align 4
  %211 = call i32 @XGMAC_SET_BITS_LE(i32 %208, i32 %209, i32 %210, i32 1)
  %212 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %213 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %216 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i64 %214, i64* %217, align 8
  br label %218

218:                                              ; preds = %180, %177
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %18, align 4
  %221 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %222 = load i32, i32* %18, align 4
  %223 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %221, i32 %222)
  store %struct.xgbe_ring_data* %223, %struct.xgbe_ring_data** %5, align 8
  %224 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %225 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %224, i32 0, i32 1
  %226 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %225, align 8
  store %struct.xgbe_ring_desc* %226, %struct.xgbe_ring_desc** %6, align 8
  br label %227

227:                                              ; preds = %218, %133
  %228 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %229 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @lower_32_bits(i32 %230)
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %234 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %236 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @upper_32_bits(i32 %237)
  %239 = call i8* @cpu_to_le32(i32 %238)
  %240 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %241 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  %242 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %243 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %246 = load i32, i32* @HL_B1L, align 4
  %247 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %248 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @XGMAC_SET_BITS_LE(i32 %244, i32 %245, i32 %246, i32 %249)
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %227
  %254 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %255 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %258 = load i32, i32* @VTIR, align 4
  %259 = load i32, i32* @TX_NORMAL_DESC2_VLAN_INSERT, align 4
  %260 = call i32 @XGMAC_SET_BITS_LE(i32 %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %253, %227
  %262 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %263 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @TX_PACKET_ATTRIBUTES, align 4
  %266 = load i32, i32* @PTP, align 4
  %267 = call i32 @XGMAC_GET_BITS(i32 %264, i32 %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %261
  %270 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %271 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %274 = load i32, i32* @TTSE, align 4
  %275 = call i32 @XGMAC_SET_BITS_LE(i32 %272, i32 %273, i32 %274, i32 1)
  br label %276

276:                                              ; preds = %269, %261
  %277 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %278 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %281 = load i32, i32* @FD, align 4
  %282 = call i32 @XGMAC_SET_BITS_LE(i32 %279, i32 %280, i32 %281, i32 1)
  %283 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %284 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %287 = load i32, i32* @CTXT, align 4
  %288 = call i32 @XGMAC_SET_BITS_LE(i32 %285, i32 %286, i32 %287, i32 0)
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %276
  %293 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %294 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %297 = load i32, i32* @OWN, align 4
  %298 = call i32 @XGMAC_SET_BITS_LE(i32 %295, i32 %296, i32 %297, i32 1)
  br label %299

299:                                              ; preds = %292, %276
  %300 = load i32, i32* %11, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %334

302:                                              ; preds = %299
  %303 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %304 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %307 = load i32, i32* @TSE, align 4
  %308 = call i32 @XGMAC_SET_BITS_LE(i32 %305, i32 %306, i32 %307, i32 1)
  %309 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %310 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %313 = load i32, i32* @TCPPL, align 4
  %314 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %315 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @XGMAC_SET_BITS_LE(i32 %311, i32 %312, i32 %313, i32 %316)
  %318 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %319 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %322 = load i32, i32* @TCPHDRLEN, align 4
  %323 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %324 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = sdiv i32 %325, 4
  %327 = call i32 @XGMAC_SET_BITS_LE(i32 %320, i32 %321, i32 %322, i32 %326)
  %328 = load i32, i32* %8, align 4
  %329 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %330 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add i32 %332, %328
  store i32 %333, i32* %331, align 8
  br label %360

334:                                              ; preds = %299
  %335 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %336 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %339 = load i32, i32* @CPC, align 4
  %340 = call i32 @XGMAC_SET_BITS_LE(i32 %337, i32 %338, i32 %339, i32 0)
  %341 = load i32, i32* %10, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %334
  %344 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %345 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %348 = load i32, i32* @CIC, align 4
  %349 = call i32 @XGMAC_SET_BITS_LE(i32 %346, i32 %347, i32 %348, i32 3)
  br label %350

350:                                              ; preds = %343, %334
  %351 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %352 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %355 = load i32, i32* @FL, align 4
  %356 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %357 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @XGMAC_SET_BITS_LE(i32 %353, i32 %354, i32 %355, i32 %358)
  br label %360

360:                                              ; preds = %350, %302
  %361 = load i32, i32* %13, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %379

363:                                              ; preds = %360
  %364 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %365 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %368 = load i32, i32* @VNP, align 4
  %369 = load i32, i32* @TX_NORMAL_DESC3_VXLAN_PACKET, align 4
  %370 = call i32 @XGMAC_SET_BITS_LE(i32 %366, i32 %367, i32 %368, i32 %369)
  %371 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %372 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %375 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, %373
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %363, %360
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* %17, align 4
  %382 = sub nsw i32 %380, %381
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %19, align 4
  br label %384

384:                                              ; preds = %444, %379
  %385 = load i32, i32* %19, align 4
  %386 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %387 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 4
  %389 = icmp slt i32 %385, %388
  br i1 %389, label %390, label %447

390:                                              ; preds = %384
  %391 = load i32, i32* %18, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %18, align 4
  %393 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %394 = load i32, i32* %18, align 4
  %395 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %393, i32 %394)
  store %struct.xgbe_ring_data* %395, %struct.xgbe_ring_data** %5, align 8
  %396 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %397 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %396, i32 0, i32 1
  %398 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %397, align 8
  store %struct.xgbe_ring_desc* %398, %struct.xgbe_ring_desc** %6, align 8
  %399 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %400 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @lower_32_bits(i32 %401)
  %403 = call i8* @cpu_to_le32(i32 %402)
  %404 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %405 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %404, i32 0, i32 3
  store i8* %403, i8** %405, align 8
  %406 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %407 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @upper_32_bits(i32 %408)
  %410 = call i8* @cpu_to_le32(i32 %409)
  %411 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %412 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %411, i32 0, i32 2
  store i8* %410, i8** %412, align 8
  %413 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %414 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %417 = load i32, i32* @HL_B1L, align 4
  %418 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %419 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @XGMAC_SET_BITS_LE(i32 %415, i32 %416, i32 %417, i32 %420)
  %422 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %423 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %426 = load i32, i32* @OWN, align 4
  %427 = call i32 @XGMAC_SET_BITS_LE(i32 %424, i32 %425, i32 %426, i32 1)
  %428 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %429 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %432 = load i32, i32* @CTXT, align 4
  %433 = call i32 @XGMAC_SET_BITS_LE(i32 %430, i32 %431, i32 %432, i32 0)
  %434 = load i32, i32* %10, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %390
  %437 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %438 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %441 = load i32, i32* @CIC, align 4
  %442 = call i32 @XGMAC_SET_BITS_LE(i32 %439, i32 %440, i32 %441, i32 3)
  br label %443

443:                                              ; preds = %436, %390
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %19, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %19, align 4
  br label %384

447:                                              ; preds = %384
  %448 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %449 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %452 = load i32, i32* @LD, align 4
  %453 = call i32 @XGMAC_SET_BITS_LE(i32 %450, i32 %451, i32 %452, i32 1)
  %454 = load i32, i32* %16, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %447
  %457 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %458 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %461 = load i32, i32* @IC, align 4
  %462 = call i32 @XGMAC_SET_BITS_LE(i32 %459, i32 %460, i32 %461, i32 1)
  br label %463

463:                                              ; preds = %456, %447
  %464 = load i32, i32* %8, align 4
  %465 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %466 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  store i32 %464, i32* %467, align 8
  %468 = load i32, i32* %9, align 4
  %469 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %470 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 1
  store i32 %468, i32* %471, align 4
  %472 = load i32, i32* %8, align 4
  %473 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %474 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 2
  %476 = load i32*, i32** %475, align 8
  %477 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %478 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = getelementptr inbounds i32, i32* %476, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, %472
  store i32 %482, i32* %480, align 4
  %483 = load i32, i32* %9, align 4
  %484 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %485 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %484, i32 0, i32 2
  %486 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %485, i32 0, i32 3
  %487 = load i32*, i32** %486, align 8
  %488 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %489 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = getelementptr inbounds i32, i32* %487, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, %483
  store i32 %493, i32* %491, align 4
  %494 = call i32 (...) @dma_wmb()
  %495 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %496 = load i32, i32* %17, align 4
  %497 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %495, i32 %496)
  store %struct.xgbe_ring_data* %497, %struct.xgbe_ring_data** %5, align 8
  %498 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %499 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %498, i32 0, i32 1
  %500 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %499, align 8
  store %struct.xgbe_ring_desc* %500, %struct.xgbe_ring_desc** %6, align 8
  %501 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %502 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %505 = load i32, i32* @OWN, align 4
  %506 = call i32 @XGMAC_SET_BITS_LE(i32 %503, i32 %504, i32 %505, i32 1)
  %507 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %508 = call i64 @netif_msg_tx_queued(%struct.xgbe_prv_data* %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %518

510:                                              ; preds = %463
  %511 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %512 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %513 = load i32, i32* %17, align 4
  %514 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %515 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %514, i32 0, i32 7
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @xgbe_dump_tx_desc(%struct.xgbe_prv_data* %511, %struct.xgbe_ring* %512, i32 %513, i32 %516, i32 1)
  br label %518

518:                                              ; preds = %510, %463
  %519 = call i32 (...) @smp_wmb()
  %520 = load i32, i32* %18, align 4
  %521 = add nsw i32 %520, 1
  %522 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %523 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %522, i32 0, i32 0
  store i32 %521, i32* %523, align 8
  %524 = call i32 (...) @netdev_xmit_more()
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %536

526:                                              ; preds = %518
  %527 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %528 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %531 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = call i32 @netdev_get_tx_queue(i32 %529, i64 %532)
  %534 = call i64 @netif_xmit_stopped(i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %526, %518
  %537 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %538 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %539 = call i32 @xgbe_tx_start_xmit(%struct.xgbe_channel* %537, %struct.xgbe_ring* %538)
  br label %544

540:                                              ; preds = %526
  %541 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %542 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %541, i32 0, i32 3
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 2
  store i32 1, i32* %543, align 8
  br label %544

544:                                              ; preds = %540, %536
  %545 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %546 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* %17, align 4
  %549 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %550 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = sub nsw i32 %551, 1
  %553 = and i32 %548, %552
  %554 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %555 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = sub nsw i32 %556, 1
  %558 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %559 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = sub nsw i32 %560, 1
  %562 = and i32 %557, %561
  %563 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %547, i32 %553, i32 %562)
  %564 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*, ...) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i64) #1

declare dso_local i32 @XGMAC_SET_BITS_LE(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @netif_msg_tx_queued(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_dump_tx_desc(%struct.xgbe_prv_data*, %struct.xgbe_ring*, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i64) #1

declare dso_local i32 @xgbe_tx_start_xmit(%struct.xgbe_channel*, %struct.xgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
