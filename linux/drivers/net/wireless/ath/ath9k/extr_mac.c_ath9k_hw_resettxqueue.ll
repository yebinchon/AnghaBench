; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_resettxqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_resettxqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ath9k_tx_queue_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ath9k_tx_queue_info = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32 }
%struct.ath_common = type { i32 }

@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Reset TXQ, inactive queue: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Reset TX queue: %u\0A\00", align 1
@ATH9K_TXQ_USEDEFAULT = common dso_local global i64 0, align 8
@INIT_CWMIN = common dso_local global i64 0, align 8
@AR_D_LCL_IFS_CWMIN = common dso_local global i32 0, align 4
@AR_D_LCL_IFS_CWMAX = common dso_local global i32 0, align 4
@AR_D_LCL_IFS_AIFS = common dso_local global i32 0, align 4
@INIT_SSH_RETRY = common dso_local global i64 0, align 8
@AR_D_RETRY_LIMIT_STA_SH = common dso_local global i32 0, align 4
@INIT_SLG_RETRY = common dso_local global i64 0, align 8
@AR_D_RETRY_LIMIT_STA_LG = common dso_local global i32 0, align 4
@AR_D_RETRY_LIMIT_FR_SH = common dso_local global i32 0, align 4
@AR_Q_MISC_DCU_EARLY_TERM_REQ = common dso_local global i64 0, align 8
@AR_D_MISC_CW_BKOFF_EN = common dso_local global i32 0, align 4
@AR_D_MISC_FRAG_WAIT_EN = common dso_local global i32 0, align 4
@AR_Q_CBRCFG_INTERVAL = common dso_local global i32 0, align 4
@AR_Q_CBRCFG_OVF_THRESH = common dso_local global i32 0, align 4
@AR_Q_MISC_FSP_CBR = common dso_local global i64 0, align 8
@AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN = common dso_local global i64 0, align 8
@AR_Q_RDYTIMECFG_DURATION = common dso_local global i32 0, align 4
@AR_Q_RDYTIMECFG_EN = common dso_local global i64 0, align 8
@AR_D_CHNTIME_DUR = common dso_local global i32 0, align 4
@AR_D_CHNTIME_EN = common dso_local global i64 0, align 8
@TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE = common dso_local global i32 0, align 4
@AR_Q_MISC_RDYTIME_EXP_POLICY = common dso_local global i64 0, align 8
@TXQ_FLAG_BACKOFF_DISABLE = common dso_local global i32 0, align 4
@AR_D_MISC_POST_FR_BKOFF_DIS = common dso_local global i64 0, align 8
@TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE = common dso_local global i32 0, align 4
@AR_D_MISC_FRAG_BKOFF_EN = common dso_local global i64 0, align 8
@AR_Q_MISC_FSP_DBA_GATED = common dso_local global i64 0, align 8
@AR_Q_MISC_BEACON_USE = common dso_local global i64 0, align 8
@AR_Q_MISC_CBR_INCR_DIS1 = common dso_local global i64 0, align 8
@AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL = common dso_local global i64 0, align 8
@AR_D_MISC_ARB_LOCKOUT_CNTRL_S = common dso_local global i64 0, align 8
@AR_D_MISC_BEACON_USE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@AR_Q_MISC_CBR_INCR_DIS0 = common dso_local global i64 0, align 8
@ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS = common dso_local global i32 0, align 4
@AR_D_MISC_ARB_LOCKOUT_CNTRL = common dso_local global i32 0, align 4
@AR_Q_DESC_CRCCHK = common dso_local global i32 0, align 4
@AR_Q_DESC_CRCCHK_EN = common dso_local global i64 0, align 8
@TXQ_FLAG_TXINT_ENABLE = common dso_local global i32 0, align 4
@TXQ_FLAG_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@TXQ_FLAG_TXEOLINT_ENABLE = common dso_local global i32 0, align 4
@TXQ_FLAG_TXURNINT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_tx_queue_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 7
  %15 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %15, i64 %16
  store %struct.ath9k_tx_queue_info* %17, %struct.ath9k_tx_queue_info** %7, align 8
  %18 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %19 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ATH9K_TX_QUEUE_INACTIVE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %25 = load i32, i32* @QUEUE, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ath_dbg(%struct.ath_common* %24, i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 1, i32* %3, align 4
  br label %459

28:                                               ; preds = %2
  %29 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %30 = load i32, i32* @QUEUE, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @ath_dbg(%struct.ath_common* %29, i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %34 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATH9K_TXQ_USEDEFAULT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load i64, i64* @INIT_CWMIN, align 8
  store i64 %39, i64* %9, align 8
  store i64 1, i64* %8, align 8
  br label %40

40:                                               ; preds = %45, %38
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = shl i64 %46, 1
  %48 = or i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %40

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %28
  %51 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %52 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %56 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @AR_DLCL_IFS(i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @AR_D_LCL_IFS_CWMIN, align 4
  %62 = call i64 @SM(i64 %60, i32 %61)
  %63 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %64 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @AR_D_LCL_IFS_CWMAX, align 4
  %67 = call i64 @SM(i64 %65, i32 %66)
  %68 = or i64 %62, %67
  %69 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %70 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @AR_D_LCL_IFS_AIFS, align 4
  %73 = call i64 @SM(i64 %71, i32 %72)
  %74 = or i64 %68, %73
  %75 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %59, i64 %74)
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @AR_DRETRY_LIMIT(i64 %77)
  %79 = load i64, i64* @INIT_SSH_RETRY, align 8
  %80 = load i32, i32* @AR_D_RETRY_LIMIT_STA_SH, align 4
  %81 = call i64 @SM(i64 %79, i32 %80)
  %82 = load i64, i64* @INIT_SLG_RETRY, align 8
  %83 = load i32, i32* @AR_D_RETRY_LIMIT_STA_LG, align 4
  %84 = call i64 @SM(i64 %82, i32 %83)
  %85 = or i64 %81, %84
  %86 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %87 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @AR_D_RETRY_LIMIT_FR_SH, align 4
  %90 = call i64 @SM(i64 %88, i32 %89)
  %91 = or i64 %85, %90
  %92 = call i32 @REG_WRITE(%struct.ath_hw* %76, i32 %78, i64 %91)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @AR_QMISC(i64 %94)
  %96 = load i64, i64* @AR_Q_MISC_DCU_EARLY_TERM_REQ, align 8
  %97 = call i32 @REG_WRITE(%struct.ath_hw* %93, i32 %95, i64 %96)
  %98 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %99 = call i64 @AR_SREV_9340(%struct.ath_hw* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %54
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = call i32 @AR_SREV_9340_13_OR_LATER(%struct.ath_hw* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @AR_DMISC(i64 %107)
  %109 = load i32, i32* @AR_D_MISC_CW_BKOFF_EN, align 4
  %110 = load i32, i32* @AR_D_MISC_FRAG_WAIT_EN, align 4
  %111 = or i32 %109, %110
  %112 = or i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = call i32 @REG_WRITE(%struct.ath_hw* %106, i32 %108, i64 %113)
  br label %125

115:                                              ; preds = %101, %54
  %116 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @AR_DMISC(i64 %117)
  %119 = load i32, i32* @AR_D_MISC_CW_BKOFF_EN, align 4
  %120 = load i32, i32* @AR_D_MISC_FRAG_WAIT_EN, align 4
  %121 = or i32 %119, %120
  %122 = or i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = call i32 @REG_WRITE(%struct.ath_hw* %116, i32 %118, i64 %123)
  br label %125

125:                                              ; preds = %115, %105
  %126 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %127 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %125
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @AR_QCBRCFG(i64 %132)
  %134 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %135 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* @AR_Q_CBRCFG_INTERVAL, align 4
  %139 = call i64 @SM(i64 %137, i32 %138)
  %140 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %141 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @AR_Q_CBRCFG_OVF_THRESH, align 4
  %144 = call i64 @SM(i64 %142, i32 %143)
  %145 = or i64 %139, %144
  %146 = call i32 @REG_WRITE(%struct.ath_hw* %131, i32 %133, i64 %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @AR_QMISC(i64 %148)
  %150 = load i64, i64* @AR_Q_MISC_FSP_CBR, align 8
  %151 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %152 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %130
  %156 = load i64, i64* @AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN, align 8
  br label %158

157:                                              ; preds = %130
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i64 [ %156, %155 ], [ 0, %157 ]
  %160 = or i64 %150, %159
  %161 = call i32 @REG_SET_BIT(%struct.ath_hw* %147, i32 %149, i64 %160)
  br label %162

162:                                              ; preds = %158, %125
  %163 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %164 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %162
  %168 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %169 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 130
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = load i64, i64* %5, align 8
  %175 = call i32 @AR_QRDYTIMECFG(i64 %174)
  %176 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %177 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @AR_Q_RDYTIMECFG_DURATION, align 4
  %180 = call i64 @SM(i64 %178, i32 %179)
  %181 = load i64, i64* @AR_Q_RDYTIMECFG_EN, align 8
  %182 = or i64 %180, %181
  %183 = call i32 @REG_WRITE(%struct.ath_hw* %173, i32 %175, i64 %182)
  br label %184

184:                                              ; preds = %172, %167, %162
  %185 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %186 = load i64, i64* %5, align 8
  %187 = call i32 @AR_DCHNTIME(i64 %186)
  %188 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %189 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @AR_D_CHNTIME_DUR, align 4
  %192 = call i64 @SM(i64 %190, i32 %191)
  %193 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %194 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %184
  %198 = load i64, i64* @AR_D_CHNTIME_EN, align 8
  br label %200

199:                                              ; preds = %184
  br label %200

200:                                              ; preds = %199, %197
  %201 = phi i64 [ %198, %197 ], [ 0, %199 ]
  %202 = or i64 %192, %201
  %203 = call i32 @REG_WRITE(%struct.ath_hw* %185, i32 %187, i64 %202)
  %204 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %205 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %204, i32 0, i32 8
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %200
  %209 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %210 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %217 = load i64, i64* %5, align 8
  %218 = call i32 @AR_QMISC(i64 %217)
  %219 = load i64, i64* @AR_Q_MISC_RDYTIME_EXP_POLICY, align 8
  %220 = call i32 @REG_SET_BIT(%struct.ath_hw* %216, i32 %218, i64 %219)
  br label %221

221:                                              ; preds = %215, %208, %200
  %222 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %223 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @TXQ_FLAG_BACKOFF_DISABLE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %230 = load i64, i64* %5, align 8
  %231 = call i32 @AR_DMISC(i64 %230)
  %232 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %233 = call i32 @REG_SET_BIT(%struct.ath_hw* %229, i32 %231, i64 %232)
  br label %234

234:                                              ; preds = %228, %221
  %235 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %236 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %235)
  %237 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %238 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %234
  %244 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %245 = load i64, i64* %5, align 8
  %246 = call i32 @AR_DMISC(i64 %245)
  %247 = load i64, i64* @AR_D_MISC_FRAG_BKOFF_EN, align 8
  %248 = call i32 @REG_SET_BIT(%struct.ath_hw* %244, i32 %246, i64 %247)
  br label %249

249:                                              ; preds = %243, %234
  %250 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %251 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  switch i32 %252, label %358 [
    i32 131, label %253
    i32 130, label %304
    i32 129, label %346
    i32 128, label %352
  ]

253:                                              ; preds = %249
  %254 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %255 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %254)
  %256 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %257 = load i64, i64* %5, align 8
  %258 = call i32 @AR_QMISC(i64 %257)
  %259 = load i64, i64* @AR_Q_MISC_FSP_DBA_GATED, align 8
  %260 = load i64, i64* @AR_Q_MISC_BEACON_USE, align 8
  %261 = or i64 %259, %260
  %262 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS1, align 8
  %263 = or i64 %261, %262
  %264 = call i32 @REG_SET_BIT(%struct.ath_hw* %256, i32 %258, i64 %263)
  %265 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %266 = load i64, i64* %5, align 8
  %267 = call i32 @AR_DMISC(i64 %266)
  %268 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL, align 8
  %269 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_S, align 8
  %270 = shl i64 %268, %269
  %271 = load i64, i64* @AR_D_MISC_BEACON_USE, align 8
  %272 = or i64 %270, %271
  %273 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %274 = or i64 %272, %273
  %275 = call i32 @REG_SET_BIT(%struct.ath_hw* %265, i32 %267, i64 %274)
  %276 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %277 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %276)
  %278 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %279 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %303

281:                                              ; preds = %253
  %282 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %283 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %281
  %288 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %289 = load i64, i64* %5, align 8
  %290 = call i32 @AR_DLCL_IFS(i64 %289)
  %291 = load i32, i32* @AR_D_LCL_IFS_CWMIN, align 4
  %292 = call i64 @SM(i64 0, i32 %291)
  %293 = load i32, i32* @AR_D_LCL_IFS_CWMAX, align 4
  %294 = call i64 @SM(i64 0, i32 %293)
  %295 = or i64 %292, %294
  %296 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %297 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* @AR_D_LCL_IFS_AIFS, align 4
  %300 = call i64 @SM(i64 %298, i32 %299)
  %301 = or i64 %295, %300
  %302 = call i32 @REG_WRITE(%struct.ath_hw* %288, i32 %290, i64 %301)
  br label %303

303:                                              ; preds = %287, %281, %253
  br label %359

304:                                              ; preds = %249
  %305 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %306 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %305)
  %307 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %308 = load i64, i64* %5, align 8
  %309 = call i32 @AR_QMISC(i64 %308)
  %310 = load i64, i64* @AR_Q_MISC_FSP_DBA_GATED, align 8
  %311 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS1, align 8
  %312 = or i64 %310, %311
  %313 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS0, align 8
  %314 = or i64 %312, %313
  %315 = call i32 @REG_SET_BIT(%struct.ath_hw* %307, i32 %309, i64 %314)
  %316 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %317 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %316, i32 0, i32 7
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %320 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %324 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = sub nsw i64 %322, %326
  %328 = sub i64 %318, %327
  %329 = mul i64 %328, 1024
  store i64 %329, i64* %10, align 8
  %330 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %331 = load i64, i64* %5, align 8
  %332 = call i32 @AR_QRDYTIMECFG(i64 %331)
  %333 = load i64, i64* %10, align 8
  %334 = load i64, i64* @AR_Q_RDYTIMECFG_EN, align 8
  %335 = or i64 %333, %334
  %336 = call i32 @REG_WRITE(%struct.ath_hw* %330, i32 %332, i64 %335)
  %337 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %338 = load i64, i64* %5, align 8
  %339 = call i32 @AR_DMISC(i64 %338)
  %340 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL, align 8
  %341 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_S, align 8
  %342 = shl i64 %340, %341
  %343 = call i32 @REG_SET_BIT(%struct.ath_hw* %337, i32 %339, i64 %342)
  %344 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %345 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %344)
  br label %359

