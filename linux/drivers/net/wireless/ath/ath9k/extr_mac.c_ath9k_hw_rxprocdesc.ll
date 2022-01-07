; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_rxprocdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_rxprocdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8**, i8**, i8*, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_RxDone = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i8* null, align 8
@AR_DataLen = common dso_local global i32 0, align 4
@AR_PostDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RSSI_BAD = common dso_local global i8* null, align 8
@AR_RxRSSICombined = common dso_local global i32 0, align 4
@AR_RxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_RxKeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@ATH9K_RXKEYIX_INVALID = common dso_local global i8* null, align 8
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
@AR_STBC = common dso_local global i32 0, align 4
@RX_ENC_FLAG_STBC_SHIFT = common dso_local global i32 0, align 4
@AR_PreDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_PRE = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_POST = common dso_local global i32 0, align 4
@AR_DecryptBusyErr = common dso_local global i32 0, align 4
@ATH9K_RX_DECRYPT_BUSY = common dso_local global i32 0, align 4
@AR_RxFrameOK = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@AR_PHYErrCode = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@ATH9K_RXERR_CORRUPT_DESC = common dso_local global i32 0, align 4
@AR_KeyMiss = common dso_local global i32 0, align 4
@ATH9K_RXERR_KEYMISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_rxprocdesc(%struct.ath_hw* %0, %struct.ath_desc* %1, %struct.ath_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca %struct.ath_rx_status*, align 8
  %8 = alloca %struct.ar5416_desc, align 4
  %9 = alloca %struct.ar5416_desc*, align 8
  %10 = alloca i8*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %7, align 8
  %11 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %12 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %11)
  store %struct.ar5416_desc* %12, %struct.ar5416_desc** %9, align 8
  %13 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %14 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AR_RxDone, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINPROGRESS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %399

22:                                               ; preds = %3
  %23 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %24 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %30 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %29, i32 0, i32 7
  store i32 0, i32* %30, align 4
  %31 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %32 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %31, i32 0, i32 9
  store i32 0, i32* %32, align 8
  %33 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %34 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i8*, i8** @RATE_INFO_BW_20, align 8
  %36 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %37 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AR_DataLen, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %43 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %47 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %22
  %54 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %55 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %56 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %55, i32 0, i32 15
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %58 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %59 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %58, i32 0, i32 14
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %63 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %64 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %63, i32 0, i32 14
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %68 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %69 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %68, i32 0, i32 14
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %73 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %74 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %73, i32 0, i32 13
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %78 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %79 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %78, i32 0, i32 13
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %77, i8** %81, align 8
  %82 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %83 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %84 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %83, i32 0, i32 13
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  store i8* %82, i8** %86, align 8
  br label %142

87:                                               ; preds = %22
  %88 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AR_RxRSSICombined, align 4
  %91 = call i8* @MS(i32 %89, i32 %90)
  %92 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %93 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %92, i32 0, i32 15
  store i8* %91, i8** %93, align 8
  %94 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AR_RxRSSIAnt00, align 4
  %97 = call i8* @MS(i32 %95, i32 %96)
  %98 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %99 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %98, i32 0, i32 14
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %97, i8** %101, align 8
  %102 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AR_RxRSSIAnt01, align 4
  %105 = call i8* @MS(i32 %103, i32 %104)
  %106 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %107 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %106, i32 0, i32 14
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  store i8* %105, i8** %109, align 8
  %110 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AR_RxRSSIAnt02, align 4
  %113 = call i8* @MS(i32 %111, i32 %112)
  %114 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %115 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %114, i32 0, i32 14
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 2
  store i8* %113, i8** %117, align 8
  %118 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AR_RxRSSIAnt10, align 4
  %121 = call i8* @MS(i32 %119, i32 %120)
  %122 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %123 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %122, i32 0, i32 13
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  store i8* %121, i8** %125, align 8
  %126 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AR_RxRSSIAnt11, align 4
  %129 = call i8* @MS(i32 %127, i32 %128)
  %130 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %131 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %130, i32 0, i32 13
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  store i8* %129, i8** %133, align 8
  %134 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AR_RxRSSIAnt12, align 4
  %137 = call i8* @MS(i32 %135, i32 %136)
  %138 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %139 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %138, i32 0, i32 13
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %87, %53
  %143 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AR_RxKeyIdxValid, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AR_KeyIdx, align 4
  %152 = call i8* @MS(i32 %150, i32 %151)
  %153 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %154 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %153, i32 0, i32 12
  store i8* %152, i8** %154, align 8
  br label %159

