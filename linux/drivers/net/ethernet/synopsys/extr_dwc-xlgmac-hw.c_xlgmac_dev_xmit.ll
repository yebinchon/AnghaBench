; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32, i32, %struct.xlgmac_ring*, %struct.xlgmac_pdata* }
%struct.xlgmac_ring = type { i32, i32, i32, %struct.TYPE_6__, %struct.xlgmac_pkt_info }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.xlgmac_pkt_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.xlgmac_pdata = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xlgmac_desc_data = type { i32, %struct.xlgmac_dma_desc*, %struct.TYPE_5__, i32 }
%struct.xlgmac_dma_desc = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@TX_PACKET_ATTRIBUTES_CSUM_ENABLE_POS = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_CSUM_ENABLE_LEN = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_TSO_ENABLE_POS = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_TSO_ENABLE_LEN = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_VLAN_CTAG_POS = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_VLAN_CTAG_LEN = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TSO context descriptor, mss=%u\0A\00", align 1
@TX_CONTEXT_DESC2_MSS_POS = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC2_MSS_LEN = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_CTXT_POS = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_CTXT_LEN = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_TCMSSV_POS = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_TCMSSV_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"VLAN context descriptor, ctag=%u\0A\00", align 1
@TX_CONTEXT_DESC3_VT_POS = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_VT_LEN = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_VLTV_POS = common dso_local global i32 0, align 4
@TX_CONTEXT_DESC3_VLTV_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_HL_B1L_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_HL_B1L_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_VTIR_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_VTIR_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_VLAN_INSERT = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_PTP_POS = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES_PTP_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_TTSE_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_TTSE_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_FD_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_FD_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_CTXT_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_CTXT_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_OWN_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_OWN_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_TSE_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_TSE_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_TCPPL_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_TCPPL_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_TCPHDRLEN_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_TCPHDRLEN_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_CPC_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_CPC_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_CIC_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_CIC_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_FL_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_FL_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_LD_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3_LD_LEN = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_IC_POS = common dso_local global i32 0, align 4
@TX_NORMAL_DESC2_IC_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: descriptors %u to %u written\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_channel*)* @xlgmac_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_dev_xmit(%struct.xlgmac_channel* %0) #0 {
  %2 = alloca %struct.xlgmac_channel*, align 8
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xlgmac_desc_data*, align 8
  %8 = alloca %struct.xlgmac_dma_desc*, align 8
  %9 = alloca %struct.xlgmac_pkt_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %2, align 8
  %17 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %18 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %17, i32 0, i32 3
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %18, align 8
  store %struct.xlgmac_pdata* %19, %struct.xlgmac_pdata** %3, align 8
  %20 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %21 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %20, i32 0, i32 2
  %22 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %21, align 8
  store %struct.xlgmac_ring* %22, %struct.xlgmac_ring** %4, align 8
  %23 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %24 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %27 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %30 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %29, i32 0, i32 4
  store %struct.xlgmac_pkt_info* %30, %struct.xlgmac_pkt_info** %9, align 8
  %31 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %32 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TX_PACKET_ATTRIBUTES_CSUM_ENABLE_POS, align 4
  %35 = load i32, i32* @TX_PACKET_ATTRIBUTES_CSUM_ENABLE_LEN, align 4
  %36 = call i32 @XLGMAC_GET_REG_BITS(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %38 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TX_PACKET_ATTRIBUTES_TSO_ENABLE_POS, align 4
  %41 = load i32, i32* @TX_PACKET_ATTRIBUTES_TSO_ENABLE_LEN, align 4
  %42 = call i32 @XLGMAC_GET_REG_BITS(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TX_PACKET_ATTRIBUTES_VLAN_CTAG_POS, align 4
  %47 = load i32, i32* @TX_PACKET_ATTRIBUTES_VLAN_CTAG_LEN, align 4
  %48 = call i32 @XLGMAC_GET_REG_BITS(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %1
  %52 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %53 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %56 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %62

61:                                               ; preds = %51, %1
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %67 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %70 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %76

75:                                               ; preds = %65, %62
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %78 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %81 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %85 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  br label %114

89:                                               ; preds = %76
  %90 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %91 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %94 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 1, i32* %15, align 4
  br label %113

98:                                               ; preds = %89
  %99 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %100 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %103 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = srem i32 %101, %104
  %106 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %107 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  store i32 1, i32* %15, align 4
  br label %112

111:                                              ; preds = %98
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %110
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %88
  %115 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %115, i32 %116)
  store %struct.xlgmac_desc_data* %117, %struct.xlgmac_desc_data** %7, align 8
  %118 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %119 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %118, i32 0, i32 1
  %120 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %119, align 8
  store %struct.xlgmac_dma_desc* %120, %struct.xlgmac_dma_desc** %8, align 8
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %229

126:                                              ; preds = %123, %114
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %126
  %130 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %131 = load i32, i32* @tx_queued, align 4
  %132 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %133 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %136 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @netif_dbg(%struct.xlgmac_pdata* %130, i32 %131, i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %137)
  %139 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %140 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @TX_CONTEXT_DESC2_MSS_POS, align 4
  %143 = load i32, i32* @TX_CONTEXT_DESC2_MSS_LEN, align 4
  %144 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %145 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %141, i32 %142, i32 %143, i32 %147)
  %149 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %150 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %152 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @TX_CONTEXT_DESC3_CTXT_POS, align 4
  %155 = load i32, i32* @TX_CONTEXT_DESC3_CTXT_LEN, align 4
  %156 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %153, i32 %154, i32 %155, i32 1)
  %157 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %158 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %160 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* @TX_CONTEXT_DESC3_TCMSSV_POS, align 4
  %163 = load i32, i32* @TX_CONTEXT_DESC3_TCMSSV_LEN, align 4
  %164 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %161, i32 %162, i32 %163, i32 1)
  %165 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %166 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %168 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %171 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  br label %173