346:                                              ; preds = %249
  %347 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %348 = load i64, i64* %5, align 8
  %349 = call i32 @AR_QMISC(i64 %348)
  %350 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS1, align 8
  %351 = call i32 @REG_SET_BIT(%struct.ath_hw* %347, i32 %349, i64 %350)
  br label %359

352:                                              ; preds = %249
  %353 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %354 = load i64, i64* %5, align 8
  %355 = call i32 @AR_DMISC(i64 %354)
  %356 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %357 = call i32 @REG_SET_BIT(%struct.ath_hw* %353, i32 %355, i64 %356)
  br label %359

358:                                              ; preds = %249
  br label %359

359:                                              ; preds = %358, %352, %346, %304, %303
  %360 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %361 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %360, i32 0, i32 10
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %359
  %367 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %368 = load i64, i64* %5, align 8
  %369 = call i32 @AR_DMISC(i64 %368)
  %370 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL, align 8
  %371 = load i32, i32* @AR_D_MISC_ARB_LOCKOUT_CNTRL, align 4
  %372 = call i64 @SM(i64 %370, i32 %371)
  %373 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %374 = or i64 %372, %373
  %375 = call i32 @REG_SET_BIT(%struct.ath_hw* %367, i32 %369, i64 %374)
  br label %376

