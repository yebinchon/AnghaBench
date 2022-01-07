; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_set_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_set_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_tx_info = type { i32, i32, i32*, i32*, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ar9003_txc = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATHEROS_VENDOR_ID = common dso_local global i32 0, align 4
@AR_DescId_S = common dso_local global i32 0, align 4
@AR_TxRxDesc_S = common dso_local global i32 0, align 4
@AR_CtrlStat_S = common dso_local global i32 0, align 4
@AR_TxQcuNum_S = common dso_local global i32 0, align 4
@AR_BufLen_S = common dso_local global i32 0, align 4
@AR_BufLen = common dso_local global i32 0, align 4
@AR_DurUpdateEna = common dso_local global i32 0, align 4
@AR_BurstDur = common dso_local global i32 0, align 4
@AR_EncrType = common dso_local global i32 0, align 4
@AR_TxMore = common dso_local global i32 0, align 4
@AR_FrameLen = common dso_local global i32 0, align 4
@ATH9K_TXDESC_VMF = common dso_local global i32 0, align 4
@AR_VirtMoreFrag = common dso_local global i32 0, align 4
@AR_XmitPower0 = common dso_local global i32 0, align 4
@ATH9K_TXDESC_VEOL = common dso_local global i32 0, align 4
@AR_VEOL = common dso_local global i32 0, align 4
@ATH9K_TXKEYIX_INVALID = common dso_local global i64 0, align 8
@AR_DestIdxValid = common dso_local global i32 0, align 4
@ATH9K_TXDESC_LOWRXCHAIN = common dso_local global i32 0, align 4
@AR_LowRxChain = common dso_local global i32 0, align 4
@ATH9K_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@AR_ClrDestMask = common dso_local global i32 0, align 4
@ATH9K_TXDESC_RTSENA = common dso_local global i32 0, align 4
@AR_RTSEnable = common dso_local global i32 0, align 4
@ATH9K_TXDESC_CTSENA = common dso_local global i32 0, align 4
@AR_CTSEnable = common dso_local global i32 0, align 4
@AR_DestIdx = common dso_local global i32 0, align 4
@AR_FrameType = common dso_local global i32 0, align 4
@ATH9K_TXDESC_NOACK = common dso_local global i32 0, align 4
@AR_NoAck = common dso_local global i32 0, align 4
@ATH9K_TXDESC_EXT_ONLY = common dso_local global i32 0, align 4
@AR_ExtOnly = common dso_local global i32 0, align 4
@ATH9K_TXDESC_EXT_AND_CTL = common dso_local global i32 0, align 4
@AR_ExtAndCtl = common dso_local global i32 0, align 4
@ATH9K_TXDESC_LDPC = common dso_local global i32 0, align 4
@AR_LDPC = common dso_local global i32 0, align 4
@AR_AggrLen = common dso_local global i32 0, align 4
@AR_IsAggr = common dso_local global i32 0, align 4
@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@ATH9K_TXDESC_PAPRD = common dso_local global i32 0, align 4
@ATH9K_TXDESC_PAPRD_S = common dso_local global i32 0, align 4
@AR_PAPRDChainMask = common dso_local global i32 0, align 4
@AR_RTSCTSRate = common dso_local global i32 0, align 4
@AR_Not_Sounding = common dso_local global i32 0, align 4
@AR_XmitPower1 = common dso_local global i32 0, align 4
@AR_XmitPower2 = common dso_local global i32 0, align 4
@AR_XmitPower3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i8*, %struct.ath_tx_info*)* @ar9003_set_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_set_txdesc(%struct.ath_hw* %0, i8* %1, %struct.ath_tx_info* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath_tx_info*, align 8
  %7 = alloca %struct.ar9003_txc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ath_tx_info* %2, %struct.ath_tx_info** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ar9003_txc*
  store %struct.ar9003_txc* %14, %struct.ar9003_txc** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call i64 @AR_SREV_9462(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = call i64 @AR_SREV_9565(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ true, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 24, i32 23
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @ATHEROS_VENDOR_ID, align 4
  %27 = load i32, i32* @AR_DescId_S, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @AR_TxRxDesc_S, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @AR_CtrlStat_S, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %36 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AR_TxQcuNum_S, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %34, %39
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %47 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %46, i32 0, i32 23
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @WRITE_ONCE(i64 %48, i32 %49)
  %51 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %52 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %57 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %56, i32 0, i32 22
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %60 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @WRITE_ONCE(i64 %58, i32 %61)
  %63 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %64 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %71 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %70, i32 0, i32 21
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %74 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @WRITE_ONCE(i64 %72, i32 %77)
  %79 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %80 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %87 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %86, i32 0, i32 20
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %90 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @WRITE_ONCE(i64 %88, i32 %93)
  %95 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %96 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %103 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %102, i32 0, i32 19
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %106 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @WRITE_ONCE(i64 %104, i32 %109)
  %111 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %112 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %119 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %118, i32 0, i32 18
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %122 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @WRITE_ONCE(i64 %120, i32 %125)
  %127 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %128 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AR_BufLen_S, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* @AR_BufLen, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %8, align 4
  %138 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %139 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %138, i32 0, i32 17
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @WRITE_ONCE(i64 %140, i32 %141)
  %143 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %144 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AR_BufLen_S, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* @AR_BufLen, align 4
  %151 = and i32 %149, %150
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %155 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %154, i32 0, i32 16
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @WRITE_ONCE(i64 %156, i32 %157)
  %159 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %160 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @AR_BufLen_S, align 4
  %165 = shl i32 %163, %164
  %166 = load i32, i32* @AR_BufLen, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %171 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %170, i32 0, i32 15
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @WRITE_ONCE(i64 %172, i32 %173)
  %175 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %176 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @AR_BufLen_S, align 4
  %181 = shl i32 %179, %180
  %182 = load i32, i32* @AR_BufLen, align 4
  %183 = and i32 %181, %182
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %187 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %186, i32 0, i32 14
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @WRITE_ONCE(i64 %188, i32 %189)
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, 65535
  %193 = load i32, i32* %8, align 4
  %194 = ashr i32 %193, 16
  %195 = add nsw i32 %192, %194
  %196 = and i32 %195, 65535
  store i32 %196, i32* %8, align 4
  %197 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %198 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %197, i32 0, i32 13
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @WRITE_ONCE(i64 %199, i32 %200)
  %202 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %203 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %202, i32 0, i32 16
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %22
  %207 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %208 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %207, i32 0, i32 15
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %271

211:                                              ; preds = %206, %22
  %212 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %213 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %212, i32 0, i32 12
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %216 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %215, i32 0, i32 14
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @set11nTries(i32 %217, i32 0)
  %219 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %220 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %219, i32 0, i32 14
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @set11nTries(i32 %221, i32 1)
  %223 = or i32 %218, %222
  %224 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %225 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %224, i32 0, i32 14
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @set11nTries(i32 %226, i32 2)
  %228 = or i32 %223, %227
  %229 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %230 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %229, i32 0, i32 14
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @set11nTries(i32 %231, i32 3)
  %233 = or i32 %228, %232
  %234 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %235 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %234, i32 0, i32 17
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %211
  %239 = load i32, i32* @AR_DurUpdateEna, align 4
  br label %241

240:                                              ; preds = %211
  br label %241

241:                                              ; preds = %240, %238
  %242 = phi i32 [ %239, %238 ], [ 0, %240 ]
  %243 = or i32 %233, %242
  %244 = load i32, i32* @AR_BurstDur, align 4
  %245 = call i32 @SM(i32 0, i32 %244)
  %246 = or i32 %243, %245
  %247 = call i32 @WRITE_ONCE(i64 %214, i32 %246)
  %248 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %249 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %248, i32 0, i32 11
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %252 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %251, i32 0, i32 14
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @set11nRate(i32 %253, i32 0)
  %255 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %256 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %255, i32 0, i32 14
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @set11nRate(i32 %257, i32 1)
  %259 = or i32 %254, %258
  %260 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %261 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %260, i32 0, i32 14
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @set11nRate(i32 %262, i32 2)
  %264 = or i32 %259, %263
  %265 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %266 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %265, i32 0, i32 14
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @set11nRate(i32 %267, i32 3)
  %269 = or i32 %264, %268
  %270 = call i32 @WRITE_ONCE(i64 %250, i32 %269)
  br label %280

271:                                              ; preds = %206
  %272 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %273 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %272, i32 0, i32 12
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @WRITE_ONCE(i64 %274, i32 0)
  %276 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %277 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %276, i32 0, i32 11
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @WRITE_ONCE(i64 %278, i32 0)
  br label %280

280:                                              ; preds = %271, %241
  %281 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %282 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %281, i32 0, i32 2
  store i64 0, i64* %282, align 8
  %283 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %284 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %283, i32 0, i32 1
  store i64 0, i64* %284, align 8
  %285 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %286 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %285, i32 0, i32 0
  store i64 0, i64* %286, align 8
  %287 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %288 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %287, i32 0, i32 10
  store i64 0, i64* %288, align 8
  %289 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %290 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @AR_EncrType, align 4
  %293 = call i32 @SM(i32 %291, i32 %292)
  store i32 %293, i32* %11, align 4
  %294 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %295 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %294, i32 0, i32 16
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %337, label %298

298:                                              ; preds = %280
  %299 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %300 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %299, i32 0, i32 9
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @WRITE_ONCE(i64 %301, i32 0)
  %303 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %304 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %303, i32 0, i32 8
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %307 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %306, i32 0, i32 15
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %298
  br label %313

311:                                              ; preds = %298
  %312 = load i32, i32* @AR_TxMore, align 4
  br label %313

313:                                              ; preds = %311, %310
  %314 = phi i32 [ 0, %310 ], [ %312, %311 ]
  %315 = call i32 @WRITE_ONCE(i64 %305, i32 %314)
  %316 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %317 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @WRITE_ONCE(i64 %318, i32 0)
  %320 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %321 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @WRITE_ONCE(i64 %322, i32 0)
  %324 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %325 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %324, i32 0, i32 7
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* %11, align 4
  %328 = call i32 @WRITE_ONCE(i64 %326, i32 %327)
  %329 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %330 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @WRITE_ONCE(i64 %331, i32 0)
  %333 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %334 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @WRITE_ONCE(i64 %335, i32 0)
  br label %652

337:                                              ; preds = %280
  %338 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %339 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %338, i32 0, i32 9
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %342 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @AR_FrameLen, align 4
  %345 = and i32 %343, %344
  %346 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %347 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @ATH9K_TXDESC_VMF, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %337
  %353 = load i32, i32* @AR_VirtMoreFrag, align 4
  br label %355

354:                                              ; preds = %337
  br label %355

355:                                              ; preds = %354, %352
  %356 = phi i32 [ %353, %352 ], [ 0, %354 ]
  %357 = or i32 %345, %356
  %358 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %359 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %358, i32 0, i32 7
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @AR_XmitPower0, align 4
  %364 = call i32 @SM(i32 %362, i32 %363)
  %365 = or i32 %357, %364
  %366 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %367 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @ATH9K_TXDESC_VEOL, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %355
  %373 = load i32, i32* @AR_VEOL, align 4
  br label %375

374:                                              ; preds = %355
  br label %375

375:                                              ; preds = %374, %372
  %376 = phi i32 [ %373, %372 ], [ 0, %374 ]
  %377 = or i32 %365, %376
  %378 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %379 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %378, i32 0, i32 8
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ATH9K_TXKEYIX_INVALID, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %375
  %384 = load i32, i32* @AR_DestIdxValid, align 4
  br label %386

385:                                              ; preds = %375
  br label %386

386:                                              ; preds = %385, %383
  %387 = phi i32 [ %384, %383 ], [ 0, %385 ]
  %388 = or i32 %377, %387
  %389 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %390 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @ATH9K_TXDESC_LOWRXCHAIN, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %386
  %396 = load i32, i32* @AR_LowRxChain, align 4
  br label %398

397:                                              ; preds = %386
  br label %398

398:                                              ; preds = %397, %395
  %399 = phi i32 [ %396, %395 ], [ 0, %397 ]
  %400 = or i32 %388, %399
  %401 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %402 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @ATH9K_TXDESC_CLRDMASK, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %398
  %408 = load i32, i32* @AR_ClrDestMask, align 4
  br label %410

409:                                              ; preds = %398
  br label %410

410:                                              ; preds = %409, %407
  %411 = phi i32 [ %408, %407 ], [ 0, %409 ]
  %412 = or i32 %400, %411
  %413 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %414 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %413, i32 0, i32 6
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @ATH9K_TXDESC_RTSENA, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %410
  %420 = load i32, i32* @AR_RTSEnable, align 4
  br label %433

421:                                              ; preds = %410
  %422 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %423 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @ATH9K_TXDESC_CTSENA, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %421
  %429 = load i32, i32* @AR_CTSEnable, align 4
  br label %431

430:                                              ; preds = %421
  br label %431

431:                                              ; preds = %430, %428
  %432 = phi i32 [ %429, %428 ], [ 0, %430 ]
  br label %433

433:                                              ; preds = %431, %419
  %434 = phi i32 [ %420, %419 ], [ %432, %431 ]
  %435 = or i32 %412, %434
  %436 = call i32 @WRITE_ONCE(i64 %340, i32 %435)
  %437 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %438 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %437, i32 0, i32 8
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @ATH9K_TXKEYIX_INVALID, align 8
  %441 = icmp ne i64 %439, %440
  br i1 %441, label %442, label %449

442:                                              ; preds = %433
  %443 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %444 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %443, i32 0, i32 8
  %445 = load i64, i64* %444, align 8
  %446 = trunc i64 %445 to i32
  %447 = load i32, i32* @AR_DestIdx, align 4
  %448 = call i32 @SM(i32 %446, i32 %447)
  br label %450

449:                                              ; preds = %433
  br label %450

450:                                              ; preds = %449, %442
  %451 = phi i32 [ %448, %442 ], [ 0, %449 ]
  %452 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %453 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %452, i32 0, i32 9
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @AR_FrameType, align 4
  %456 = call i32 @SM(i32 %454, i32 %455)
  %457 = or i32 %451, %456
  %458 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %459 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %458, i32 0, i32 6
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @ATH9K_TXDESC_NOACK, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %450
  %465 = load i32, i32* @AR_NoAck, align 4
  br label %467

466:                                              ; preds = %450
  br label %467

467:                                              ; preds = %466, %464
  %468 = phi i32 [ %465, %464 ], [ 0, %466 ]
  %469 = or i32 %457, %468
  %470 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %471 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @ATH9K_TXDESC_EXT_ONLY, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %467
  %477 = load i32, i32* @AR_ExtOnly, align 4
  br label %479

478:                                              ; preds = %467
  br label %479

479:                                              ; preds = %478, %476
  %480 = phi i32 [ %477, %476 ], [ 0, %478 ]
  %481 = or i32 %469, %480
  %482 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %483 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %482, i32 0, i32 6
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @ATH9K_TXDESC_EXT_AND_CTL, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %479
  %489 = load i32, i32* @AR_ExtAndCtl, align 4
  br label %491

490:                                              ; preds = %479
  br label %491

491:                                              ; preds = %490, %488
  %492 = phi i32 [ %489, %488 ], [ 0, %490 ]
  %493 = or i32 %481, %492
  store i32 %493, i32* %10, align 4
  %494 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %495 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %494, i32 0, i32 6
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @ATH9K_TXDESC_LDPC, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %491
  %501 = load i32, i32* @AR_LDPC, align 4
  br label %503

502:                                              ; preds = %491
  br label %503

503:                                              ; preds = %502, %500
  %504 = phi i32 [ %501, %500 ], [ 0, %502 ]
  %505 = load i32, i32* %11, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %11, align 4
  %507 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %508 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %507, i32 0, i32 10
  %509 = load i32, i32* %508, align 4
  switch i32 %509, label %536 [
    i32 131, label %510
    i32 129, label %518
    i32 130, label %531
    i32 128, label %535
  ]

510:                                              ; preds = %503
  %511 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %512 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %511, i32 0, i32 11
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* @AR_AggrLen, align 4
  %515 = call i32 @SM(i32 %513, i32 %514)
  %516 = load i32, i32* %11, align 4
  %517 = or i32 %516, %515
  store i32 %517, i32* %11, align 4
  br label %518

518:                                              ; preds = %503, %510
  %519 = load i32, i32* @AR_IsAggr, align 4
  %520 = load i32, i32* @AR_MoreAggr, align 4
  %521 = or i32 %519, %520
  %522 = load i32, i32* %10, align 4
  %523 = or i32 %522, %521
  store i32 %523, i32* %10, align 4
  %524 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %525 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %524, i32 0, i32 12
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @AR_PadDelim, align 4
  %528 = call i32 @SM(i32 %526, i32 %527)
  %529 = load i32, i32* %11, align 4
  %530 = or i32 %529, %528
  store i32 %530, i32* %11, align 4
  br label %536

531:                                              ; preds = %503
  %532 = load i32, i32* @AR_IsAggr, align 4
  %533 = load i32, i32* %10, align 4
  %534 = or i32 %533, %532
  store i32 %534, i32* %10, align 4
  br label %536

535:                                              ; preds = %503
  br label %536

536:                                              ; preds = %503, %535, %531, %518
  %537 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %538 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %537, i32 0, i32 6
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @ATH9K_TXDESC_PAPRD, align 4
  %541 = and i32 %539, %540
  %542 = load i32, i32* @ATH9K_TXDESC_PAPRD_S, align 4
  %543 = ashr i32 %541, %542
  store i32 %543, i32* %9, align 4
  %544 = load i32, i32* %9, align 4
  %545 = load i32, i32* @AR_PAPRDChainMask, align 4
  %546 = call i32 @SM(i32 %544, i32 %545)
  %547 = load i32, i32* %10, align 4
  %548 = or i32 %547, %546
  store i32 %548, i32* %10, align 4
  %549 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %550 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %549, i32 0, i32 8
  %551 = load i64, i64* %550, align 8
  %552 = load i32, i32* %10, align 4
  %553 = call i32 @WRITE_ONCE(i64 %551, i32 %552)
  %554 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %555 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %554, i32 0, i32 7
  %556 = load i64, i64* %555, align 8
  %557 = load i32, i32* %11, align 4
  %558 = call i32 @WRITE_ONCE(i64 %556, i32 %557)
  %559 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %560 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %559, i32 0, i32 6
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %563 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %562, i32 0, i32 14
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @set11nPktDurRTSCTS(i32 %564, i32 0)
  %566 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %567 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %566, i32 0, i32 14
  %568 = load i32, i32* %567, align 4
  %569 = call i32 @set11nPktDurRTSCTS(i32 %568, i32 1)
  %570 = or i32 %565, %569
  %571 = call i32 @WRITE_ONCE(i64 %561, i32 %570)
  %572 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %573 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %572, i32 0, i32 5
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %576 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %575, i32 0, i32 14
  %577 = load i32, i32* %576, align 4
  %578 = call i32 @set11nPktDurRTSCTS(i32 %577, i32 2)
  %579 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %580 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %579, i32 0, i32 14
  %581 = load i32, i32* %580, align 4
  %582 = call i32 @set11nPktDurRTSCTS(i32 %581, i32 3)
  %583 = or i32 %578, %582
  %584 = call i32 @WRITE_ONCE(i64 %574, i32 %583)
  %585 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %586 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %585, i32 0, i32 4
  %587 = load i64, i64* %586, align 8
  %588 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %589 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %588, i32 0, i32 14
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @set11nRateFlags(i32 %590, i32 0)
  %592 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %593 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %592, i32 0, i32 14
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @set11nRateFlags(i32 %594, i32 1)
  %596 = or i32 %591, %595
  %597 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %598 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %597, i32 0, i32 14
  %599 = load i32, i32* %598, align 4
  %600 = call i32 @set11nRateFlags(i32 %599, i32 2)
  %601 = or i32 %596, %600
  %602 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %603 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %602, i32 0, i32 14
  %604 = load i32, i32* %603, align 4
  %605 = call i32 @set11nRateFlags(i32 %604, i32 3)
  %606 = or i32 %601, %605
  %607 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %608 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %607, i32 0, i32 13
  %609 = load i32, i32* %608, align 8
  %610 = load i32, i32* @AR_RTSCTSRate, align 4
  %611 = call i32 @SM(i32 %609, i32 %610)
  %612 = or i32 %606, %611
  %613 = call i32 @WRITE_ONCE(i64 %587, i32 %612)
  %614 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %615 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %614, i32 0, i32 3
  %616 = load i64, i64* %615, align 8
  %617 = load i32, i32* @AR_Not_Sounding, align 4
  %618 = call i32 @WRITE_ONCE(i64 %616, i32 %617)
  %619 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %620 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %619, i32 0, i32 2
  %621 = load i64, i64* %620, align 8
  %622 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %623 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %622, i32 0, i32 7
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 1
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @AR_XmitPower1, align 4
  %628 = call i32 @SM(i32 %626, i32 %627)
  %629 = call i32 @WRITE_ONCE(i64 %621, i32 %628)
  %630 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %631 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %630, i32 0, i32 1
  %632 = load i64, i64* %631, align 8
  %633 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %634 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %633, i32 0, i32 7
  %635 = load i32*, i32** %634, align 8
  %636 = getelementptr inbounds i32, i32* %635, i64 2
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* @AR_XmitPower2, align 4
  %639 = call i32 @SM(i32 %637, i32 %638)
  %640 = call i32 @WRITE_ONCE(i64 %632, i32 %639)
  %641 = load %struct.ar9003_txc*, %struct.ar9003_txc** %7, align 8
  %642 = getelementptr inbounds %struct.ar9003_txc, %struct.ar9003_txc* %641, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %645 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %644, i32 0, i32 7
  %646 = load i32*, i32** %645, align 8
  %647 = getelementptr inbounds i32, i32* %646, i64 3
  %648 = load i32, i32* %647, align 4
  %649 = load i32, i32* @AR_XmitPower3, align 4
  %650 = call i32 @SM(i32 %648, i32 %649)
  %651 = call i32 @WRITE_ONCE(i64 %643, i32 %650)
  br label %652

652:                                              ; preds = %536, %313
  ret void
}

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @WRITE_ONCE(i64, i32) #1

declare dso_local i32 @set11nTries(i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @set11nRate(i32, i32) #1

declare dso_local i32 @set11nPktDurRTSCTS(i32, i32) #1

declare dso_local i32 @set11nRateFlags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