173:                                              ; preds = %129, %126
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %220

176:                                              ; preds = %173
  %177 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %178 = load i32, i32* @tx_queued, align 4
  %179 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %180 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %183 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @netif_dbg(%struct.xlgmac_pdata* %177, i32 %178, i32 %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %184)
  %186 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %187 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @TX_CONTEXT_DESC3_CTXT_POS, align 4
  %190 = load i32, i32* @TX_CONTEXT_DESC3_CTXT_LEN, align 4
  %191 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %188, i32 %189, i32 %190, i32 1)
  %192 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %193 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %195 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* @TX_CONTEXT_DESC3_VT_POS, align 4
  %198 = load i32, i32* @TX_CONTEXT_DESC3_VT_LEN, align 4
  %199 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %200 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %196, i32 %197, i32 %198, i32 %202)
  %204 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %205 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  %206 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %207 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* @TX_CONTEXT_DESC3_VLTV_POS, align 4
  %210 = load i32, i32* @TX_CONTEXT_DESC3_VLTV_LEN, align 4
  %211 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %208, i32 %209, i32 %210, i32 1)
  %212 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %213 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %215 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %218 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  store i64 %216, i64* %219, align 8
  br label %220

220:                                              ; preds = %176, %173
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  %223 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %224 = load i32, i32* %14, align 4
  %225 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %223, i32 %224)
  store %struct.xlgmac_desc_data* %225, %struct.xlgmac_desc_data** %7, align 8
  %226 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %227 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %226, i32 0, i32 1
  %228 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %227, align 8
  store %struct.xlgmac_dma_desc* %228, %struct.xlgmac_dma_desc** %8, align 8
  br label %229