376:                                              ; preds = %366, %359
  %377 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %378 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %382 = load i32, i32* @AR_Q_DESC_CRCCHK, align 4
  %383 = load i64, i64* @AR_Q_DESC_CRCCHK_EN, align 8
  %384 = call i32 @REG_WRITE(%struct.ath_hw* %381, i32 %382, i64 %383)
  br label %385

385:                                              ; preds = %380, %376
  %386 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %387 = load i64, i64* %5, align 8
  %388 = call i32 @ath9k_hw_clear_queue_interrupts(%struct.ath_hw* %386, i64 %387)
  %389 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %390 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %389, i32 0, i32 9
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @TXQ_FLAG_TXINT_ENABLE, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %410

395:                                              ; preds = %385
  %396 = load i64, i64* %5, align 8
  %397 = trunc i64 %396 to i32
  %398 = shl i32 1, %397
  %399 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %400 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 8
  %403 = load i64, i64* %5, align 8
  %404 = trunc i64 %403 to i32
  %405 = shl i32 1, %404
  %406 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %407 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %395, %385
  %411 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %412 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %411, i32 0, i32 9
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @TXQ_FLAG_TXDESCINT_ENABLE, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %410
  %418 = load i64, i64* %5, align 8
  %419 = trunc i64 %418 to i32
  %420 = shl i32 1, %419
  %421 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %422 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, %420
  store i32 %424, i32* %422, align 8
  br label %425