155:                                              ; preds = %142
  %156 = load i8*, i8** @ATH9K_RXKEYIX_INVALID, align 8
  %157 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %158 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %157, i32 0, i32 12
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %155, %148
  %160 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AR_RxRate, align 4
  %163 = call i8* @MS(i32 %161, i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %166 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AR_RxMore, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %175 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @AR_RxFirstAggr, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 0
  %183 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %184 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AR_RxAggr, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 0
  %192 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %193 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @AR_RxMoreAggr, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 1, i32 0
  %201 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %202 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 8
  %203 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @AR_RxAntenna, align 4
  %206 = call i8* @MS(i32 %204, i32 %205)
  %207 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %208 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %207, i32 0, i32 11
  store i8* %206, i8** %208, align 8
  %209 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @AR_GI, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %159
  %215 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  br label %217

216:                                              ; preds = %159
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %216 ]
  %219 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %220 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @AR_2040, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i8*, i8** @RATE_INFO_BW_40, align 8
  br label %232

230:                                              ; preds = %217
  %231 = load i8*, i8** @RATE_INFO_BW_20, align 8
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i8* [ %229, %228 ], [ %231, %230 ]
  %234 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %235 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %234, i32 0, i32 10
  store i8* %233, i8** %235, align 8
  %236 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %237 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @AR_STBC, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %247 = shl i32 1, %246
  br label %249

248:                                              ; preds = %239
  br label %249

249:                                              ; preds = %248, %245
  %250 = phi i32 [ %247, %245 ], [ 0, %248 ]
  %251 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %252 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %232
  %256 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @AR_PreDelimCRCErr, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load i32, i32* @ATH9K_RX_DELIM_CRC_PRE, align 4
  %263 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %264 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %261, %255
  %268 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %267
  %274 = load i32, i32* @ATH9K_RX_DELIM_CRC_POST, align 4
  %275 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %276 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %275, i32 0, i32 9
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %273, %267
  %280 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @AR_DecryptBusyErr, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %279
  %286 = load i32, i32* @ATH9K_RX_DECRYPT_BUSY, align 4
  %287 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %288 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %285, %279
  %292 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @AR_RxFrameOK, align 4
  %295 = and i32 %293, %294
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %356

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @AR_PHYErr, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %297
  %304 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %305 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %306 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 4
  %309 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @AR_PHYErrCode, align 4
  %312 = call i8* @MS(i32 %310, i32 %311)
  store i8* %312, i8** %10, align 8
  %313 = load i8*, i8** %10, align 8
  %314 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %315 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %314, i32 0, i32 8
  store i8* %313, i8** %315, align 8
  br label %355

316:                                              ; preds = %297
  %317 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @AR_CRCErr, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %324 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %325 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  br label %354

328:                                              ; preds = %316
  %329 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @AR_DecryptCRCErr, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %328
  %335 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %336 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %337 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 4
  br label %353

340:                                              ; preds = %328
  %341 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @AR_MichaelErr, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %348 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %349 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %346, %340
  br label %353

353:                                              ; preds = %352, %334
  br label %354

354:                                              ; preds = %353, %322
  br label %355

355:                                              ; preds = %354, %303
  br label %386

356:                                              ; preds = %291
  %357 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @AR_CRCErr, align 4
  %360 = load i32, i32* @AR_PHYErr, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @AR_DecryptCRCErr, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @AR_MichaelErr, align 4
  %365 = or i32 %363, %364
  %366 = and i32 %358, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %356
  %369 = load i32, i32* @ATH9K_RXERR_CORRUPT_DESC, align 4
  %370 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %371 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 4
  br label %374

374:                                              ; preds = %368, %356
  %375 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %376 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = icmp sge i32 %377, 144
  br i1 %378, label %379, label %385

379:                                              ; preds = %374
  %380 = load i32, i32* @ATH9K_RXERR_CORRUPT_DESC, align 4
  %381 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %382 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  br label %385

385:                                              ; preds = %379, %374
  br label %386

386:                                              ; preds = %385, %355
  %387 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @AR_KeyMiss, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %386
  %393 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %394 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %395 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %393
  store i32 %397, i32* %395, align 4
  br label %398

398:                                              ; preds = %392, %386
  store i32 0, i32* %4, align 4
  br label %399

399:                                              ; preds = %398, %19
  %400 = load i32, i32* %4, align 4
  ret i32 %400
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
