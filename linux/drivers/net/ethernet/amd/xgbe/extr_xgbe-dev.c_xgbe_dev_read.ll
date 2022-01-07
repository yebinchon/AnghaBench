; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_dev_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_dev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i64, i32, %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i32, i32, %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i32, i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.xgbe_ring_data = type { %struct.TYPE_4__, %struct.xgbe_ring_desc* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xgbe_ring_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"-->xgbe_dev_read: cur = %d\0A\00", align 1
@RX_NORMAL_DESC3 = common dso_local global i32 0, align 4
@OWN = common dso_local global i32 0, align 4
@CTXT = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@CONTEXT = common dso_local global i32 0, align 4
@CONTEXT_NEXT = common dso_local global i32 0, align 4
@CDA = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@FIRST = common dso_local global i32 0, align 4
@RX_NORMAL_DESC2 = common dso_local global i32 0, align 4
@HL = common dso_local global i32 0, align 4
@RSV = common dso_local global i32 0, align 4
@RSS_HASH = common dso_local global i32 0, align 4
@L34T = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@LD = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@PL = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CSUM_DONE = common dso_local global i32 0, align 4
@TNPCSUM_DONE = common dso_local global i32 0, align 4
@TNP = common dso_local global i32 0, align 4
@ES = common dso_local global i32 0, align 4
@ETLT = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"err=%u, etlt=%#x\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@VLAN_CTAG = common dso_local global i32 0, align 4
@RX_NORMAL_DESC0 = common dso_local global i32 0, align 4
@OVT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"vlan-ctag=%#06x\0A\00", align 1
@RX_PACKET_ERRORS = common dso_local global i32 0, align 4
@FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"<--xgbe_dev_read: %s - descriptor=%u (cur=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*)* @xgbe_dev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_dev_read(%struct.xgbe_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.xgbe_ring*, align 8
  %6 = alloca %struct.xgbe_ring_data*, align 8
  %7 = alloca %struct.xgbe_ring_desc*, align 8
  %8 = alloca %struct.xgbe_packet_data*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %3, align 8
  %14 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %14, i32 0, i32 3
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %15, align 8
  store %struct.xgbe_prv_data* %16, %struct.xgbe_prv_data** %4, align 8
  %17 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %18 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %17, i32 0, i32 2
  %19 = load %struct.xgbe_ring*, %struct.xgbe_ring** %18, align 8
  store %struct.xgbe_ring* %19, %struct.xgbe_ring** %5, align 8
  %20 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %21 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %20, i32 0, i32 2
  store %struct.xgbe_packet_data* %21, %struct.xgbe_packet_data** %8, align 8
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %9, align 8
  %25 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %26 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @DBGPR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %30 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %31 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %29, i32 %32)
  store %struct.xgbe_ring_data* %33, %struct.xgbe_ring_data** %6, align 8
  %34 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %35 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %34, i32 0, i32 1
  %36 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %35, align 8
  store %struct.xgbe_ring_desc* %36, %struct.xgbe_ring_desc** %7, align 8
  %37 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %38 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %41 = load i32, i32* @OWN, align 4
  %42 = call i32 @XGMAC_GET_BITS_LE(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %424

45:                                               ; preds = %1
  %46 = call i32 (...) @dma_rmb()
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %48 = call i64 @netif_msg_rx_status(%struct.xgbe_prv_data* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %52 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %53 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %54 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @xgbe_dump_rx_desc(%struct.xgbe_prv_data* %51, %struct.xgbe_ring* %52, i32 %55)
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %59 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %62 = load i32, i32* @CTXT, align 4
  %63 = call i32 @XGMAC_GET_BITS_LE(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %57
  %66 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %67 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %68 = call i32 @xgbe_get_rx_tstamp(%struct.xgbe_packet_data* %66, %struct.xgbe_ring_desc* %67)
  %69 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %70 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %73 = load i32, i32* @CONTEXT, align 4
  %74 = call i32 @XGMAC_SET_BITS(i32 %71, i32 %72, i32 %73, i32 1)
  %75 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %76 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %79 = load i32, i32* @CONTEXT_NEXT, align 4
  %80 = call i32 @XGMAC_SET_BITS(i32 %77, i32 %78, i32 %79, i32 0)
  store i32 0, i32* %2, align 4
  br label %424

81:                                               ; preds = %57
  %82 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %83 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %86 = load i32, i32* @CONTEXT, align 4
  %87 = call i32 @XGMAC_SET_BITS(i32 %84, i32 %85, i32 %86, i32 0)
  %88 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %89 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %92 = load i32, i32* @CDA, align 4
  %93 = call i32 @XGMAC_GET_BITS_LE(i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %81
  %96 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %97 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %100 = load i32, i32* @CONTEXT_NEXT, align 4
  %101 = call i32 @XGMAC_SET_BITS(i32 %98, i32 %99, i32 %100, i32 1)
  br label %102

102:                                              ; preds = %95, %81
  %103 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %104 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %107 = load i32, i32* @FD, align 4
  %108 = call i32 @XGMAC_GET_BITS_LE(i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %112 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %115 = load i32, i32* @FIRST, align 4
  %116 = call i32 @XGMAC_SET_BITS(i32 %113, i32 %114, i32 %115, i32 1)
  %117 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %118 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @RX_NORMAL_DESC2, align 4
  %121 = load i32, i32* @HL, align 4
  %122 = call i32 @XGMAC_GET_BITS_LE(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %124 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %127 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %110
  %132 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %133 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %110
  br label %145

138:                                              ; preds = %102
  %139 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %140 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %143 = load i32, i32* @FIRST, align 4
  %144 = call i32 @XGMAC_SET_BITS(i32 %141, i32 %142, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %138, %137
  %146 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %147 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %150 = load i32, i32* @RSV, align 4
  %151 = call i32 @XGMAC_GET_BITS_LE(i32 %148, i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %145
  %154 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %155 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %158 = load i32, i32* @RSS_HASH, align 4
  %159 = call i32 @XGMAC_SET_BITS(i32 %156, i32 %157, i32 %158, i32 1)
  %160 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %161 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le32_to_cpu(i32 %162)
  %164 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %165 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %167 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %170 = load i32, i32* @L34T, align 4
  %171 = call i32 @XGMAC_GET_BITS_LE(i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  switch i32 %172, label %177 [
    i32 133, label %173
    i32 132, label %173
    i32 130, label %173
    i32 129, label %173
  ]

173:                                              ; preds = %153, %153, %153, %153
  %174 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %175 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %176 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %181

177:                                              ; preds = %153
  %178 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %179 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %180 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %177, %173
  br label %182

182:                                              ; preds = %181, %145
  %183 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %184 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %187 = load i32, i32* @LD, align 4
  %188 = call i32 @XGMAC_GET_BITS_LE(i32 %185, i32 %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %424

191:                                              ; preds = %182
  %192 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %193 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %196 = load i32, i32* @LAST, align 4
  %197 = call i32 @XGMAC_SET_BITS(i32 %194, i32 %195, i32 %196, i32 1)
  %198 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %199 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %202 = load i32, i32* @PL, align 4
  %203 = call i32 @XGMAC_GET_BITS_LE(i32 %200, i32 %201, i32 %202)
  %204 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %205 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  %207 = load %struct.net_device*, %struct.net_device** %9, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %191
  %214 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %215 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %218 = load i32, i32* @CSUM_DONE, align 4
  %219 = call i32 @XGMAC_SET_BITS(i32 %216, i32 %217, i32 %218, i32 1)
  %220 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %221 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %224 = load i32, i32* @TNPCSUM_DONE, align 4
  %225 = call i32 @XGMAC_SET_BITS(i32 %222, i32 %223, i32 %224, i32 1)
  br label %226

226:                                              ; preds = %213, %191
  %227 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %228 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @RX_NORMAL_DESC2, align 4
  %231 = load i32, i32* @TNP, align 4
  %232 = call i32 @XGMAC_GET_BITS_LE(i32 %229, i32 %230, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %261

234:                                              ; preds = %226
  %235 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %236 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %239 = load i32, i32* @TNP, align 4
  %240 = call i32 @XGMAC_SET_BITS(i32 %237, i32 %238, i32 %239, i32 1)
  %241 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %242 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %247 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %250 = load i32, i32* @L34T, align 4
  %251 = call i32 @XGMAC_GET_BITS_LE(i32 %248, i32 %249, i32 %250)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  switch i32 %252, label %260 [
    i32 131, label %253
    i32 128, label %253
  ]

253:                                              ; preds = %234, %234
  %254 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %255 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %258 = load i32, i32* @TNPCSUM_DONE, align 4
  %259 = call i32 @XGMAC_SET_BITS(i32 %256, i32 %257, i32 %258, i32 0)
  br label %260

260:                                              ; preds = %234, %253
  br label %261

261:                                              ; preds = %260, %226
  %262 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %263 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %266 = load i32, i32* @ES, align 4
  %267 = call i32 @XGMAC_GET_BITS_LE(i32 %264, i32 %265, i32 %266)
  store i32 %267, i32* %10, align 4
  %268 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %269 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @RX_NORMAL_DESC3, align 4
  %272 = load i32, i32* @ETLT, align 4
  %273 = call i32 @XGMAC_GET_BITS_LE(i32 %270, i32 %271, i32 %272)
  store i32 %273, i32* %11, align 4
  %274 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %275 = load i32, i32* @rx_status, align 4
  %276 = load %struct.net_device*, %struct.net_device** %9, align 8
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 (%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %274, i32 %275, %struct.net_device* %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %277, i32 %278)
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %261
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %318, label %285

285:                                              ; preds = %282, %261
  %286 = load i32, i32* %11, align 4
  %287 = icmp eq i32 %286, 9
  br i1 %287, label %288, label %317

288:                                              ; preds = %285
  %289 = load %struct.net_device*, %struct.net_device** %9, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %317

295:                                              ; preds = %288
  %296 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %297 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %300 = load i32, i32* @VLAN_CTAG, align 4
  %301 = call i32 @XGMAC_SET_BITS(i32 %298, i32 %299, i32 %300, i32 1)
  %302 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %7, align 8
  %303 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @RX_NORMAL_DESC0, align 4
  %306 = load i32, i32* @OVT, align 4
  %307 = call i32 @XGMAC_GET_BITS_LE(i32 %304, i32 %305, i32 %306)
  %308 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %309 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 4
  %310 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %311 = load i32, i32* @rx_status, align 4
  %312 = load %struct.net_device*, %struct.net_device** %9, align 8
  %313 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %314 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %310, i32 %311, %struct.net_device* %312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %295, %288, %285
  br label %384

318:                                              ; preds = %282
  %319 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %320 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %323 = load i32, i32* @TNP, align 4
  %324 = call i32 @XGMAC_GET_BITS(i32 %321, i32 %322, i32 %323)
  store i32 %324, i32* %13, align 4
  %325 = load i32, i32* %11, align 4
  %326 = icmp eq i32 %325, 5
  br i1 %326, label %330, label %327

327:                                              ; preds = %318
  %328 = load i32, i32* %11, align 4
  %329 = icmp eq i32 %328, 6
  br i1 %329, label %330, label %348

330:                                              ; preds = %327, %318
  %331 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %332 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %335 = load i32, i32* @CSUM_DONE, align 4
  %336 = call i32 @XGMAC_SET_BITS(i32 %333, i32 %334, i32 %335, i32 0)
  %337 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %338 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %341 = load i32, i32* @TNPCSUM_DONE, align 4
  %342 = call i32 @XGMAC_SET_BITS(i32 %339, i32 %340, i32 %341, i32 0)
  %343 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %344 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  br label %383

348:                                              ; preds = %327
  %349 = load i32, i32* %13, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %375

351:                                              ; preds = %348
  %352 = load i32, i32* %11, align 4
  %353 = icmp eq i32 %352, 9
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* %11, align 4
  %356 = icmp eq i32 %355, 10
  br i1 %356, label %357, label %375

357:                                              ; preds = %354, %351
  %358 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %359 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %362 = load i32, i32* @CSUM_DONE, align 4
  %363 = call i32 @XGMAC_SET_BITS(i32 %360, i32 %361, i32 %362, i32 0)
  %364 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %365 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %368 = load i32, i32* @TNPCSUM_DONE, align 4
  %369 = call i32 @XGMAC_SET_BITS(i32 %366, i32 %367, i32 %368, i32 0)
  %370 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %371 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %372, align 8
  br label %382

375:                                              ; preds = %354, %348
  %376 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %8, align 8
  %377 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @RX_PACKET_ERRORS, align 4
  %380 = load i32, i32* @FRAME, align 4
  %381 = call i32 @XGMAC_SET_BITS(i32 %378, i32 %379, i32 %380, i32 1)
  br label %382

382:                                              ; preds = %375, %357
  br label %383

383:                                              ; preds = %382, %330
  br label %384

384:                                              ; preds = %383, %317
  %385 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %386 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %390 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %392, align 4
  %395 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %396 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %400 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %404 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %407, %398
  store i32 %408, i32* %406, align 4
  %409 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %410 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %413 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %416 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = sub nsw i32 %417, 1
  %419 = and i32 %414, %418
  %420 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %421 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (i8*, i32, ...) @DBGPR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %411, i32 %419, i32 %422)
  store i32 0, i32* %2, align 4
  br label %424

424:                                              ; preds = %384, %190, %65, %44
  %425 = load i32, i32* %2, align 4
  ret i32 %425
}

declare dso_local i32 @DBGPR(i8*, i32, ...) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @XGMAC_GET_BITS_LE(i32, i32, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @netif_msg_rx_status(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_dump_rx_desc(%struct.xgbe_prv_data*, %struct.xgbe_ring*, i32) #1

declare dso_local i32 @xgbe_get_rx_tstamp(%struct.xgbe_packet_data*, %struct.xgbe_ring_desc*) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
