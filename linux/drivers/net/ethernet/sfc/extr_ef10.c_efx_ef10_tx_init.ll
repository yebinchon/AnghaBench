; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.efx_nic*, %struct.efx_channel* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.efx_nic = type { i32, %struct.TYPE_5__*, %struct.efx_ef10_nic_data* }
%struct.TYPE_5__ = type { i32 (%struct.efx_nic*, i32, i32)* }
%struct.efx_ef10_nic_data = type { i32, i32, i32, i32 }
%struct.efx_channel = type { i32 }

@inbuf = common dso_local global i32 0, align 4
@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@EFX_TXQ_TYPE_OFFLOAD = common dso_local global i32 0, align 4
@MC_CMD_INIT_TXQ_OUT_LEN = common dso_local global i64 0, align 8
@LICENSED_V3_FEATURES_TX_TIMESTAMPS_LBN = common dso_local global i32 0, align 4
@MC_CMD_GET_CAPABILITIES_V2_OUT_TX_TSO_V2_LBN = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Using TSOv2 for channel %u\0A\00", align 1
@INIT_TXQ_IN_SIZE = common dso_local global i32 0, align 4
@INIT_TXQ_IN_TARGET_EVQ = common dso_local global i32 0, align 4
@INIT_TXQ_IN_LABEL = common dso_local global i32 0, align 4
@INIT_TXQ_IN_INSTANCE = common dso_local global i32 0, align 4
@INIT_TXQ_IN_OWNER_ID = common dso_local global i32 0, align 4
@INIT_TXQ_IN_PORT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pushing TXQ %d. %zu entries (%llx)\0A\00", align 1
@INIT_TXQ_IN_DMA_ADDR = common dso_local global i32 0, align 4
@INIT_TXQ_IN_FLAGS = common dso_local global i32 0, align 4
@INIT_TXQ_EXT_IN_FLAG_TSOV2_EN = common dso_local global i32 0, align 4
@INIT_TXQ_IN_FLAG_IP_CSUM_DIS = common dso_local global i32 0, align 4
@INIT_TXQ_IN_FLAG_TCP_CSUM_DIS = common dso_local global i32 0, align 4
@INIT_TXQ_EXT_IN_FLAG_TIMESTAMP = common dso_local global i32 0, align 4
@MC_CMD_INIT_TXQ = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"TSOv2 context not available to segment in hardware. TCP performance may be reduced.\0A\00", align 1
@MC_CMD_INIT_TXQ_EXT_IN_LEN = common dso_local global i32 0, align 4
@EFX_TX_BUF_OPTION = common dso_local global i32 0, align 4
@ESF_DZ_TX_DESC_IS_OPT = common dso_local global i32 0, align 4
@ESF_DZ_TX_OPTION_TYPE = common dso_local global i32 0, align 4
@ESE_DZ_TX_OPTION_DESC_CRC_CSUM = common dso_local global i32 0, align 4
@ESF_DZ_TX_OPTION_UDP_TCP_CSUM = common dso_local global i32 0, align 4
@ESF_DZ_TX_OPTION_IP_CSUM = common dso_local global i32 0, align 4
@ESF_DZ_TX_TIMESTAMP = common dso_local global i32 0, align 4
@efx_ef10_tx_tso_desc = common dso_local global i32 0, align 4
@MC_CMD_GET_CAPABILITIES_OUT_TX_TSO_LBN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to initialise TXQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*)* @efx_ef10_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_tx_init(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.efx_channel*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_ef10_nic_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %14 = load i32, i32* @inbuf, align 4
  %15 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %16 = mul nsw i32 %15, 8
  %17 = load i32, i32* @EFX_BUF_SIZE, align 4
  %18 = sdiv i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = call i64 @MC_CMD_INIT_TXQ_IN_LEN(i64 %19)
  %21 = call i32 @MCDI_DECLARE_BUF(i32 %14, i64 %20)
  %22 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EFX_BUF_SIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %4, align 8
  %35 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %35, i32 0, i32 10
  %37 = load %struct.efx_channel*, %struct.efx_channel** %36, align 8
  store %struct.efx_channel* %37, %struct.efx_channel** %5, align 8
  %38 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %39 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %38, i32 0, i32 9
  %40 = load %struct.efx_nic*, %struct.efx_nic** %39, align 8
  store %struct.efx_nic* %40, %struct.efx_nic** %6, align 8
  %41 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 2
  %43 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %42, align 8
  store %struct.efx_ef10_nic_data* %43, %struct.efx_ef10_nic_data** %7, align 8
  store i32 0, i32* %8, align 4
  %44 = load i64, i64* @MC_CMD_INIT_TXQ_OUT_LEN, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUILD_BUG_ON(i32 %46)
  %48 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %49 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LICENSED_V3_FEATURES_TX_TIMESTAMPS_LBN, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %1
  %56 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %57 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %59 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.efx_nic*, i32, i32)*, i32 (%struct.efx_nic*, i32, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.efx_nic*, i32, i32)* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %66 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32 (%struct.efx_nic*, i32, i32)*, i32 (%struct.efx_nic*, i32, i32)** %68, align 8
  %70 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %71 = call i32 %69(%struct.efx_nic* %70, i32 0, i32 0)
  br label %72

