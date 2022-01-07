; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_reset_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_reset_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.ath5k_txq_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath5k_txq_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@AR5K_DCU_LCL_IFS_CW_MIN = common dso_local global i32 0, align 4
@AR5K_DCU_LCL_IFS_CW_MAX = common dso_local global i32 0, align 4
@AR5K_DCU_LCL_IFS_AIFS = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_FRAG_WAIT = common dso_local global i32 0, align 4
@AR5K_SREV_AR5211 = common dso_local global i64 0, align 8
@AR5K_DCU_MISC_SEQNUM_CTL = common dso_local global i32 0, align 4
@AR5K_QCU_CBRCFG_INTVAL = common dso_local global i32 0, align 4
@AR5K_QCU_CBRCFG_ORN_THRES = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_FRSHED_CBR = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_CBR_THRES_ENABLE = common dso_local global i32 0, align 4
@AR5K_QCU_RDYTIMECFG_INTVAL = common dso_local global i32 0, align 4
@AR5K_QCU_RDYTIMECFG_ENABLE = common dso_local global i32 0, align 4
@AR5K_DCU_CHAN_TIME_DUR = common dso_local global i32 0, align 4
@AR5K_DCU_CHAN_TIME_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_RDY_VEOL_POLICY = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_BACKOFF_DISABLE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_POST_FR_BKOFF_DIS = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_BACKOFF_FRAG = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_FRSHED_DBA_GT = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_CBREXP_BCN_DIS = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_BCN_ENABLE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_ARBLOCK_CTL_S = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_ARBLOCK_IGNORE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_BCN_ENABLE = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_CBREXP_DIS = common dso_local global i32 0, align 4
@AR5K_TUNE_SW_BEACON_RESP = common dso_local global i32 0, align 4
@AR5K_TUNE_DMA_BEACON_RESP = common dso_local global i32 0, align 4
@AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXOKINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXERRINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXURNINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXEOLINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_CBRORNINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_CBRURNINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_QTRIGINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_SIMR0_QCU_TXOK = common dso_local global i32 0, align 4
@AR5K_SIMR0_QCU_TXDESC = common dso_local global i32 0, align 4
@AR5K_SIMR0 = common dso_local global i32 0, align 4
@AR5K_SIMR1_QCU_TXERR = common dso_local global i32 0, align 4
@AR5K_SIMR1_QCU_TXEOL = common dso_local global i32 0, align 4
@AR5K_SIMR1 = common dso_local global i32 0, align 4
@AR5K_SIMR2 = common dso_local global i32 0, align 4
@AR5K_SIMR2_QCU_TXURN = common dso_local global i32 0, align 4
@AR5K_SIMR3_QCBRORN = common dso_local global i32 0, align 4
@AR5K_SIMR3_QCBRURN = common dso_local global i32 0, align 4
@AR5K_SIMR3 = common dso_local global i32 0, align 4
@AR5K_SIMR4_QTRIG = common dso_local global i32 0, align 4
@AR5K_SIMR4 = common dso_local global i32 0, align 4
@AR5K_TXNOFRM_QCU = common dso_local global i32 0, align 4
@AR5K_TXNOFRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_reset_tx_queue(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_txq_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 13
  %9 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i64 %11
  store %struct.ath5k_txq_info* %12, %struct.ath5k_txq_info** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AR5K_ASSERT_ENTRY(i32 %13, i32 %18)
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AR5K_AR5210, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %27 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AR5K_TX_QUEUE_INACTIVE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %521

32:                                               ; preds = %25
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %34 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %35 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AR5K_DCU_LCL_IFS_CW_MIN, align 4
  %38 = call i32 @AR5K_REG_SM(i32 %36, i32 %37)
  %39 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %40 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AR5K_DCU_LCL_IFS_CW_MAX, align 4
  %43 = call i32 @AR5K_REG_SM(i32 %41, i32 %42)
  %44 = or i32 %38, %43
  %45 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %46 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR5K_DCU_LCL_IFS_AIFS, align 4
  %49 = call i32 @AR5K_REG_SM(i32 %47, i32 %48)
  %50 = or i32 %44, %49
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @AR5K_QUEUE_DFS_LOCAL_IFS(i32 %51)
  %53 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %33, i32 %50, i32 %52)
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw* %54, i32 %55)
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %58)
  %60 = load i32, i32* @AR5K_DCU_MISC_FRAG_WAIT, align 4
  %61 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %57, i32 %59, i32 %60)
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %63 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %32
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %69)
  %71 = load i32, i32* @AR5K_DCU_MISC_SEQNUM_CTL, align 4
  %72 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %32
  %74 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %75 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %73
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %80 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %81 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR5K_QCU_CBRCFG_INTVAL, align 4
  %84 = call i32 @AR5K_REG_SM(i32 %82, i32 %83)
  %85 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %86 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AR5K_QCU_CBRCFG_ORN_THRES, align 4
  %89 = call i32 @AR5K_REG_SM(i32 %87, i32 %88)
  %90 = or i32 %84, %89
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @AR5K_QUEUE_CBRCFG(i32 %91)
  %93 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %79, i32 %90, i32 %92)
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @AR5K_QUEUE_MISC(i32 %95)
  %97 = load i32, i32* @AR5K_QCU_MISC_FRSHED_CBR, align 4
  %98 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %94, i32 %96, i32 %97)
  %99 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %100 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %78
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @AR5K_QUEUE_MISC(i32 %105)
  %107 = load i32, i32* @AR5K_QCU_MISC_CBR_THRES_ENABLE, align 4
  %108 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %104, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %78
  br label %110

