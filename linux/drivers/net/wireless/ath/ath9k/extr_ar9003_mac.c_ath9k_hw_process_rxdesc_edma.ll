; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_process_rxdesc_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_process_rxdesc_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.ar9003_rxs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_RxDone = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR_DescId = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR_TxRxDesc = common dso_local global i32 0, align 4
@AR_CtrlStat = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i8* null, align 8
@AR_DataLen = common dso_local global i32 0, align 4
@AR_RxRSSICombined = common dso_local global i32 0, align 4
@AR_RxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_RxKeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@ATH9K_RXKEYIX_INVALID = common dso_local global i32 0, align 4
@AR_RxRate = common dso_local global i32 0, align 4
@AR_RxMore = common dso_local global i32 0, align 4
@AR_RxFirstAggr = common dso_local global i32 0, align 4
@AR_RxAggr = common dso_local global i32 0, align 4
@AR_RxMoreAggr = common dso_local global i32 0, align 4
@AR_RxAntenna = common dso_local global i32 0, align 4
@AR_GI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@AR_2040 = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i8* null, align 8
@AR_PreDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_PRE = common dso_local global i32 0, align 4
@AR_PostDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_POST = common dso_local global i32 0, align 4
@AR_DecryptBusyErr = common dso_local global i32 0, align 4
@ATH9K_RX_DECRYPT_BUSY = common dso_local global i32 0, align 4
@AR_RxFrameOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_PHYErrCode = common dso_local global i32 0, align 4
@ATH9K_PHYERR_OFDM_RESTART = common dso_local global i32 0, align 4
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@AR_KeyMiss = common dso_local global i32 0, align 4
@ATH9K_RXERR_KEYMISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_process_rxdesc_edma(%struct.ath_hw* %0, %struct.ath_rx_status* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_rx_status*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ar9003_rxs*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ar9003_rxs*
  store %struct.ar9003_rxs* %11, %struct.ar9003_rxs** %8, align 8
  %12 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %13 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AR_RxDone, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %392

21:                                               ; preds = %3
  %22 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %23 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AR_DescId, align 4
  %26 = call i32 @MS(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 5772
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %392

31:                                               ; preds = %21
  %32 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %33 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR_TxRxDesc, align 4
  %36 = load i32, i32* @AR_CtrlStat, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %392

43:                                               ; preds = %31
  %44 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %45 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %44, i32 0, i32 13
  store i32 0, i32* %45, align 4
  %46 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %47 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %46, i32 0, i32 14
  store i32 0, i32* %47, align 8
  %48 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %49 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %48, i32 0, i32 20
  store i32 0, i32* %49, align 8
  %50 = load i8*, i8** @RATE_INFO_BW_20, align 8
  %51 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %52 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %51, i32 0, i32 19
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %54 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_DataLen, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %59 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %61 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %64 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %63, i32 0, i32 21
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %66 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AR_RxRSSICombined, align 4
  %69 = call i32 @MS(i32 %67, i32 %68)
  %70 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %71 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %73 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AR_RxRSSIAnt00, align 4
  %76 = call i32 @MS(i32 %74, i32 %75)
  %77 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %78 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %82 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AR_RxRSSIAnt01, align 4
  %85 = call i32 @MS(i32 %83, i32 %84)
  %86 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %87 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %91 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AR_RxRSSIAnt02, align 4
  %94 = call i32 @MS(i32 %92, i32 %93)
  %95 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %96 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %100 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AR_RxRSSIAnt10, align 4
  %103 = call i32 @MS(i32 %101, i32 %102)
  %104 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %105 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %109 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AR_RxRSSIAnt11, align 4
  %112 = call i32 @MS(i32 %110, i32 %111)
  %113 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %114 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %118 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AR_RxRSSIAnt12, align 4
  %121 = call i32 @MS(i32 %119, i32 %120)
  %122 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %123 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %121, i32* %125, align 4
  %126 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %127 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AR_RxKeyIdxValid, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %43
  %133 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %134 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AR_KeyIdx, align 4
  %137 = call i32 @MS(i32 %135, i32 %136)
  %138 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %139 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  br label %144

140:                                              ; preds = %43
  %141 = load i32, i32* @ATH9K_RXKEYIX_INVALID, align 4
  %142 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %143 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %132
  %145 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %146 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AR_RxRate, align 4
  %149 = call i32 @MS(i32 %147, i32 %148)
  %150 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %151 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %153 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @AR_RxMore, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %161 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %163 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AR_RxFirstAggr, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %171 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 4
  %172 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %173 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AR_RxAggr, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  %180 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %181 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %180, i32 0, i32 8
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %183 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AR_RxMoreAggr, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 1, i32 0
  %190 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %191 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %193 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @AR_RxAntenna, align 4
  %196 = call i32 @MS(i32 %194, i32 %195)
  %197 = and i32 %196, 7
  %198 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %199 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %198, i32 0, i32 10
  store i32 %197, i32* %199, align 8
  %200 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %201 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @AR_GI, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %144
  %207 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  br label %209

208:                                              ; preds = %144
  br label %209

209:                                              ; preds = %208, %206
  %210 = phi i32 [ %207, %206 ], [ 0, %208 ]
  %211 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %212 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %211, i32 0, i32 20
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %216 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @AR_2040, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load i8*, i8** @RATE_INFO_BW_40, align 8
  br label %225

223:                                              ; preds = %209
  %224 = load i8*, i8** @RATE_INFO_BW_20, align 8
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i8* [ %222, %221 ], [ %224, %223 ]
  %227 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %228 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %227, i32 0, i32 19
  store i8* %226, i8** %228, align 8
  %229 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %230 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %233 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %232, i32 0, i32 18
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %235 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %238 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %237, i32 0, i32 17
  store i32 %236, i32* %238, align 4
  %239 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %240 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %243 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %242, i32 0, i32 16
  store i32 %241, i32* %243, align 8
  %244 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %245 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %248 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %247, i32 0, i32 15
  store i32 %246, i32* %248, align 4
  %249 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %250 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 65535
  %253 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %254 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %253, i32 0, i32 11
  store i32 %252, i32* %254, align 4
  %255 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %256 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @AR_PreDelimCRCErr, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %225
  %262 = load i32, i32* @ATH9K_RX_DELIM_CRC_PRE, align 4
  %263 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %264 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %263, i32 0, i32 14
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %261, %225
  %268 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %269 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %267
  %275 = load i32, i32* @ATH9K_RX_DELIM_CRC_POST, align 4
  %276 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %277 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %276, i32 0, i32 14
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %274, %267
  %281 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %282 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @AR_DecryptBusyErr, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i32, i32* @ATH9K_RX_DECRYPT_BUSY, align 4
  %289 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %290 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %289, i32 0, i32 14
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %287, %280
  %294 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %295 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @AR_RxFrameOK, align 4
  %298 = and i32 %296, %297
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %378

300:                                              ; preds = %293
  %301 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %302 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @AR_CRCErr, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %300
  %308 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %309 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %310 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %309, i32 0, i32 13
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 4
  br label %341

313:                                              ; preds = %300
  %314 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %315 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @AR_DecryptCRCErr, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %313
  %321 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %322 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %323 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %322, i32 0, i32 13
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  br label %340

326:                                              ; preds = %313
  %327 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %328 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @AR_MichaelErr, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %326
  %334 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %335 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %336 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %335, i32 0, i32 13
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %333, %326
  br label %340

340:                                              ; preds = %339, %320
  br label %341

341:                                              ; preds = %340, %307
  %342 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %343 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @AR_PHYErr, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %377

348:                                              ; preds = %341
  %349 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %350 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @AR_PHYErrCode, align 4
  %353 = call i32 @MS(i32 %351, i32 %352)
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* @ATH9K_PHYERR_OFDM_RESTART, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %348
  %358 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %359 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %357
  %365 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %366 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %365, i32 0, i32 12
  store i32 0, i32* %366, align 8
  br label %376

367:                                              ; preds = %357, %348
  %368 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %369 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %370 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %369, i32 0, i32 13
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  %373 = load i32, i32* %9, align 4
  %374 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %375 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %374, i32 0, i32 12
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %367, %364
  br label %377

377:                                              ; preds = %376, %341
  br label %378

378:                                              ; preds = %377, %293
  %379 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %380 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @AR_KeyMiss, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %378
  %386 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %387 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %388 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %387, i32 0, i32 13
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %385, %378
  store i32 0, i32* %4, align 4
  br label %392

392:                                              ; preds = %391, %40, %28, %18
  %393 = load i32, i32* %4, align 4
  ret i32 %393
}

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
