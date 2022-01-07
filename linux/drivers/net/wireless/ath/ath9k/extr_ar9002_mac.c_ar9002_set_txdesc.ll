; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ar9002_set_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ar9002_set_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_tx_info = type { i32, i32*, i32*, i64, i32, i64, i64, i32, i64, i64, i32, i64*, i64, i32, i64, i64, i64 }
%struct.ar5416_desc = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@AR_TxMore = common dso_local global i32 0, align 4
@AR_EncrType = common dso_local global i32 0, align 4
@AR_DurUpdateEna = common dso_local global i32 0, align 4
@AR_BurstDur = common dso_local global i32 0, align 4
@ATH9K_TXKEYIX_INVALID = common dso_local global i64 0, align 8
@AR_DestIdx = common dso_local global i32 0, align 4
@AR_FrameType = common dso_local global i32 0, align 4
@ATH9K_TXDESC_NOACK = common dso_local global i32 0, align 4
@AR_NoAck = common dso_local global i32 0, align 4
@ATH9K_TXDESC_EXT_ONLY = common dso_local global i32 0, align 4
@AR_ExtOnly = common dso_local global i32 0, align 4
@ATH9K_TXDESC_EXT_AND_CTL = common dso_local global i32 0, align 4
@AR_ExtAndCtl = common dso_local global i32 0, align 4
@AR_AggrLen = common dso_local global i32 0, align 4
@AR_IsAggr = common dso_local global i32 0, align 4
@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@AR_FrameLen = common dso_local global i32 0, align 4
@ATH9K_TXDESC_VMF = common dso_local global i32 0, align 4
@AR_VirtMoreFrag = common dso_local global i32 0, align 4
@AR_XmitPower0 = common dso_local global i32 0, align 4
@ATH9K_TXDESC_VEOL = common dso_local global i32 0, align 4
@AR_VEOL = common dso_local global i32 0, align 4
@ATH9K_TXDESC_INTREQ = common dso_local global i32 0, align 4
@AR_TxIntrReq = common dso_local global i32 0, align 4
@AR_DestIdxValid = common dso_local global i32 0, align 4
@ATH9K_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@AR_ClrDestMask = common dso_local global i32 0, align 4
@ATH9K_TXDESC_RTSENA = common dso_local global i32 0, align 4
@AR_RTSEnable = common dso_local global i32 0, align 4
@ATH9K_TXDESC_CTSENA = common dso_local global i32 0, align 4
@AR_CTSEnable = common dso_local global i32 0, align 4
@AR_RTSCTSRate = common dso_local global i32 0, align 4
@AR_XmitPower1 = common dso_local global i32 0, align 4
@AR_XmitPower2 = common dso_local global i32 0, align 4
@AR_XmitPower3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i8*, %struct.ath_tx_info*)* @ar9002_set_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_set_txdesc(%struct.ath_hw* %0, i8* %1, %struct.ath_tx_info* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath_tx_info*, align 8
  %7 = alloca %struct.ar5416_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ath_tx_info* %2, %struct.ath_tx_info** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.ar5416_desc* @AR5416DESC(i8* %10)
  store %struct.ar5416_desc* %11, %struct.ar5416_desc** %7, align 8
  %12 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %13 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %12, i32 0, i32 22
  store i64 0, i64* %13, align 8
  %14 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %15 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %14, i32 0, i32 23
  store i64 0, i64* %15, align 8
  %16 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %17 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %16, i32 0, i32 20
  store i64 0, i64* %17, align 8
  %18 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %19 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %18, i32 0, i32 21
  store i64 0, i64* %19, align 8
  %20 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %21 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %20, i32 0, i32 18
  store i64 0, i64* %21, align 8
  %22 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %23 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %22, i32 0, i32 19
  store i64 0, i64* %23, align 8
  %24 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %25 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %24, i32 0, i32 16
  store i64 0, i64* %25, align 8
  %26 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %26, i32 0, i32 17
  store i64 0, i64* %27, align 8
  %28 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %29 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %28, i32 0, i32 14
  store i64 0, i64* %29, align 8
  %30 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %31 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %30, i32 0, i32 15
  store i64 0, i64* %31, align 8
  %32 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %33 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %36 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @WRITE_ONCE(i64 %34, i32 %37)
  %39 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %40 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %43 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WRITE_ONCE(i64 %41, i32 %46)
  %48 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %49 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %54 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %53, i32 0, i32 16
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %3
  br label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @AR_TxMore, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  %62 = or i32 %52, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %64 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @AR_EncrType, align 4
  %67 = call i32 @SM(i64 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = call i64 @AR_SREV_9285(%struct.ath_hw* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %60
  %72 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %73 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %72, i32 0, i32 11
  store i64 0, i64* %73, align 8
  %74 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %75 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %77 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %79 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %60
  %81 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %82 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %81, i32 0, i32 14
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %87 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %86, i32 0, i32 16
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %160

90:                                               ; preds = %85, %80
  %91 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %92 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 129
  br i1 %94, label %95, label %160

95:                                               ; preds = %90
  %96 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %97 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 130
  br i1 %99, label %100, label %160

100:                                              ; preds = %95
  %101 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %102 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %101, i32 0, i32 10
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %105 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @set11nTries(i32 %106, i32 0)
  %108 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %109 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @set11nTries(i32 %110, i32 1)
  %112 = or i32 %107, %111
  %113 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %114 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @set11nTries(i32 %115, i32 2)
  %117 = or i32 %112, %116
  %118 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %119 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %118, i32 0, i32 13
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @set11nTries(i32 %120, i32 3)
  %122 = or i32 %117, %121
  %123 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %124 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %123, i32 0, i32 15
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %100
  %128 = load i32, i32* @AR_DurUpdateEna, align 4
  br label %130

129:                                              ; preds = %100
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = or i32 %122, %131
  %133 = load i32, i32* @AR_BurstDur, align 4
  %134 = call i32 @SM(i64 0, i32 %133)
  %135 = or i32 %132, %134
  %136 = call i32 @WRITE_ONCE(i64 %103, i32 %135)
  %137 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %138 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %141 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %140, i32 0, i32 13
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @set11nRate(i32 %142, i32 0)
  %144 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %145 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @set11nRate(i32 %146, i32 1)
  %148 = or i32 %143, %147
  %149 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %150 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %149, i32 0, i32 13
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @set11nRate(i32 %151, i32 2)
  %153 = or i32 %148, %152
  %154 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %155 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @set11nRate(i32 %156, i32 3)
  %158 = or i32 %153, %157
  %159 = call i32 @WRITE_ONCE(i64 %139, i32 %158)
  br label %169

160:                                              ; preds = %95, %90, %85
  %161 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %162 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @WRITE_ONCE(i64 %163, i32 0)
  %165 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %166 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %165, i32 0, i32 9
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @WRITE_ONCE(i64 %167, i32 0)
  br label %169

169:                                              ; preds = %160, %130
  %170 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %171 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %170, i32 0, i32 14
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %189, label %174

174:                                              ; preds = %169
  %175 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %176 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %175, i32 0, i32 8
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @WRITE_ONCE(i64 %177, i32 0)
  %179 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %180 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @WRITE_ONCE(i64 %181, i32 %182)
  %184 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %185 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @WRITE_ONCE(i64 %186, i32 %187)
  br label %486

189:                                              ; preds = %169
  %190 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %191 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ATH9K_TXKEYIX_INVALID, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %197 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @AR_DestIdx, align 4
  %200 = call i32 @SM(i64 %198, i32 %199)
  br label %202

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %195
  %203 = phi i32 [ %200, %195 ], [ 0, %201 ]
  %204 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %205 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @AR_FrameType, align 4
  %208 = call i32 @SM(i64 %206, i32 %207)
  %209 = or i32 %203, %208
  %210 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %211 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ATH9K_TXDESC_NOACK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %202
  %217 = load i32, i32* @AR_NoAck, align 4
  br label %219

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218, %216
  %220 = phi i32 [ %217, %216 ], [ 0, %218 ]
  %221 = or i32 %209, %220
  %222 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %223 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ATH9K_TXDESC_EXT_ONLY, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* @AR_ExtOnly, align 4
  br label %231

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %228
  %232 = phi i32 [ %229, %228 ], [ 0, %230 ]
  %233 = or i32 %221, %232
  %234 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %235 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ATH9K_TXDESC_EXT_AND_CTL, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i32, i32* @AR_ExtAndCtl, align 4
  br label %243

242:                                              ; preds = %231
  br label %243

243:                                              ; preds = %242, %240
  %244 = phi i32 [ %241, %240 ], [ 0, %242 ]
  %245 = or i32 %233, %244
  %246 = load i32, i32* %8, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %8, align 4
  %248 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %249 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  switch i32 %250, label %277 [
    i32 131, label %251
    i32 129, label %259
    i32 130, label %272
    i32 128, label %276
  ]

251:                                              ; preds = %243
  %252 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %253 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* @AR_AggrLen, align 4
  %256 = call i32 @SM(i64 %254, i32 %255)
  %257 = load i32, i32* %9, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %243, %251
  %260 = load i32, i32* @AR_IsAggr, align 4
  %261 = load i32, i32* @AR_MoreAggr, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* %8, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %8, align 4
  %265 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %266 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %265, i32 0, i32 9
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* @AR_PadDelim, align 4
  %269 = call i32 @SM(i64 %267, i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %9, align 4
  br label %277

272:                                              ; preds = %243
  %273 = load i32, i32* @AR_IsAggr, align 4
  %274 = load i32, i32* %8, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %8, align 4
  br label %277

276:                                              ; preds = %243
  br label %277

277:                                              ; preds = %243, %276, %272, %259
  %278 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %279 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %282 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @AR_FrameLen, align 4
  %285 = and i32 %283, %284
  %286 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %287 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @ATH9K_TXDESC_VMF, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %277
  %293 = load i32, i32* @AR_VirtMoreFrag, align 4
  br label %295

294:                                              ; preds = %277
  br label %295

295:                                              ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ]
  %297 = or i32 %285, %296
  %298 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %299 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %298, i32 0, i32 11
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 0
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* @AR_XmitPower0, align 4
  %304 = call i32 @SM(i64 %302, i32 %303)
  %305 = or i32 %297, %304
  %306 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %307 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @ATH9K_TXDESC_VEOL, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %295
  %313 = load i32, i32* @AR_VEOL, align 4
  br label %315

314:                                              ; preds = %295
  br label %315

315:                                              ; preds = %314, %312
  %316 = phi i32 [ %313, %312 ], [ 0, %314 ]
  %317 = or i32 %305, %316
  %318 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %319 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @ATH9K_TXDESC_INTREQ, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %315
  %325 = load i32, i32* @AR_TxIntrReq, align 4
  br label %327

326:                                              ; preds = %315
  br label %327

327:                                              ; preds = %326, %324
  %328 = phi i32 [ %325, %324 ], [ 0, %326 ]
  %329 = or i32 %317, %328
  %330 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %331 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @ATH9K_TXKEYIX_INVALID, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %327
  %336 = load i32, i32* @AR_DestIdxValid, align 4
  br label %338

337:                                              ; preds = %327
  br label %338

338:                                              ; preds = %337, %335
  %339 = phi i32 [ %336, %335 ], [ 0, %337 ]
  %340 = or i32 %329, %339
  %341 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %342 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @ATH9K_TXDESC_CLRDMASK, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %338
  %348 = load i32, i32* @AR_ClrDestMask, align 4
  br label %350

349:                                              ; preds = %338
  br label %350

350:                                              ; preds = %349, %347
  %351 = phi i32 [ %348, %347 ], [ 0, %349 ]
  %352 = or i32 %340, %351
  %353 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %354 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @ATH9K_TXDESC_RTSENA, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %350
  %360 = load i32, i32* @AR_RTSEnable, align 4
  br label %373

361:                                              ; preds = %350
  %362 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %363 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @ATH9K_TXDESC_CTSENA, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = load i32, i32* @AR_CTSEnable, align 4
  br label %371

370:                                              ; preds = %361
  br label %371

371:                                              ; preds = %370, %368
  %372 = phi i32 [ %369, %368 ], [ 0, %370 ]
  br label %373

373:                                              ; preds = %371, %359
  %374 = phi i32 [ %360, %359 ], [ %372, %371 ]
  %375 = or i32 %352, %374
  %376 = call i32 @WRITE_ONCE(i64 %280, i32 %375)
  %377 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %378 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %377, i32 0, i32 7
  %379 = load i64, i64* %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = call i32 @WRITE_ONCE(i64 %379, i32 %380)
  %382 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %383 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %382, i32 0, i32 6
  %384 = load i64, i64* %383, align 8
  %385 = load i32, i32* %9, align 4
  %386 = call i32 @WRITE_ONCE(i64 %384, i32 %385)
  %387 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %388 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %389, 129
  br i1 %390, label %396, label %391

391:                                              ; preds = %373
  %392 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %393 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = icmp eq i32 %394, 130
  br i1 %395, label %396, label %397

396:                                              ; preds = %391, %373
  br label %486

397:                                              ; preds = %391
  %398 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %399 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %398, i32 0, i32 5
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %402 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %401, i32 0, i32 13
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @set11nPktDurRTSCTS(i32 %403, i32 0)
  %405 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %406 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %405, i32 0, i32 13
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @set11nPktDurRTSCTS(i32 %407, i32 1)
  %409 = or i32 %404, %408
  %410 = call i32 @WRITE_ONCE(i64 %400, i32 %409)
  %411 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %412 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %411, i32 0, i32 4
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %415 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %414, i32 0, i32 13
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @set11nPktDurRTSCTS(i32 %416, i32 2)
  %418 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %419 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %418, i32 0, i32 13
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @set11nPktDurRTSCTS(i32 %420, i32 3)
  %422 = or i32 %417, %421
  %423 = call i32 @WRITE_ONCE(i64 %413, i32 %422)
  %424 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %425 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %428 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %427, i32 0, i32 13
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @set11nRateFlags(i32 %429, i32 0)
  %431 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %432 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %431, i32 0, i32 13
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @set11nRateFlags(i32 %433, i32 1)
  %435 = or i32 %430, %434
  %436 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %437 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %436, i32 0, i32 13
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @set11nRateFlags(i32 %438, i32 2)
  %440 = or i32 %435, %439
  %441 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %442 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %441, i32 0, i32 13
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @set11nRateFlags(i32 %443, i32 3)
  %445 = or i32 %440, %444
  %446 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %447 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %446, i32 0, i32 12
  %448 = load i64, i64* %447, align 8
  %449 = load i32, i32* @AR_RTSCTSRate, align 4
  %450 = call i32 @SM(i64 %448, i32 %449)
  %451 = or i32 %445, %450
  %452 = call i32 @WRITE_ONCE(i64 %426, i32 %451)
  %453 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %454 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %457 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %456, i32 0, i32 11
  %458 = load i64*, i64** %457, align 8
  %459 = getelementptr inbounds i64, i64* %458, i64 1
  %460 = load i64, i64* %459, align 8
  %461 = load i32, i32* @AR_XmitPower1, align 4
  %462 = call i32 @SM(i64 %460, i32 %461)
  %463 = call i32 @WRITE_ONCE(i64 %455, i32 %462)
  %464 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %465 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %468 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %467, i32 0, i32 11
  %469 = load i64*, i64** %468, align 8
  %470 = getelementptr inbounds i64, i64* %469, i64 2
  %471 = load i64, i64* %470, align 8
  %472 = load i32, i32* @AR_XmitPower2, align 4
  %473 = call i32 @SM(i64 %471, i32 %472)
  %474 = call i32 @WRITE_ONCE(i64 %466, i32 %473)
  %475 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %476 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.ath_tx_info*, %struct.ath_tx_info** %6, align 8
  %479 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %478, i32 0, i32 11
  %480 = load i64*, i64** %479, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 3
  %482 = load i64, i64* %481, align 8
  %483 = load i32, i32* @AR_XmitPower3, align 4
  %484 = call i32 @SM(i64 %482, i32 %483)
  %485 = call i32 @WRITE_ONCE(i64 %477, i32 %484)
  br label %486

486:                                              ; preds = %397, %396, %174
  ret void
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(i8*) #1

declare dso_local i32 @WRITE_ONCE(i64, i32) #1

declare dso_local i32 @SM(i64, i32) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i32 @set11nTries(i32, i32) #1

declare dso_local i32 @set11nRate(i32, i32) #1

declare dso_local i32 @set11nPktDurRTSCTS(i32, i32) #1

declare dso_local i32 @set11nRateFlags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