110:                                              ; preds = %109, %73
  %111 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %112 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %117 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 130
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %122 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %123 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AR5K_QCU_RDYTIMECFG_INTVAL, align 4
  %126 = call i32 @AR5K_REG_SM(i32 %124, i32 %125)
  %127 = load i32, i32* @AR5K_QCU_RDYTIMECFG_ENABLE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @AR5K_QUEUE_RDYTIMECFG(i32 %129)
  %131 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %121, i32 %128, i32 %130)
  br label %132

132:                                              ; preds = %120, %115, %110
  %133 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %134 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %139 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %140 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AR5K_DCU_CHAN_TIME_DUR, align 4
  %143 = call i32 @AR5K_REG_SM(i32 %141, i32 %142)
  %144 = load i32, i32* @AR5K_DCU_CHAN_TIME_ENABLE, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @AR5K_QUEUE_DFS_CHANNEL_TIME(i32 %146)
  %148 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %138, i32 %145, i32 %147)
  %149 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %150 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %137
  %156 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @AR5K_QUEUE_MISC(i32 %157)
  %159 = load i32, i32* @AR5K_QCU_MISC_RDY_VEOL_POLICY, align 4
  %160 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %156, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %155, %137
  br label %162

162:                                              ; preds = %161, %132
  %163 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %164 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AR5K_TXQ_FLAG_BACKOFF_DISABLE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %171 = load i32, i32* @AR5K_DCU_MISC_POST_FR_BKOFF_DIS, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %172)
  %174 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %170, i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %169, %162
  %176 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %177 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %184 = load i32, i32* @AR5K_DCU_MISC_BACKOFF_FRAG, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %185)
  %187 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %183, i32 %184, i32 %186)
  br label %188

188:                                              ; preds = %182, %175
  %189 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %190 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %255 [
    i32 131, label %192
    i32 130, label %215
    i32 128, label %248
    i32 129, label %254
  ]

192:                                              ; preds = %188
  %193 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @AR5K_QUEUE_MISC(i32 %194)
  %196 = load i32, i32* @AR5K_QCU_MISC_FRSHED_DBA_GT, align 4
  %197 = load i32, i32* @AR5K_QCU_MISC_CBREXP_BCN_DIS, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @AR5K_QCU_MISC_BCN_ENABLE, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %193, i32 %195, i32 %200)
  %202 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %203)
  %205 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL, align 4
  %206 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_S, align 4
  %207 = shl i32 %205, %206
  %208 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_IGNORE, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @AR5K_DCU_MISC_POST_FR_BKOFF_DIS, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @AR5K_DCU_MISC_BCN_ENABLE, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %202, i32 %204, i32 %213)
  br label %256