229:                                              ; preds = %220, %123
  %230 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %231 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @lower_32_bits(i32 %232)
  %234 = call i8* @cpu_to_le32(i32 %233)
  %235 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %236 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %235, i32 0, i32 3
  store i8* %234, i8** %236, align 8
  %237 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %238 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @upper_32_bits(i32 %239)
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %243 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  %244 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %245 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* @TX_NORMAL_DESC2_HL_B1L_POS, align 4
  %248 = load i32, i32* @TX_NORMAL_DESC2_HL_B1L_LEN, align 4
  %249 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %250 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %246, i32 %247, i32 %248, i32 %251)
  %253 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %254 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %229
  %258 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %259 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i32, i32* @TX_NORMAL_DESC2_VTIR_POS, align 4
  %262 = load i32, i32* @TX_NORMAL_DESC2_VTIR_LEN, align 4
  %263 = load i32, i32* @TX_NORMAL_DESC2_VLAN_INSERT, align 4
  %264 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %260, i32 %261, i32 %262, i32 %263)
  %265 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %266 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %268 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %257, %229
  %273 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %274 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @TX_PACKET_ATTRIBUTES_PTP_POS, align 4
  %277 = load i32, i32* @TX_PACKET_ATTRIBUTES_PTP_LEN, align 4
  %278 = call i32 @XLGMAC_GET_REG_BITS(i32 %275, i32 %276, i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %272
  %281 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %282 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* @TX_NORMAL_DESC2_TTSE_POS, align 4
  %285 = load i32, i32* @TX_NORMAL_DESC2_TTSE_LEN, align 4
  %286 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %283, i32 %284, i32 %285, i32 1)
  %287 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %288 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %287, i32 0, i32 1
  store i8* %286, i8** %288, align 8
  br label %289

289:                                              ; preds = %280, %272
  %290 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %291 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* @TX_NORMAL_DESC3_FD_POS, align 4
  %294 = load i32, i32* @TX_NORMAL_DESC3_FD_LEN, align 4
  %295 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %292, i32 %293, i32 %294, i32 1)
  %296 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %297 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %296, i32 0, i32 0
  store i8* %295, i8** %297, align 8
  %298 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %299 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = load i32, i32* @TX_NORMAL_DESC3_CTXT_POS, align 4
  %302 = load i32, i32* @TX_NORMAL_DESC3_CTXT_LEN, align 4
  %303 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %300, i32 %301, i32 %302, i32 0)
  %304 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %305 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %289
  %310 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %311 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = load i32, i32* @TX_NORMAL_DESC3_OWN_POS, align 4
  %314 = load i32, i32* @TX_NORMAL_DESC3_OWN_LEN, align 4
  %315 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %312, i32 %313, i32 %314, i32 1)
  %316 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %317 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %309, %289
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %358

321:                                              ; preds = %318
  %322 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %323 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* @TX_NORMAL_DESC3_TSE_POS, align 4
  %326 = load i32, i32* @TX_NORMAL_DESC3_TSE_LEN, align 4
  %327 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %324, i32 %325, i32 %326, i32 1)
  %328 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %329 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %328, i32 0, i32 0
  store i8* %327, i8** %329, align 8
  %330 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %331 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* @TX_NORMAL_DESC3_TCPPL_POS, align 4
  %334 = load i32, i32* @TX_NORMAL_DESC3_TCPPL_LEN, align 4
  %335 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %336 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %332, i32 %333, i32 %334, i32 %337)
  %339 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %340 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %339, i32 0, i32 0
  store i8* %338, i8** %340, align 8
  %341 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %342 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = load i32, i32* @TX_NORMAL_DESC3_TCPHDRLEN_POS, align 4
  %345 = load i32, i32* @TX_NORMAL_DESC3_TCPHDRLEN_LEN, align 4
  %346 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %347 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = sdiv i32 %348, 4
  %350 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %343, i32 %344, i32 %345, i32 %349)
  %351 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %352 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %351, i32 0, i32 0
  store i8* %350, i8** %352, align 8
  %353 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %354 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355, align 4
  br label %390

358:                                              ; preds = %318
  %359 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %360 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* @TX_NORMAL_DESC3_CPC_POS, align 4
  %363 = load i32, i32* @TX_NORMAL_DESC3_CPC_LEN, align 4
  %364 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %361, i32 %362, i32 %363, i32 0)
  %365 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %366 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %365, i32 0, i32 0
  store i8* %364, i8** %366, align 8
  %367 = load i32, i32* %10, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %358
  %370 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %371 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = load i32, i32* @TX_NORMAL_DESC3_CIC_POS, align 4
  %374 = load i32, i32* @TX_NORMAL_DESC3_CIC_LEN, align 4
  %375 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %372, i32 %373, i32 %374, i32 3)
  %376 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %377 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %376, i32 0, i32 0
  store i8* %375, i8** %377, align 8
  br label %378

