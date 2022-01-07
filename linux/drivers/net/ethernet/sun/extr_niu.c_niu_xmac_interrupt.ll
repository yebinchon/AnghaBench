; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_xmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_xmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.niu_xmac_stats }
%struct.niu_xmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XTXMAC_STATUS = common dso_local global i32 0, align 4
@XTXMAC_STATUS_FRAME_CNT_EXP = common dso_local global i32 0, align 4
@TXMAC_FRM_CNT_COUNT = common dso_local global i64 0, align 8
@XTXMAC_STATUS_BYTE_CNT_EXP = common dso_local global i32 0, align 4
@TXMAC_BYTE_CNT_COUNT = common dso_local global i64 0, align 8
@XTXMAC_STATUS_TXFIFO_XFR_ERR = common dso_local global i32 0, align 4
@XTXMAC_STATUS_TXMAC_OFLOW = common dso_local global i32 0, align 4
@XTXMAC_STATUS_MAX_PSIZE_ERR = common dso_local global i32 0, align 4
@XTXMAC_STATUS_TXMAC_UFLOW = common dso_local global i32 0, align 4
@XRXMAC_STATUS = common dso_local global i32 0, align 4
@XRXMAC_STATUS_LCL_FLT_STATUS = common dso_local global i32 0, align 4
@XRXMAC_STATUS_RFLT_DET = common dso_local global i32 0, align 4
@XRXMAC_STATUS_LFLT_CNT_EXP = common dso_local global i32 0, align 4
@LINK_FAULT_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_ALIGNERR_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_ALIGN_ERR_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXFRAG_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_FRAG_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXMULTF_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_MC_FRM_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXBCAST_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_BC_FRM_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST1_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT1_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST2_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT2_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST3_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT3_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST4_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT4_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST5_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT5_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST6_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT6_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXHIST7_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT7_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXOCTET_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_BT_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_CVIOLERR_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_CD_VIO_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_LENERR_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_MPSZER_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_CRCERR_CNT_EXP = common dso_local global i32 0, align 4
@RXMAC_CRC_ER_CNT_COUNT = common dso_local global i64 0, align 8
@XRXMAC_STATUS_RXUFLOW = common dso_local global i32 0, align 4
@XRXMAC_STATUS_RXOFLOW = common dso_local global i32 0, align 4
@XMAC_FC_STAT = common dso_local global i32 0, align 4
@XMAC_FC_STAT_TX_MAC_NPAUSE = common dso_local global i32 0, align 4
@XMAC_FC_STAT_TX_MAC_PAUSE = common dso_local global i32 0, align 4
@XMAC_FC_STAT_RX_MAC_RPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_xmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_xmac_interrupt(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_xmac_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %5 = load %struct.niu*, %struct.niu** %2, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.niu_xmac_stats* %7, %struct.niu_xmac_stats** %3, align 8
  %8 = load i32, i32* @XTXMAC_STATUS, align 4
  %9 = call i32 @nr64_mac(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @XTXMAC_STATUS_FRAME_CNT_EXP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64, i64* @TXMAC_FRM_CNT_COUNT, align 8
  %16 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %17 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %16, i32 0, i32 28
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  br label %22

22:                                               ; preds = %14, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XTXMAC_STATUS_BYTE_CNT_EXP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i64, i64* @TXMAC_BYTE_CNT_COUNT, align 8
  %29 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %30 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %29, i32 0, i32 27
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @XTXMAC_STATUS_TXFIFO_XFR_ERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %42 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %41, i32 0, i32 26
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @XTXMAC_STATUS_TXMAC_OFLOW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %52 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %51, i32 0, i32 25
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @XTXMAC_STATUS_MAX_PSIZE_ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %62 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %61, i32 0, i32 24
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @XTXMAC_STATUS_TXMAC_UFLOW, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %72 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %71, i32 0, i32 23
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @XRXMAC_STATUS, align 4
  %77 = call i32 @nr64_mac(i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @XRXMAC_STATUS_LCL_FLT_STATUS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %84 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %83, i32 0, i32 22
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %75
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @XRXMAC_STATUS_RFLT_DET, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %94 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %93, i32 0, i32 21
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @XRXMAC_STATUS_LFLT_CNT_EXP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i64, i64* @LINK_FAULT_CNT_COUNT, align 8
  %104 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %105 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %104, i32 0, i32 20
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  br label %110

110:                                              ; preds = %102, %97
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @XRXMAC_STATUS_ALIGNERR_CNT_EXP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i64, i64* @RXMAC_ALIGN_ERR_CNT_COUNT, align 8
  %117 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %118 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %117, i32 0, i32 19
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  br label %123

123:                                              ; preds = %115, %110
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @XRXMAC_STATUS_RXFRAG_CNT_EXP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load i64, i64* @RXMAC_FRAG_CNT_COUNT, align 8
  %130 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %131 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %130, i32 0, i32 18
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  br label %136

136:                                              ; preds = %128, %123
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @XRXMAC_STATUS_RXMULTF_CNT_EXP, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i64, i64* @RXMAC_MC_FRM_CNT_COUNT, align 8
  %143 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %144 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %143, i32 0, i32 17
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @XRXMAC_STATUS_RXBCAST_CNT_EXP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* @RXMAC_BC_FRM_CNT_COUNT, align 8
  %156 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %157 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %156, i32 0, i32 16
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  br label %162

162:                                              ; preds = %154, %149
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @XRXMAC_STATUS_RXBCAST_CNT_EXP, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load i64, i64* @RXMAC_BC_FRM_CNT_COUNT, align 8
  %169 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %170 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %169, i32 0, i32 16
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %168
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 4
  br label %175

175:                                              ; preds = %167, %162
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @XRXMAC_STATUS_RXHIST1_CNT_EXP, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load i64, i64* @RXMAC_HIST_CNT1_COUNT, align 8
  %182 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %183 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %182, i32 0, i32 15
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  br label %188

188:                                              ; preds = %180, %175
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @XRXMAC_STATUS_RXHIST2_CNT_EXP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load i64, i64* @RXMAC_HIST_CNT2_COUNT, align 8
  %195 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %196 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %194
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  br label %201

201:                                              ; preds = %193, %188
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @XRXMAC_STATUS_RXHIST3_CNT_EXP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load i64, i64* @RXMAC_HIST_CNT3_COUNT, align 8
  %208 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %209 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %208, i32 0, i32 13
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %207
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 4
  br label %214

214:                                              ; preds = %206, %201
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @XRXMAC_STATUS_RXHIST4_CNT_EXP, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i64, i64* @RXMAC_HIST_CNT4_COUNT, align 8
  %221 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %222 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %221, i32 0, i32 12
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  br label %227

227:                                              ; preds = %219, %214
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @XRXMAC_STATUS_RXHIST5_CNT_EXP, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %227
  %233 = load i64, i64* @RXMAC_HIST_CNT5_COUNT, align 8
  %234 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %235 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %234, i32 0, i32 11
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %233
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %235, align 4
  br label %240

240:                                              ; preds = %232, %227
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @XRXMAC_STATUS_RXHIST6_CNT_EXP, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load i64, i64* @RXMAC_HIST_CNT6_COUNT, align 8
  %247 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %248 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %246
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %248, align 4
  br label %253

253:                                              ; preds = %245, %240
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* @XRXMAC_STATUS_RXHIST7_CNT_EXP, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %253
  %259 = load i64, i64* @RXMAC_HIST_CNT7_COUNT, align 8
  %260 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %261 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, %259
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %261, align 4
  br label %266

266:                                              ; preds = %258, %253
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* @XRXMAC_STATUS_RXOCTET_CNT_EXP, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load i64, i64* @RXMAC_BT_CNT_COUNT, align 8
  %273 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %274 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %272
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %274, align 4
  br label %279

279:                                              ; preds = %271, %266
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* @XRXMAC_STATUS_CVIOLERR_CNT_EXP, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  %285 = load i64, i64* @RXMAC_CD_VIO_CNT_COUNT, align 8
  %286 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %287 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %285
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %287, align 4
  br label %292

292:                                              ; preds = %284, %279
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* @XRXMAC_STATUS_LENERR_CNT_EXP, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %292
  %298 = load i64, i64* @RXMAC_MPSZER_CNT_COUNT, align 8
  %299 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %300 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  br label %305

305:                                              ; preds = %297, %292
  %306 = load i32, i32* %4, align 4
  %307 = load i32, i32* @XRXMAC_STATUS_CRCERR_CNT_EXP, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = load i64, i64* @RXMAC_CRC_ER_CNT_COUNT, align 8
  %312 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %313 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %315, %311
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %313, align 4
  br label %318

318:                                              ; preds = %310, %305
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @XRXMAC_STATUS_RXUFLOW, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %325 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %323, %318
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* @XRXMAC_STATUS_RXOFLOW, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %335 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %333, %328
  %339 = load i32, i32* @XMAC_FC_STAT, align 4
  %340 = call i32 @nr64_mac(i32 %339)
  store i32 %340, i32* %4, align 4
  %341 = load i32, i32* %4, align 4
  %342 = load i32, i32* @XMAC_FC_STAT_TX_MAC_NPAUSE, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %338
  %346 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %347 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %345, %338
  %351 = load i32, i32* %4, align 4
  %352 = load i32, i32* @XMAC_FC_STAT_TX_MAC_PAUSE, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %350
  %356 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %357 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %355, %350
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @XMAC_FC_STAT_RX_MAC_RPAUSE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %360
  %366 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %367 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %365, %360
  ret void
}

declare dso_local i32 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