72:                                               ; preds = %64, %55
  br label %73

73:                                               ; preds = %72, %1
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %78 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MC_CMD_GET_CAPABILITIES_V2_OUT_TX_TSO_V2_LBN, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %86 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  %90 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %91 = load i32, i32* @hw, align 4
  %92 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %93 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %96 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.efx_nic* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %89, %84, %76, %73
  %100 = load i32, i32* @inbuf, align 4
  %101 = load i32, i32* @INIT_TXQ_IN_SIZE, align 4
  %102 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %103 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  %106 = call i32 @MCDI_SET_DWORD(i32 %100, i32 %101, i32 %105)
  %107 = load i32, i32* @inbuf, align 4
  %108 = load i32, i32* @INIT_TXQ_IN_TARGET_EVQ, align 4
  %109 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %110 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @MCDI_SET_DWORD(i32 %107, i32 %108, i32 %111)
  %113 = load i32, i32* @inbuf, align 4
  %114 = load i32, i32* @INIT_TXQ_IN_LABEL, align 4
  %115 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %116 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @MCDI_SET_DWORD(i32 %113, i32 %114, i32 %117)
  %119 = load i32, i32* @inbuf, align 4
  %120 = load i32, i32* @INIT_TXQ_IN_INSTANCE, align 4
  %121 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %122 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @MCDI_SET_DWORD(i32 %119, i32 %120, i32 %123)
  %125 = load i32, i32* @inbuf, align 4
  %126 = load i32, i32* @INIT_TXQ_IN_OWNER_ID, align 4
  %127 = call i32 @MCDI_SET_DWORD(i32 %125, i32 %126, i32 0)
  %128 = load i32, i32* @inbuf, align 4
  %129 = load i32, i32* @INIT_TXQ_IN_PORT_ID, align 4
  %130 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %131 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @MCDI_SET_DWORD(i32 %128, i32 %129, i32 %132)
  %134 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %135 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %10, align 8
  %139 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %140 = load i32, i32* @hw, align 4
  %141 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %142 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %145 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* %10, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.efx_nic* %139, i32 %140, i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %146, i64 %147, i32 %149)
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %166, %99
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %4, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load i32, i32* @inbuf, align 4
  %158 = load i32, i32* @INIT_TXQ_IN_DMA_ADDR, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @MCDI_SET_ARRAY_QWORD(i32 %157, i32 %158, i32 %159, i64 %160)
  %162 = load i32, i32* @EFX_BUF_SIZE, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %10, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %10, align 8
  br label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %151

169:                                              ; preds = %151
  %170 = load i64, i64* %4, align 8
  %171 = call i64 @MC_CMD_INIT_TXQ_IN_LEN(i64 %170)
  store i64 %171, i64* %9, align 8
  br label %172