378:                                              ; preds = %369, %358
  %379 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %380 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = load i32, i32* @TX_NORMAL_DESC3_FL_POS, align 4
  %383 = load i32, i32* @TX_NORMAL_DESC3_FL_LEN, align 4
  %384 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %385 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %381, i32 %382, i32 %383, i32 %386)
  %388 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %389 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %388, i32 0, i32 0
  store i8* %387, i8** %389, align 8
  br label %390

390:                                              ; preds = %378, %321
  %391 = load i32, i32* %14, align 4
  %392 = load i32, i32* %13, align 4
  %393 = sub nsw i32 %391, %392
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %16, align 4
  br label %395

395:                                              ; preds = %463, %390
  %396 = load i32, i32* %16, align 4
  %397 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %398 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 8
  %400 = icmp slt i32 %396, %399
  br i1 %400, label %401, label %466

401:                                              ; preds = %395
  %402 = load i32, i32* %14, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %14, align 4
  %404 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %405 = load i32, i32* %14, align 4
  %406 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %404, i32 %405)
  store %struct.xlgmac_desc_data* %406, %struct.xlgmac_desc_data** %7, align 8
  %407 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %408 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %407, i32 0, i32 1
  %409 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %408, align 8
  store %struct.xlgmac_dma_desc* %409, %struct.xlgmac_dma_desc** %8, align 8
  %410 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %411 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @lower_32_bits(i32 %412)
  %414 = call i8* @cpu_to_le32(i32 %413)
  %415 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %416 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %415, i32 0, i32 3
  store i8* %414, i8** %416, align 8
  %417 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %418 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @upper_32_bits(i32 %419)
  %421 = call i8* @cpu_to_le32(i32 %420)
  %422 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %423 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %422, i32 0, i32 2
  store i8* %421, i8** %423, align 8
  %424 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %425 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %424, i32 0, i32 1
  %426 = load i8*, i8** %425, align 8
  %427 = load i32, i32* @TX_NORMAL_DESC2_HL_B1L_POS, align 4
  %428 = load i32, i32* @TX_NORMAL_DESC2_HL_B1L_LEN, align 4
  %429 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %430 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %426, i32 %427, i32 %428, i32 %431)
  %433 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %434 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %433, i32 0, i32 1
  store i8* %432, i8** %434, align 8
  %435 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %436 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %435, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = load i32, i32* @TX_NORMAL_DESC3_OWN_POS, align 4
  %439 = load i32, i32* @TX_NORMAL_DESC3_OWN_LEN, align 4
  %440 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %437, i32 %438, i32 %439, i32 1)
  %441 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %442 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %441, i32 0, i32 0
  store i8* %440, i8** %442, align 8
  %443 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %444 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %443, i32 0, i32 0
  %445 = load i8*, i8** %444, align 8
  %446 = load i32, i32* @TX_NORMAL_DESC3_CTXT_POS, align 4
  %447 = load i32, i32* @TX_NORMAL_DESC3_CTXT_LEN, align 4
  %448 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %445, i32 %446, i32 %447, i32 0)
  %449 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %450 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %449, i32 0, i32 0
  store i8* %448, i8** %450, align 8
  %451 = load i32, i32* %10, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %462

453:                                              ; preds = %401
  %454 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %455 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %454, i32 0, i32 0
  %456 = load i8*, i8** %455, align 8
  %457 = load i32, i32* @TX_NORMAL_DESC3_CIC_POS, align 4
  %458 = load i32, i32* @TX_NORMAL_DESC3_CIC_LEN, align 4
  %459 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %456, i32 %457, i32 %458, i32 3)
  %460 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %461 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %460, i32 0, i32 0
  store i8* %459, i8** %461, align 8
  br label %462

462:                                              ; preds = %453, %401
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %16, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %16, align 4
  br label %395

466:                                              ; preds = %395
  %467 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %468 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = load i32, i32* @TX_NORMAL_DESC3_LD_POS, align 4
  %471 = load i32, i32* @TX_NORMAL_DESC3_LD_LEN, align 4
  %472 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %469, i32 %470, i32 %471, i32 1)
  %473 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %474 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %473, i32 0, i32 0
  store i8* %472, i8** %474, align 8
  %475 = load i32, i32* %15, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %486