215:                                              ; preds = %188
  %216 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @AR5K_QUEUE_MISC(i32 %217)
  %219 = load i32, i32* @AR5K_QCU_MISC_FRSHED_DBA_GT, align 4
  %220 = load i32, i32* @AR5K_QCU_MISC_CBREXP_DIS, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @AR5K_QCU_MISC_CBREXP_BCN_DIS, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %216, i32 %218, i32 %223)
  %225 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %226 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %227 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @AR5K_TUNE_SW_BEACON_RESP, align 4
  %230 = load i32, i32* @AR5K_TUNE_DMA_BEACON_RESP, align 4
  %231 = sub nsw i32 %229, %230
  %232 = sub nsw i32 %228, %231
  %233 = load i32, i32* @AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF, align 4
  %234 = sub nsw i32 %232, %233
  %235 = mul nsw i32 %234, 1024
  %236 = load i32, i32* @AR5K_QCU_RDYTIMECFG_ENABLE, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @AR5K_QUEUE_RDYTIMECFG(i32 %238)
  %240 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %225, i32 %237, i32 %239)
  %241 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %242)
  %244 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL, align 4
  %245 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_S, align 4
  %246 = shl i32 %244, %245
  %247 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %241, i32 %243, i32 %246)
  br label %256

248:                                              ; preds = %188
  %249 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @AR5K_QUEUE_MISC(i32 %250)
  %252 = load i32, i32* @AR5K_QCU_MISC_CBREXP_DIS, align 4
  %253 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %249, i32 %251, i32 %252)
  br label %256

254:                                              ; preds = %188
  br label %255

255:                                              ; preds = %188, %254
  br label %256

