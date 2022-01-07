; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_proc_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_proc_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32, %struct.ar9003_txs* }
%struct.ar9003_txs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_tx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_TxDone = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR_DescId = common dso_local global i32 0, align 4
@ATHEROS_VENDOR_ID = common dso_local global i32 0, align 4
@AR_TxRxDesc = common dso_local global i32 0, align 4
@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Tx Descriptor error %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AR_FinalTxIdx = common dso_local global i32 0, align 4
@AR_SeqNum = common dso_local global i32 0, align 4
@AR_TxTid = common dso_local global i32 0, align 4
@AR_TxQcuNum = common dso_local global i32 0, align 4
@AR_TxDescId = common dso_local global i32 0, align 4
@AR_TxOpExceeded = common dso_local global i32 0, align 4
@ATH9K_TXERR_XTXOP = common dso_local global i32 0, align 4
@AR_TxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_TxBaStatus = common dso_local global i32 0, align 4
@ATH9K_TX_BA = common dso_local global i32 0, align 4
@AR_ExcessiveRetries = common dso_local global i32 0, align 4
@ATH9K_TXERR_XRETRY = common dso_local global i32 0, align 4
@AR_Filtered = common dso_local global i32 0, align 4
@ATH9K_TXERR_FILT = common dso_local global i32 0, align 4
@AR_FIFOUnderrun = common dso_local global i32 0, align 4
@ATH9K_TXERR_FIFO = common dso_local global i32 0, align 4
@AR_TxTimerExpired = common dso_local global i32 0, align 4
@ATH9K_TXERR_TIMER_EXPIRED = common dso_local global i32 0, align 4
@AR_DescCfgErr = common dso_local global i32 0, align 4
@ATH9K_TX_DESC_CFG_ERR = common dso_local global i32 0, align 4
@AR_TxDataUnderrun = common dso_local global i32 0, align 4
@ATH9K_TX_DATA_UNDERRUN = common dso_local global i32 0, align 4
@AR_TxDelimUnderrun = common dso_local global i32 0, align 4
@ATH9K_TX_DELIM_UNDERRUN = common dso_local global i32 0, align 4
@AR_RTSFailCnt = common dso_local global i32 0, align 4
@AR_DataFailCnt = common dso_local global i32 0, align 4
@AR_VirtRetryCnt = common dso_local global i32 0, align 4
@AR_TxRSSICombined = common dso_local global i32 0, align 4
@AR_TxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i8*, %struct.ath_tx_status*)* @ar9003_hw_proc_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_proc_txdesc(%struct.ath_hw* %0, i8* %1, %struct.ath_tx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ath_tx_status*, align 8
  %8 = alloca %struct.ar9003_txs*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %7, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = load %struct.ar9003_txs*, %struct.ar9003_txs** %11, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %12, i64 %15
  store %struct.ar9003_txs* %16, %struct.ar9003_txs** %8, align 8
  %17 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %18 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @READ_ONCE(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AR_TxDone, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINPROGRESS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %284

28:                                               ; preds = %3
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = urem i64 %32, %36
  %38 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %41 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR_DescId, align 4
  %44 = call i32 @MS(i32 %42, i32 %43)
  %45 = load i32, i32* @ATHEROS_VENDOR_ID, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %28
  %48 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %49 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR_TxRxDesc, align 4
  %52 = call i32 @MS(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %66

54:                                               ; preds = %47, %28
  %55 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %56 = call i32 @ath9k_hw_common(%struct.ath_hw* %55)
  %57 = load i32, i32* @XMIT, align 4
  %58 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %59 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ath_dbg(i32 %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %63 = call i32 @memset(%struct.ar9003_txs* %62, i32 0, i32 36)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %284

66:                                               ; preds = %47
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AR_FinalTxIdx, align 4
  %69 = call i32 @MS(i32 %67, i32 %68)
  %70 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %71 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @AR_SeqNum, align 4
  %74 = call i32 @MS(i32 %72, i32 %73)
  %75 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %76 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @AR_TxTid, align 4
  %79 = call i32 @MS(i32 %77, i32 %78)
  %80 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %81 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %83 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AR_TxQcuNum, align 4
  %86 = call i32 @MS(i32 %84, i32 %85)
  %87 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %88 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %90 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AR_TxDescId, align 4
  %93 = call i32 @MS(i32 %91, i32 %92)
  %94 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %95 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %97 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %100 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %99, i32 0, i32 19
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %102 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %101, i32 0, i32 16
  store i32 0, i32* %102, align 4
  %103 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %104 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %103, i32 0, i32 15
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @AR_TxOpExceeded, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %66
  %110 = load i32, i32* @ATH9K_TXERR_XTXOP, align 4
  %111 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %112 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %111, i32 0, i32 16
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %66
  %116 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %117 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @READ_ONCE(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @AR_TxRSSIAnt00, align 4
  %122 = call i32 @MS(i32 %120, i32 %121)
  %123 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %124 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @AR_TxRSSIAnt01, align 4
  %127 = call i32 @MS(i32 %125, i32 %126)
  %128 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %129 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @AR_TxRSSIAnt02, align 4
  %132 = call i32 @MS(i32 %130, i32 %131)
  %133 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %134 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @AR_TxBaStatus, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %115
  %140 = load i32, i32* @ATH9K_TX_BA, align 4
  %141 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %142 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %146 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %149 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %148, i32 0, i32 18
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %151 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %154 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %153, i32 0, i32 17
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %139, %115
  %156 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %157 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @READ_ONCE(i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @AR_ExcessiveRetries, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = load i32, i32* @ATH9K_TXERR_XRETRY, align 4
  %166 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %167 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %166, i32 0, i32 16
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %155
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @AR_Filtered, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @ATH9K_TXERR_FILT, align 4
  %177 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %178 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %177, i32 0, i32 16
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %170
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @AR_FIFOUnderrun, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i32, i32* @ATH9K_TXERR_FIFO, align 4
  %188 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %189 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %188, i32 0, i32 16
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %193 = call i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %192, i32 1)
  br label %194

194:                                              ; preds = %186, %181
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @AR_TxTimerExpired, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* @ATH9K_TXERR_TIMER_EXPIRED, align 4
  %201 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %202 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %201, i32 0, i32 16
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @AR_DescCfgErr, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @ATH9K_TX_DESC_CFG_ERR, align 4
  %212 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %213 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %212, i32 0, i32 15
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %210, %205
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @AR_TxDataUnderrun, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load i32, i32* @ATH9K_TX_DATA_UNDERRUN, align 4
  %223 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %224 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %228 = call i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %227, i32 1)
  br label %229

229:                                              ; preds = %221, %216
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @AR_TxDelimUnderrun, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load i32, i32* @ATH9K_TX_DELIM_UNDERRUN, align 4
  %236 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %237 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %236, i32 0, i32 15
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %241 = call i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %240, i32 1)
  br label %242

242:                                              ; preds = %234, %229
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @AR_RTSFailCnt, align 4
  %245 = call i32 @MS(i32 %243, i32 %244)
  %246 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %247 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @AR_DataFailCnt, align 4
  %250 = call i32 @MS(i32 %248, i32 %249)
  %251 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %252 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %251, i32 0, i32 9
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @AR_VirtRetryCnt, align 4
  %255 = call i32 @MS(i32 %253, i32 %254)
  %256 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %257 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %256, i32 0, i32 10
  store i32 %255, i32* %257, align 4
  %258 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %259 = getelementptr inbounds %struct.ar9003_txs, %struct.ar9003_txs* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @READ_ONCE(i32 %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @AR_TxRSSICombined, align 4
  %264 = call i32 @MS(i32 %262, i32 %263)
  %265 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %266 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %265, i32 0, i32 11
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* @AR_TxRSSIAnt10, align 4
  %269 = call i32 @MS(i32 %267, i32 %268)
  %270 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %271 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %270, i32 0, i32 12
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @AR_TxRSSIAnt11, align 4
  %274 = call i32 @MS(i32 %272, i32 %273)
  %275 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %276 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %275, i32 0, i32 13
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @AR_TxRSSIAnt12, align 4
  %279 = call i32 @MS(i32 %277, i32 %278)
  %280 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %281 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %280, i32 0, i32 14
  store i32 %279, i32* %281, align 4
  %282 = load %struct.ar9003_txs*, %struct.ar9003_txs** %8, align 8
  %283 = call i32 @memset(%struct.ar9003_txs* %282, i32 0, i32 36)
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %242, %54, %25
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ar9003_txs*, i32, i32) #1

declare dso_local i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
