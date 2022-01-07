; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_dev_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_dev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32, %struct.xlgmac_ring*, %struct.xlgmac_pdata* }
%struct.xlgmac_ring = type { i32, i32, %struct.xlgmac_pkt_info }
%struct.xlgmac_pkt_info = type { i32, i8*, i8*, i32, i32 }
%struct.xlgmac_pdata = type { %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.xlgmac_desc_data = type { %struct.TYPE_4__, %struct.xlgmac_dma_desc* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xlgmac_dma_desc = type { i32, i32, i32, i32 }

@RX_NORMAL_DESC3_OWN_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_OWN_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_CTXT_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_CTXT_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_CDA_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_CDA_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_FD_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_FD_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC2_HL_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC2_HL_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_RSV_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_RSV_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_RSS_HASH_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_RSS_HASH_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_L34T_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_L34T_LEN = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_PL_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_PL_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_LD_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_LD_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_INCOMPLETE_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_INCOMPLETE_LEN = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CSUM_DONE_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CSUM_DONE_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_ES_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_ES_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_ETLT_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC3_ETLT_LEN = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"err=%u, etlt=%#x\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_VLAN_CTAG_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_VLAN_CTAG_LEN = common dso_local global i32 0, align 4
@RX_NORMAL_DESC0_OVT_POS = common dso_local global i32 0, align 4
@RX_NORMAL_DESC0_OVT_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"vlan-ctag=%#06x\0A\00", align 1
@RX_PACKET_ERRORS_FRAME_POS = common dso_local global i32 0, align 4
@RX_PACKET_ERRORS_FRAME_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s - descriptor=%u (cur=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_channel*)* @xlgmac_dev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_dev_read(%struct.xlgmac_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca %struct.xlgmac_ring*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.xlgmac_desc_data*, align 8
  %8 = alloca %struct.xlgmac_dma_desc*, align 8
  %9 = alloca %struct.xlgmac_pkt_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %3, align 8
  %13 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %14 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %13, i32 0, i32 2
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %14, align 8
  store %struct.xlgmac_pdata* %15, %struct.xlgmac_pdata** %4, align 8
  %16 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %16, i32 0, i32 1
  %18 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %17, align 8
  store %struct.xlgmac_ring* %18, %struct.xlgmac_ring** %5, align 8
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %6, align 8
  %22 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %23 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %24 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %22, i32 %25)
  store %struct.xlgmac_desc_data* %26, %struct.xlgmac_desc_data** %7, align 8
  %27 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %28 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %27, i32 0, i32 1
  %29 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %28, align 8
  store %struct.xlgmac_dma_desc* %29, %struct.xlgmac_dma_desc** %8, align 8
  %30 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %31 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %30, i32 0, i32 2
  store %struct.xlgmac_pkt_info* %31, %struct.xlgmac_pkt_info** %9, align 8
  %32 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %33 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RX_NORMAL_DESC3_OWN_POS, align 4
  %36 = load i32, i32* @RX_NORMAL_DESC3_OWN_LEN, align 4
  %37 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %324

40:                                               ; preds = %1
  %41 = call i32 (...) @dma_rmb()
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %43 = call i64 @netif_msg_rx_status(%struct.xlgmac_pdata* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %47 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %48 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %49 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xlgmac_dump_rx_desc(%struct.xlgmac_pdata* %46, %struct.xlgmac_ring* %47, i32 %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %54 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RX_NORMAL_DESC3_CTXT_POS, align 4
  %57 = load i32, i32* @RX_NORMAL_DESC3_CTXT_LEN, align 4
  %58 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %62 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %63 = call i32 @xlgmac_get_rx_tstamp(%struct.xlgmac_pkt_info* %61, %struct.xlgmac_dma_desc* %62)
  %64 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %65 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_POS, align 4
  %68 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_LEN, align 4
  %69 = call i8* @XLGMAC_SET_REG_BITS(i8* %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %71 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %73 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_POS, align 4
  %76 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_LEN, align 4
  %77 = call i8* @XLGMAC_SET_REG_BITS(i8* %74, i32 %75, i32 %76, i32 0)
  %78 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %79 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %2, align 4
  br label %324

80:                                               ; preds = %52
  %81 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %82 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_POS, align 4
  %85 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_LEN, align 4
  %86 = call i8* @XLGMAC_SET_REG_BITS(i8* %83, i32 %84, i32 %85, i32 0)
  %87 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %88 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %90 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RX_NORMAL_DESC3_CDA_POS, align 4
  %93 = load i32, i32* @RX_NORMAL_DESC3_CDA_LEN, align 4
  %94 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %80
  %97 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %98 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_POS, align 4
  %101 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_LEN, align 4
  %102 = call i8* @XLGMAC_SET_REG_BITS(i8* %99, i32 %100, i32 %101, i32 1)
  %103 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %104 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %96, %80
  %106 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %107 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RX_NORMAL_DESC3_FD_POS, align 4
  %110 = load i32, i32* @RX_NORMAL_DESC3_FD_LEN, align 4
  %111 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %108, i32 %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %105
  %114 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %115 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RX_NORMAL_DESC2_HL_POS, align 4
  %118 = load i32, i32* @RX_NORMAL_DESC2_HL_LEN, align 4
  %119 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %121 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %124 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %113
  %129 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %130 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %113
  br label %135

135:                                              ; preds = %134, %105
  %136 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %137 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RX_NORMAL_DESC3_RSV_POS, align 4
  %140 = load i32, i32* @RX_NORMAL_DESC3_RSV_LEN, align 4
  %141 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %138, i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %135
  %144 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %145 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* @RX_PACKET_ATTRIBUTES_RSS_HASH_POS, align 4
  %148 = load i32, i32* @RX_PACKET_ATTRIBUTES_RSS_HASH_LEN, align 4
  %149 = call i8* @XLGMAC_SET_REG_BITS(i8* %146, i32 %147, i32 %148, i32 1)
  %150 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %151 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %153 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %157 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  %158 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %159 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @RX_NORMAL_DESC3_L34T_POS, align 4
  %162 = load i32, i32* @RX_NORMAL_DESC3_L34T_LEN, align 4
  %163 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  switch i32 %164, label %169 [
    i32 131, label %165
    i32 130, label %165
    i32 129, label %165
    i32 128, label %165
  ]

165:                                              ; preds = %143, %143, %143, %143
  %166 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %167 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %168 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  br label %173

169:                                              ; preds = %143
  %170 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %171 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %172 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %169, %165
  br label %174

174:                                              ; preds = %173, %135
  %175 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %176 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @RX_NORMAL_DESC3_PL_POS, align 4
  %179 = load i32, i32* @RX_NORMAL_DESC3_PL_LEN, align 4
  %180 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %177, i32 %178, i32 %179)
  %181 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %182 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %185 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @RX_NORMAL_DESC3_LD_POS, align 4
  %188 = load i32, i32* @RX_NORMAL_DESC3_LD_LEN, align 4
  %189 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %186, i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %174
  %192 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %193 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* @RX_PACKET_ATTRIBUTES_INCOMPLETE_POS, align 4
  %196 = load i32, i32* @RX_PACKET_ATTRIBUTES_INCOMPLETE_LEN, align 4
  %197 = call i8* @XLGMAC_SET_REG_BITS(i8* %194, i32 %195, i32 %196, i32 1)
  %198 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %199 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  store i32 0, i32* %2, align 4
  br label %324

200:                                              ; preds = %174
  %201 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %202 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* @RX_PACKET_ATTRIBUTES_INCOMPLETE_POS, align 4
  %205 = load i32, i32* @RX_PACKET_ATTRIBUTES_INCOMPLETE_LEN, align 4
  %206 = call i8* @XLGMAC_SET_REG_BITS(i8* %203, i32 %204, i32 %205, i32 0)
  %207 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %208 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.net_device*, %struct.net_device** %6, align 8
  %210 = getelementptr inbounds %struct.net_device, %struct.net_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %200
  %216 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %217 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* @RX_PACKET_ATTRIBUTES_CSUM_DONE_POS, align 4
  %220 = load i32, i32* @RX_PACKET_ATTRIBUTES_CSUM_DONE_LEN, align 4
  %221 = call i8* @XLGMAC_SET_REG_BITS(i8* %218, i32 %219, i32 %220, i32 1)
  %222 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %223 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %215, %200
  %225 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %226 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @RX_NORMAL_DESC3_ES_POS, align 4
  %229 = load i32, i32* @RX_NORMAL_DESC3_ES_LEN, align 4
  %230 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %232 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @RX_NORMAL_DESC3_ETLT_POS, align 4
  %235 = load i32, i32* @RX_NORMAL_DESC3_ETLT_LEN, align 4
  %236 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %238 = load i32, i32* @rx_status, align 4
  %239 = load %struct.net_device*, %struct.net_device** %6, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = call i32 (%struct.xlgmac_pdata*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.xlgmac_pdata* %237, i32 %238, %struct.net_device* %239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %224
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %283, label %248

248:                                              ; preds = %245, %224
  %249 = load i32, i32* %11, align 4
  %250 = icmp eq i32 %249, 9
  br i1 %250, label %251, label %282

251:                                              ; preds = %248
  %252 = load %struct.net_device*, %struct.net_device** %6, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %251
  %259 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %260 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* @RX_PACKET_ATTRIBUTES_VLAN_CTAG_POS, align 4
  %263 = load i32, i32* @RX_PACKET_ATTRIBUTES_VLAN_CTAG_LEN, align 4
  %264 = call i8* @XLGMAC_SET_REG_BITS(i8* %261, i32 %262, i32 %263, i32 1)
  %265 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %266 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %265, i32 0, i32 2
  store i8* %264, i8** %266, align 8
  %267 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %268 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @RX_NORMAL_DESC0_OVT_POS, align 4
  %271 = load i32, i32* @RX_NORMAL_DESC0_OVT_LEN, align 4
  %272 = call i32 @XLGMAC_GET_REG_BITS_LE(i32 %269, i32 %270, i32 %271)
  %273 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %274 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  %275 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %276 = load i32, i32* @rx_status, align 4
  %277 = load %struct.net_device*, %struct.net_device** %6, align 8
  %278 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %279 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (%struct.xlgmac_pdata*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.xlgmac_pdata* %275, i32 %276, %struct.net_device* %277, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %258, %251, %248
  br label %308

283:                                              ; preds = %245
  %284 = load i32, i32* %11, align 4
  %285 = icmp eq i32 %284, 5
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %11, align 4
  %288 = icmp eq i32 %287, 6
  br i1 %288, label %289, label %298

289:                                              ; preds = %286, %283
  %290 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %291 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* @RX_PACKET_ATTRIBUTES_CSUM_DONE_POS, align 4
  %294 = load i32, i32* @RX_PACKET_ATTRIBUTES_CSUM_DONE_LEN, align 4
  %295 = call i8* @XLGMAC_SET_REG_BITS(i8* %292, i32 %293, i32 %294, i32 0)
  %296 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %297 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %296, i32 0, i32 2
  store i8* %295, i8** %297, align 8
  br label %307

298:                                              ; preds = %286
  %299 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %300 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = load i32, i32* @RX_PACKET_ERRORS_FRAME_POS, align 4
  %303 = load i32, i32* @RX_PACKET_ERRORS_FRAME_LEN, align 4
  %304 = call i8* @XLGMAC_SET_REG_BITS(i8* %301, i32 %302, i32 %303, i32 1)
  %305 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %306 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %305, i32 0, i32 1
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %298, %289
  br label %308

308:                                              ; preds = %307, %282
  %309 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %310 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %313 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %316 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sub nsw i32 %317, 1
  %319 = and i32 %314, %318
  %320 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %321 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @XLGMAC_PR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %311, i32 %319, i32 %322)
  store i32 0, i32* %2, align 4
  br label %324

324:                                              ; preds = %308, %191, %60, %39
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @XLGMAC_GET_REG_BITS_LE(i32, i32, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @netif_msg_rx_status(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_dump_rx_desc(%struct.xlgmac_pdata*, %struct.xlgmac_ring*, i32) #1

declare dso_local i32 @xlgmac_get_rx_tstamp(%struct.xlgmac_pkt_info*, %struct.xlgmac_dma_desc*) #1

declare dso_local i8* @XLGMAC_SET_REG_BITS(i8*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_dbg(%struct.xlgmac_pdata*, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @XLGMAC_PR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