425:                                              ; preds = %417, %410
  %426 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %427 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @TXQ_FLAG_TXEOLINT_ENABLE, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %425
  %433 = load i64, i64* %5, align 8
  %434 = trunc i64 %433 to i32
  %435 = shl i32 1, %434
  %436 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %437 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 4
  br label %440

440:                                              ; preds = %432, %425
  %441 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %442 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %441, i32 0, i32 9
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @TXQ_FLAG_TXURNINT_ENABLE, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %455

447:                                              ; preds = %440
  %448 = load i64, i64* %5, align 8
  %449 = trunc i64 %448 to i32
  %450 = shl i32 1, %449
  %451 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %452 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = or i32 %453, %450
  store i32 %454, i32* %452, align 8
  br label %455

455:                                              ; preds = %447, %440
  %456 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %457 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %458 = call i32 @ath9k_hw_set_txq_interrupts(%struct.ath_hw* %456, %struct.ath9k_tx_queue_info* %457)
  store i32 1, i32* %3, align 4
  br label %459

459:                                              ; preds = %455, %23
  %460 = load i32, i32* %3, align 4
  ret i32 %460
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @AR_DLCL_IFS(i64) #1

declare dso_local i64 @SM(i64, i32) #1

declare dso_local i32 @AR_DRETRY_LIMIT(i64) #1

declare dso_local i32 @AR_QMISC(i64) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_DMISC(i64) #1

declare dso_local i32 @AR_QCBRCFG(i64) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @AR_QRDYTIMECFG(i64) #1

declare dso_local i32 @AR_DCHNTIME(i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_clear_queue_interrupts(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath9k_hw_set_txq_interrupts(%struct.ath_hw*, %struct.ath9k_tx_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