172:                                              ; preds = %222, %169
  %173 = load i32, i32* @inbuf, align 4
  %174 = load i32, i32* @INIT_TXQ_IN_FLAGS, align 4
  %175 = load i32, i32* @INIT_TXQ_EXT_IN_FLAG_TSOV2_EN, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @INIT_TXQ_IN_FLAG_IP_CSUM_DIS, align 4
  %178 = load i32, i32* %3, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* @INIT_TXQ_IN_FLAG_TCP_CSUM_DIS, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* @INIT_TXQ_EXT_IN_FLAG_TIMESTAMP, align 4
  %188 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %189 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @MCDI_POPULATE_DWORD_4(i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %181, i32 %182, i32 %186, i32 %187, i32 %190)
  %192 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %193 = load i32, i32* @MC_CMD_INIT_TXQ, align 4
  %194 = load i32, i32* @inbuf, align 4
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @efx_mcdi_rpc_quiet(%struct.efx_nic* %192, i32 %193, i32 %194, i64 %195, i32* null, i32 0, i32* null)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @ENOSPC, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %172
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  store i32 0, i32* %8, align 4
  %205 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %206 = load i32, i32* @probe, align 4
  %207 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %208 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @netif_warn(%struct.efx_nic* %205, i32 %206, i32 %209, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  br label %221

211:                                              ; preds = %201, %172
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %216 = load i32, i32* @MC_CMD_INIT_TXQ, align 4
  %217 = load i32, i32* @MC_CMD_INIT_TXQ_EXT_IN_LEN, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @efx_mcdi_display_error(%struct.efx_nic* %215, i32 %216, i32 %217, i32* null, i32 0, i32 %218)
  br label %277

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220, %204
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %172, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @EFX_TX_BUF_OPTION, align 4
  %227 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %228 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %227, i32 0, i32 7
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  store i32 %226, i32* %231, align 4
  %232 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %233 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %232, i32 0, i32 3
  store i32 1, i32* %233, align 4
  %234 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %235 = call i32* @efx_tx_desc(%struct.efx_tx_queue* %234, i32 0)
  store i32* %235, i32** %11, align 8
  %236 = load i32*, i32** %11, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @ESF_DZ_TX_DESC_IS_OPT, align 4
  %239 = load i32, i32* @ESF_DZ_TX_OPTION_TYPE, align 4
  %240 = load i32, i32* @ESE_DZ_TX_OPTION_DESC_CRC_CSUM, align 4
  %241 = load i32, i32* @ESF_DZ_TX_OPTION_UDP_TCP_CSUM, align 4
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* @ESF_DZ_TX_OPTION_IP_CSUM, align 4
  %244 = load i32, i32* %3, align 4
  %245 = load i32, i32* @ESF_DZ_TX_TIMESTAMP, align 4
  %246 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %247 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @EFX_POPULATE_QWORD_5(i32 %237, i32 %238, i32 1, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %248)
  %250 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %251 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %250, i32 0, i32 4
  store i32 1, i32* %251, align 8
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %225
  %255 = load i32, i32* @efx_ef10_tx_tso_desc, align 4
  %256 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %257 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 8
  %258 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %259 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %258, i32 0, i32 5
  store i32 2, i32* %259, align 4
  br label %272

260:                                              ; preds = %225
  %261 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %262 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @MC_CMD_GET_CAPABILITIES_OUT_TX_TSO_LBN, align 4
  %265 = shl i32 1, %264
  %266 = and i32 %263, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %260
  %269 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %270 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %269, i32 0, i32 5
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %268, %260
  br label %272

272:                                              ; preds = %271, %254
  %273 = call i32 (...) @wmb()
  %274 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %275 = load i32*, i32** %11, align 8
  %276 = call i32 @efx_ef10_push_tx_desc(%struct.efx_tx_queue* %274, i32* %275)
  br label %285

277:                                              ; preds = %214
  %278 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %279 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %282 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @netdev_WARN(i32 %280, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %277, %272
  ret void
}

declare dso_local i32 @MCDI_DECLARE_BUF(i32, i64) #1

declare dso_local i64 @MC_CMD_INIT_TXQ_IN_LEN(i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @MCDI_SET_DWORD(i32, i32, i32) #1

declare dso_local i32 @MCDI_SET_ARRAY_QWORD(i32, i32, i32, i64) #1

declare dso_local i32 @MCDI_POPULATE_DWORD_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_mcdi_rpc_quiet(%struct.efx_nic*, i32, i32, i64, i32*, i32, i32*) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_mcdi_display_error(%struct.efx_nic*, i32, i32, i32*, i32, i32) #1

declare dso_local i32* @efx_tx_desc(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @EFX_POPULATE_QWORD_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @efx_ef10_push_tx_desc(%struct.efx_tx_queue*, i32*) #1

declare dso_local i32 @netdev_WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