256:                                              ; preds = %255, %248, %215, %192
  %257 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %258 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @AR5K_TXQ_FLAG_TXOKINT_ENABLE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %256
  %264 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %265 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @AR5K_Q_ENABLE_BITS(i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %263, %256
  %270 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %271 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @AR5K_TXQ_FLAG_TXERRINT_ENABLE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %269
  %277 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %278 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @AR5K_Q_ENABLE_BITS(i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %276, %269
  %283 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %284 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @AR5K_TXQ_FLAG_TXURNINT_ENABLE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %282
  %290 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %291 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @AR5K_Q_ENABLE_BITS(i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %289, %282
  %296 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %297 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @AR5K_TXQ_FLAG_TXDESCINT_ENABLE, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %295
  %303 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %304 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @AR5K_Q_ENABLE_BITS(i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %302, %295
  %309 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %310 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %309, i32 0, i32 8
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @AR5K_TXQ_FLAG_TXEOLINT_ENABLE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %308
  %316 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %317 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @AR5K_Q_ENABLE_BITS(i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %315, %308
  %322 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %323 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @AR5K_TXQ_FLAG_CBRORNINT_ENABLE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %321
  %329 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %330 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %5, align 4
  %333 = call i32 @AR5K_Q_ENABLE_BITS(i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %328, %321
  %335 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %336 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %335, i32 0, i32 8
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @AR5K_TXQ_FLAG_CBRURNINT_ENABLE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %334
  %342 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %343 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %342, i32 0, i32 8
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %5, align 4
  %346 = call i32 @AR5K_Q_ENABLE_BITS(i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %341, %334
  %348 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %349 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @AR5K_TXQ_FLAG_QTRIGINT_ENABLE, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %347
  %355 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %356 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %5, align 4
  %359 = call i32 @AR5K_Q_ENABLE_BITS(i32 %357, i32 %358)
  br label %360

360:                                              ; preds = %354, %347
  %361 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %362 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %361, i32 0, i32 8
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %360
  %368 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %369 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* %5, align 4
  %372 = call i32 @AR5K_Q_ENABLE_BITS(i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %367, %360
  %374 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %375 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %374, i32 0, i32 11
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %378 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %379, %376
  store i32 %380, i32* %378, align 8
  %381 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %382 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %381, i32 0, i32 11
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %385 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, %383
  store i32 %387, i32* %385, align 4
  %388 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %389 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %388, i32 0, i32 11
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %392 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = and i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %396 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %395, i32 0, i32 11
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %399 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = and i32 %400, %397
  store i32 %401, i32* %399, align 4
  %402 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %403 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %402, i32 0, i32 11
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %406 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 8
  %408 = and i32 %407, %404
  store i32 %408, i32* %406, align 8
  %409 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %410 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %409, i32 0, i32 11
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %413 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, %411
  store i32 %415, i32* %413, align 4
  %416 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %417 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %416, i32 0, i32 11
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %420 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %419, i32 0, i32 8
  %421 = load i32, i32* %420, align 8
  %422 = and i32 %421, %418
  store i32 %422, i32* %420, align 8
  %423 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %424 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %423, i32 0, i32 11
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %427 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 4
  %429 = and i32 %428, %425
  store i32 %429, i32* %427, align 4
  %430 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %431 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %430, i32 0, i32 11
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %434 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %433, i32 0, i32 10
  %435 = load i32, i32* %434, align 8
  %436 = and i32 %435, %432
  store i32 %436, i32* %434, align 8
  %437 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %438 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %439 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @AR5K_SIMR0_QCU_TXOK, align 4
  %442 = call i32 @AR5K_REG_SM(i32 %440, i32 %441)
  %443 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %444 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %443, i32 0, i32 5
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @AR5K_SIMR0_QCU_TXDESC, align 4
  %447 = call i32 @AR5K_REG_SM(i32 %445, i32 %446)
  %448 = or i32 %442, %447
  %449 = load i32, i32* @AR5K_SIMR0, align 4
  %450 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %437, i32 %448, i32 %449)
  %451 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %452 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %453 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @AR5K_SIMR1_QCU_TXERR, align 4
  %456 = call i32 @AR5K_REG_SM(i32 %454, i32 %455)
  %457 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %458 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @AR5K_SIMR1_QCU_TXEOL, align 4
  %461 = call i32 @AR5K_REG_SM(i32 %459, i32 %460)
  %462 = or i32 %456, %461
  %463 = load i32, i32* @AR5K_SIMR1, align 4
  %464 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %451, i32 %462, i32 %463)
  %465 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %466 = load i32, i32* @AR5K_SIMR2, align 4
  %467 = load i32, i32* @AR5K_SIMR2_QCU_TXURN, align 4
  %468 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %465, i32 %466, i32 %467)
  %469 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %470 = load i32, i32* @AR5K_SIMR2, align 4
  %471 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %472 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* @AR5K_SIMR2_QCU_TXURN, align 4
  %475 = call i32 @AR5K_REG_SM(i32 %473, i32 %474)
  %476 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %469, i32 %470, i32 %475)
  %477 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %478 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %479 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @AR5K_SIMR3_QCBRORN, align 4
  %482 = call i32 @AR5K_REG_SM(i32 %480, i32 %481)
  %483 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %484 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @AR5K_SIMR3_QCBRURN, align 4
  %487 = call i32 @AR5K_REG_SM(i32 %485, i32 %486)
  %488 = or i32 %482, %487
  %489 = load i32, i32* @AR5K_SIMR3, align 4
  %490 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %477, i32 %488, i32 %489)
  %491 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %492 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %493 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %492, i32 0, i32 9
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @AR5K_SIMR4_QTRIG, align 4
  %496 = call i32 @AR5K_REG_SM(i32 %494, i32 %495)
  %497 = load i32, i32* @AR5K_SIMR4, align 4
  %498 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %491, i32 %496, i32 %497)
  %499 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %500 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %501 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %500, i32 0, i32 10
  %502 = load i32, i32* %501, align 8
  %503 = load i32, i32* @AR5K_TXNOFRM_QCU, align 4
  %504 = call i32 @AR5K_REG_SM(i32 %502, i32 %503)
  %505 = load i32, i32* @AR5K_TXNOFRM, align 4
  %506 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %499, i32 %504, i32 %505)
  %507 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %508 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %507, i32 0, i32 10
  %509 = load i32, i32* %508, align 8
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %515

511:                                              ; preds = %373
  %512 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %513 = load i32, i32* @AR5K_TXNOFRM, align 4
  %514 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %512, i32 0, i32 %513)
  br label %515

515:                                              ; preds = %511, %373
  %516 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %517 = load i32, i32* %5, align 4
  %518 = call i32 @AR5K_QUEUE_QCUMASK(i32 %517)
  %519 = load i32, i32* %5, align 4
  %520 = call i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw* %516, i32 %518, i32 %519)
  store i32 0, i32* %3, align 4
  br label %521

521:                                              ; preds = %515, %31
  %522 = load i32, i32* %3, align 4
  ret i32 %522
}

declare dso_local i32 @AR5K_ASSERT_ENTRY(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_LOCAL_IFS(i32) #1

declare dso_local i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_MISC(i32) #1

declare dso_local i32 @AR5K_QUEUE_CBRCFG(i32) #1

declare dso_local i32 @AR5K_QUEUE_MISC(i32) #1

declare dso_local i32 @AR5K_QUEUE_RDYTIMECFG(i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_CHANNEL_TIME(i32) #1

declare dso_local i32 @AR5K_Q_ENABLE_BITS(i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_QCUMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