477:                                              ; preds = %466
  %478 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %479 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %478, i32 0, i32 1
  %480 = load i8*, i8** %479, align 8
  %481 = load i32, i32* @TX_NORMAL_DESC2_IC_POS, align 4
  %482 = load i32, i32* @TX_NORMAL_DESC2_IC_LEN, align 4
  %483 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %480, i32 %481, i32 %482, i32 1)
  %484 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %485 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %484, i32 0, i32 1
  store i8* %483, i8** %485, align 8
  br label %486

486:                                              ; preds = %477, %466
  %487 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %488 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %491 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 0
  store i32 %489, i32* %492, align 8
  %493 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %494 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %493, i32 0, i32 7
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %497 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 1
  store i32 %495, i32* %498, align 4
  %499 = call i32 (...) @dma_wmb()
  %500 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %501 = load i32, i32* %13, align 4
  %502 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %500, i32 %501)
  store %struct.xlgmac_desc_data* %502, %struct.xlgmac_desc_data** %7, align 8
  %503 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %504 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %503, i32 0, i32 1
  %505 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %504, align 8
  store %struct.xlgmac_dma_desc* %505, %struct.xlgmac_dma_desc** %8, align 8
  %506 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %507 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %506, i32 0, i32 0
  %508 = load i8*, i8** %507, align 8
  %509 = load i32, i32* @TX_NORMAL_DESC3_OWN_POS, align 4
  %510 = load i32, i32* @TX_NORMAL_DESC3_OWN_LEN, align 4
  %511 = call i8* @XLGMAC_SET_REG_BITS_LE(i8* %508, i32 %509, i32 %510, i32 1)
  %512 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %513 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %512, i32 0, i32 0
  store i8* %511, i8** %513, align 8
  %514 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %515 = call i64 @netif_msg_tx_queued(%struct.xlgmac_pdata* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %525

517:                                              ; preds = %486
  %518 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %519 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %520 = load i32, i32* %13, align 4
  %521 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %9, align 8
  %522 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %521, i32 0, i32 6
  %523 = load i32, i32* %522, align 8
  %524 = call i32 @xlgmac_dump_tx_desc(%struct.xlgmac_pdata* %518, %struct.xlgmac_ring* %519, i32 %520, i32 %523, i32 1)
  br label %525

525:                                              ; preds = %517, %486
  %526 = call i32 (...) @smp_wmb()
  %527 = load i32, i32* %14, align 4
  %528 = add nsw i32 %527, 1
  %529 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %530 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %529, i32 0, i32 0
  store i32 %528, i32* %530, align 8
  %531 = call i32 (...) @netdev_xmit_more()
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %543

533:                                              ; preds = %525
  %534 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %535 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %538 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @netdev_get_tx_queue(i32 %536, i32 %539)
  %541 = call i64 @netif_xmit_stopped(i32 %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %547

543:                                              ; preds = %533, %525
  %544 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %545 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %546 = call i32 @xlgmac_tx_start_xmit(%struct.xlgmac_channel* %544, %struct.xlgmac_ring* %545)
  br label %551

547:                                              ; preds = %533
  %548 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %549 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %548, i32 0, i32 3
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 2
  store i32 1, i32* %550, align 8
  br label %551

551:                                              ; preds = %547, %543
  %552 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %553 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* %13, align 4
  %556 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %557 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = sub nsw i32 %558, 1
  %560 = and i32 %555, %559
  %561 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %562 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = sub nsw i32 %563, 1
  %565 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %566 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = sub nsw i32 %567, 1
  %569 = and i32 %564, %568
  %570 = call i32 @XLGMAC_PR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %554, i32 %560, i32 %569)
  ret void
}

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @netif_dbg(%struct.xlgmac_pdata*, i32, i32, i8*, i64) #1

declare dso_local i8* @XLGMAC_SET_REG_BITS_LE(i8*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @netif_msg_tx_queued(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_dump_tx_desc(%struct.xlgmac_pdata*, %struct.xlgmac_ring*, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @xlgmac_tx_start_xmit(%struct.xlgmac_channel*, %struct.xlgmac_ring*) #1

declare dso_local i32 @XLGMAC_PR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
