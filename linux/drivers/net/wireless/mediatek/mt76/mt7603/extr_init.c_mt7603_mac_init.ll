; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MT_AGG_BA_SIZE_LIMIT_0 = common dso_local global i32 0, align 4
@MT_AGG_BA_SIZE_LIMIT_SHIFT = common dso_local global i32 0, align 4
@MT_AGG_BA_SIZE_LIMIT_1 = common dso_local global i32 0, align 4
@MT_AGG_LIMIT = common dso_local global i32 0, align 4
@MT_AGG_LIMIT_1 = common dso_local global i32 0, align 4
@MT_AGG_CONTROL = common dso_local global i32 0, align 4
@MT_AGG_CONTROL_BAR_RATE = common dso_local global i32 0, align 4
@MT_AGG_CONTROL_CFEND_RATE = common dso_local global i32 0, align 4
@MT_AGG_CONTROL_NO_BA_AR_RULE = common dso_local global i32 0, align 4
@MT_AGG_RETRY_CONTROL = common dso_local global i32 0, align 4
@MT_AGG_RETRY_CONTROL_BAR_LIMIT = common dso_local global i32 0, align 4
@MT_AGG_RETRY_CONTROL_RTS_LIMIT = common dso_local global i32 0, align 4
@MT_DMA_DCR0 = common dso_local global i32 0, align 4
@MT_DMA_DCR0_RX_VEC_DROP = common dso_local global i32 0, align 4
@MT_DMA_DCR0_MAX_RX_LEN = common dso_local global i32 0, align 4
@MT_DMA_VCFR0 = common dso_local global i32 0, align 4
@MT_DMA_TMCFR0 = common dso_local global i32 0, align 4
@MT_WF_RMAC_TMR_PA = common dso_local global i32 0, align 4
@MT_WF_RMACDR = common dso_local global i64 0, align 8
@MT_WF_RMACDR_MAXLEN_20BIT = common dso_local global i32 0, align 4
@MT_WF_RMAC_MAXMINLEN = common dso_local global i32 0, align 4
@MT_WF_RFCR1 = common dso_local global i32 0, align 4
@MT_TMAC_TCR = common dso_local global i64 0, align 8
@MT_TMAC_TCR_RX_RIFS_MODE = common dso_local global i32 0, align 4
@MT_CLIENT_BASE_PHYS_ADDR = common dso_local global i32 0, align 4
@MT_CLIENT_RXINF = common dso_local global i64 0, align 8
@MT_CLIENT_RXINF_RXSH_GROUPS = common dso_local global i32 0, align 4
@MT_DMA_DCR1 = common dso_local global i64 0, align 8
@MT_AGG_PCR_RTS = common dso_local global i64 0, align 8
@MT_AGG_PCR_RTS_PKT_THR = common dso_local global i32 0, align 4
@MT_TMAC_PCR = common dso_local global i64 0, align 8
@MT_TMAC_PCR_SPE_EN = common dso_local global i32 0, align 4
@MT_TXREQ = common dso_local global i64 0, align 8
@MT_TXREQ_CCA_SRC_SEL = common dso_local global i32 0, align 4
@MT_RXREQ = common dso_local global i32 0, align 4
@MT_DMA_RCFR0 = common dso_local global i32 0, align 4
@MT_DMA_TCFR0 = common dso_local global i32 0, align 4
@MT_DMA_TCFR_TXS_AGGR_TIMEOUT = common dso_local global i32 0, align 4
@MT_DMA_TCFR_TXS_AGGR_COUNT = common dso_local global i32 0, align 4
@MT_DMA_TCFR1 = common dso_local global i32 0, align 4
@MT_DMA_TCFR_TXS_BIT_MAP = common dso_local global i32 0, align 4
@MT_MCU_PCIE_REMAP_1 = common dso_local global i32 0, align 4
@MT_PSE_WTBL_2_PHYS_ADDR = common dso_local global i32 0, align 4
@MT7603_WTBL_SIZE = common dso_local global i32 0, align 4
@MT7603_WTBL_RESERVED = common dso_local global i64 0, align 8
@MT_LPON_BTEIR = common dso_local global i64 0, align 8
@MT_LPON_BTEIR_MBSS_MODE = common dso_local global i32 0, align 4
@MT_WF_RMACDR_MBSSID_MASK = common dso_local global i32 0, align 4
@MT_AGG_ARUCR = common dso_local global i32 0, align 4
@MT_AGG_ARDCR = common dso_local global i32 0, align 4
@MT7603_RATE_RETRY = common dso_local global i32 0, align 4
@MT_AGG_ARCR = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RTS_RATE_THR = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RATE_DOWN_RATIO_EN = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RATE_DOWN_RATIO = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RATE_UP_EXTRA_TH = common dso_local global i32 0, align 4
@MT_WTBL_RMVTCR = common dso_local global i64 0, align 8
@MT_WTBL_RMVTCR_RX_MV_MODE = common dso_local global i32 0, align 4
@MT_SEC_SCR = common dso_local global i32 0, align 4
@MT_SEC_SCR_MASK_ORDER = common dso_local global i32 0, align 4
@MT_LPON_SBTOR_TIME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_mac_init(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %7 = load i32, i32* @ETH_ALEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %12 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_0, align 4
  %13 = call i32 @MT_AGG_SIZE_LIMIT(i32 0)
  %14 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %15 = mul nsw i32 0, %14
  %16 = shl i32 %13, %15
  %17 = call i32 @MT_AGG_SIZE_LIMIT(i32 1)
  %18 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %19 = mul nsw i32 1, %18
  %20 = shl i32 %17, %19
  %21 = or i32 %16, %20
  %22 = call i32 @MT_AGG_SIZE_LIMIT(i32 2)
  %23 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %24 = mul nsw i32 2, %23
  %25 = shl i32 %22, %24
  %26 = or i32 %21, %25
  %27 = call i32 @MT_AGG_SIZE_LIMIT(i32 3)
  %28 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %29 = mul nsw i32 3, %28
  %30 = shl i32 %27, %29
  %31 = or i32 %26, %30
  %32 = call i32 @mt76_wr(%struct.mt7603_dev* %11, i32 %12, i32 %31)
  %33 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %34 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_1, align 4
  %35 = call i32 @MT_AGG_SIZE_LIMIT(i32 4)
  %36 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %37 = mul nsw i32 0, %36
  %38 = shl i32 %35, %37
  %39 = call i32 @MT_AGG_SIZE_LIMIT(i32 5)
  %40 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %41 = mul nsw i32 1, %40
  %42 = shl i32 %39, %41
  %43 = or i32 %38, %42
  %44 = call i32 @MT_AGG_SIZE_LIMIT(i32 6)
  %45 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %46 = mul nsw i32 2, %45
  %47 = shl i32 %44, %46
  %48 = or i32 %43, %47
  %49 = call i32 @MT_AGG_SIZE_LIMIT(i32 7)
  %50 = load i32, i32* @MT_AGG_BA_SIZE_LIMIT_SHIFT, align 4
  %51 = mul nsw i32 3, %50
  %52 = shl i32 %49, %51
  %53 = or i32 %48, %52
  %54 = call i32 @mt76_wr(%struct.mt7603_dev* %33, i32 %34, i32 %53)
  %55 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %56 = load i32, i32* @MT_AGG_LIMIT, align 4
  %57 = call i32 @MT_AGG_LIMIT_AC(i32 0)
  %58 = call i32 @FIELD_PREP(i32 %57, i32 24)
  %59 = call i32 @MT_AGG_LIMIT_AC(i32 1)
  %60 = call i32 @FIELD_PREP(i32 %59, i32 24)
  %61 = or i32 %58, %60
  %62 = call i32 @MT_AGG_LIMIT_AC(i32 2)
  %63 = call i32 @FIELD_PREP(i32 %62, i32 24)
  %64 = or i32 %61, %63
  %65 = call i32 @MT_AGG_LIMIT_AC(i32 3)
  %66 = call i32 @FIELD_PREP(i32 %65, i32 24)
  %67 = or i32 %64, %66
  %68 = call i32 @mt76_wr(%struct.mt7603_dev* %55, i32 %56, i32 %67)
  %69 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %70 = load i32, i32* @MT_AGG_LIMIT_1, align 4
  %71 = call i32 @MT_AGG_LIMIT_AC(i32 0)
  %72 = call i32 @FIELD_PREP(i32 %71, i32 24)
  %73 = call i32 @MT_AGG_LIMIT_AC(i32 1)
  %74 = call i32 @FIELD_PREP(i32 %73, i32 24)
  %75 = or i32 %72, %74
  %76 = call i32 @MT_AGG_LIMIT_AC(i32 2)
  %77 = call i32 @FIELD_PREP(i32 %76, i32 24)
  %78 = or i32 %75, %77
  %79 = call i32 @MT_AGG_LIMIT_AC(i32 3)
  %80 = call i32 @FIELD_PREP(i32 %79, i32 24)
  %81 = or i32 %78, %80
  %82 = call i32 @mt76_wr(%struct.mt7603_dev* %69, i32 %70, i32 %81)
  %83 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %84 = load i32, i32* @MT_AGG_CONTROL, align 4
  %85 = load i32, i32* @MT_AGG_CONTROL_BAR_RATE, align 4
  %86 = call i32 @FIELD_PREP(i32 %85, i32 75)
  %87 = load i32, i32* @MT_AGG_CONTROL_CFEND_RATE, align 4
  %88 = call i32 @FIELD_PREP(i32 %87, i32 105)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @MT_AGG_CONTROL_NO_BA_AR_RULE, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @mt76_wr(%struct.mt7603_dev* %83, i32 %84, i32 %91)
  %93 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %94 = load i32, i32* @MT_AGG_RETRY_CONTROL, align 4
  %95 = load i32, i32* @MT_AGG_RETRY_CONTROL_BAR_LIMIT, align 4
  %96 = call i32 @FIELD_PREP(i32 %95, i32 1)
  %97 = load i32, i32* @MT_AGG_RETRY_CONTROL_RTS_LIMIT, align 4
  %98 = call i32 @FIELD_PREP(i32 %97, i32 15)
  %99 = or i32 %96, %98
  %100 = call i32 @mt76_wr(%struct.mt7603_dev* %93, i32 %94, i32 %99)
  %101 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %102 = load i32, i32* @MT_DMA_DCR0, align 4
  %103 = load i32, i32* @MT_DMA_DCR0_RX_VEC_DROP, align 4
  %104 = load i32, i32* @MT_DMA_DCR0_MAX_RX_LEN, align 4
  %105 = call i32 @FIELD_PREP(i32 %104, i32 4096)
  %106 = or i32 %103, %105
  %107 = call i32 @mt76_wr(%struct.mt7603_dev* %101, i32 %102, i32 %106)
  %108 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %109 = load i32, i32* @MT_DMA_VCFR0, align 4
  %110 = call i32 @BIT(i32 0)
  %111 = call i32 @BIT(i32 13)
  %112 = call i32 @mt76_rmw(%struct.mt7603_dev* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %114 = load i32, i32* @MT_DMA_TMCFR0, align 4
  %115 = call i32 @BIT(i32 0)
  %116 = call i32 @BIT(i32 1)
  %117 = or i32 %115, %116
  %118 = call i32 @BIT(i32 13)
  %119 = call i32 @mt76_rmw(%struct.mt7603_dev* %113, i32 %114, i32 %117, i32 %118)
  %120 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %121 = load i32, i32* @MT_WF_RMAC_TMR_PA, align 4
  %122 = call i32 @BIT(i32 31)
  %123 = call i32 @mt76_clear(%struct.mt7603_dev* %120, i32 %121, i32 %122)
  %124 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %125 = load i64, i64* @MT_WF_RMACDR, align 8
  %126 = load i32, i32* @MT_WF_RMACDR_MAXLEN_20BIT, align 4
  %127 = call i32 @mt76_set(%struct.mt7603_dev* %124, i64 %125, i32 %126)
  %128 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %129 = load i32, i32* @MT_WF_RMAC_MAXMINLEN, align 4
  %130 = call i32 @mt76_rmw(%struct.mt7603_dev* %128, i32 %129, i32 16777215, i32 102400)
  %131 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %132 = load i32, i32* @MT_WF_RFCR1, align 4
  %133 = call i32 @mt76_wr(%struct.mt7603_dev* %131, i32 %132, i32 0)
  %134 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %135 = load i64, i64* @MT_TMAC_TCR, align 8
  %136 = load i32, i32* @MT_TMAC_TCR_RX_RIFS_MODE, align 4
  %137 = call i32 @mt76_set(%struct.mt7603_dev* %134, i64 %135, i32 %136)
  %138 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %139 = call i32 @mt7603_set_tmac_template(%struct.mt7603_dev* %138)
  %140 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %141 = load i32, i32* @MT_CLIENT_BASE_PHYS_ADDR, align 4
  %142 = call i64 @mt7603_reg_map(%struct.mt7603_dev* %140, i32 %141)
  store i64 %142, i64* %5, align 8
  %143 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* @MT_CLIENT_RXINF, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* @MT_CLIENT_RXINF_RXSH_GROUPS, align 4
  %148 = call i32 @mt76_set(%struct.mt7603_dev* %143, i64 %146, i32 %147)
  %149 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %150 = load i64, i64* @MT_DMA_DCR1, align 8
  %151 = call i32 @GENMASK(i32 13, i32 11)
  %152 = call i32 @mt76_set(%struct.mt7603_dev* %149, i64 %150, i32 %151)
  %153 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %154 = load i64, i64* @MT_AGG_PCR_RTS, align 8
  %155 = load i32, i32* @MT_AGG_PCR_RTS_PKT_THR, align 4
  %156 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %153, i64 %154, i32 %155, i32 3)
  %157 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %158 = load i64, i64* @MT_TMAC_PCR, align 8
  %159 = load i32, i32* @MT_TMAC_PCR_SPE_EN, align 4
  %160 = call i32 @mt76_set(%struct.mt7603_dev* %157, i64 %158, i32 %159)
  %161 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %162 = load i64, i64* @MT_TXREQ, align 8
  %163 = load i32, i32* @MT_TXREQ_CCA_SRC_SEL, align 4
  %164 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %161, i64 %162, i32 %163, i32 2)
  %165 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %166 = load i32, i32* @MT_RXREQ, align 4
  %167 = call i32 @mt76_wr(%struct.mt7603_dev* %165, i32 %166, i32 4)
  %168 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %169 = load i32, i32* @MT_DMA_RCFR0, align 4
  %170 = call i32 @mt76_wr(%struct.mt7603_dev* %168, i32 %169, i32 -1073741824)
  %171 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %172 = load i32, i32* @MT_DMA_TCFR0, align 4
  %173 = load i32, i32* @MT_DMA_TCFR_TXS_AGGR_TIMEOUT, align 4
  %174 = call i32 @FIELD_PREP(i32 %173, i32 1)
  %175 = load i32, i32* @MT_DMA_TCFR_TXS_AGGR_COUNT, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @mt76_wr(%struct.mt7603_dev* %171, i32 %172, i32 %176)
  %178 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %179 = load i32, i32* @MT_DMA_TCFR1, align 4
  %180 = load i32, i32* @MT_DMA_TCFR_TXS_AGGR_TIMEOUT, align 4
  %181 = call i32 @FIELD_PREP(i32 %180, i32 1)
  %182 = load i32, i32* @MT_DMA_TCFR_TXS_AGGR_COUNT, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @MT_DMA_TCFR_TXS_BIT_MAP, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @mt76_wr(%struct.mt7603_dev* %178, i32 %179, i32 %185)
  %187 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %188 = load i32, i32* @MT_MCU_PCIE_REMAP_1, align 4
  %189 = load i32, i32* @MT_PSE_WTBL_2_PHYS_ADDR, align 4
  %190 = call i32 @mt76_wr(%struct.mt7603_dev* %187, i32 %188, i32 %189)
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %199, %1
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @MT7603_WTBL_SIZE, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @mt7603_wtbl_clear(%struct.mt7603_dev* %196, i32 %197)
  br label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %191

202:                                              ; preds = %191
  %203 = call i32 @eth_broadcast_addr(i32* %10)
  %204 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %205 = load i64, i64* @MT7603_WTBL_RESERVED, align 8
  %206 = call i32 @mt7603_wtbl_init(%struct.mt7603_dev* %204, i64 %205, i32 -1, i32* %10)
  %207 = load i64, i64* @MT7603_WTBL_RESERVED, align 8
  %208 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %209 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  store i64 %207, i64* %211, align 8
  %212 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %213 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @MT7603_WTBL_RESERVED, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %220 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = call i32 @rcu_assign_pointer(i32 %218, %struct.TYPE_6__* %221)
  %223 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %224 = load i64, i64* @MT_LPON_BTEIR, align 8
  %225 = load i32, i32* @MT_LPON_BTEIR_MBSS_MODE, align 4
  %226 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %223, i64 %224, i32 %225, i32 2)
  %227 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %228 = load i64, i64* @MT_WF_RMACDR, align 8
  %229 = load i32, i32* @MT_WF_RMACDR_MBSSID_MASK, align 4
  %230 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %227, i64 %228, i32 %229, i32 2)
  %231 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %232 = load i32, i32* @MT_AGG_ARUCR, align 4
  %233 = call i32 @MT_AGG_ARxCR_LIMIT(i32 0)
  %234 = call i32 @FIELD_PREP(i32 %233, i32 7)
  %235 = call i32 @MT_AGG_ARxCR_LIMIT(i32 1)
  %236 = call i32 @FIELD_PREP(i32 %235, i32 2)
  %237 = or i32 %234, %236
  %238 = call i32 @MT_AGG_ARxCR_LIMIT(i32 2)
  %239 = call i32 @FIELD_PREP(i32 %238, i32 2)
  %240 = or i32 %237, %239
  %241 = call i32 @MT_AGG_ARxCR_LIMIT(i32 3)
  %242 = call i32 @FIELD_PREP(i32 %241, i32 2)
  %243 = or i32 %240, %242
  %244 = call i32 @MT_AGG_ARxCR_LIMIT(i32 4)
  %245 = call i32 @FIELD_PREP(i32 %244, i32 1)
  %246 = or i32 %243, %245
  %247 = call i32 @MT_AGG_ARxCR_LIMIT(i32 5)
  %248 = call i32 @FIELD_PREP(i32 %247, i32 1)
  %249 = or i32 %246, %248
  %250 = call i32 @MT_AGG_ARxCR_LIMIT(i32 6)
  %251 = call i32 @FIELD_PREP(i32 %250, i32 1)
  %252 = or i32 %249, %251
  %253 = call i32 @MT_AGG_ARxCR_LIMIT(i32 7)
  %254 = call i32 @FIELD_PREP(i32 %253, i32 1)
  %255 = or i32 %252, %254
  %256 = call i32 @mt76_wr(%struct.mt7603_dev* %231, i32 %232, i32 %255)
  %257 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %258 = load i32, i32* @MT_AGG_ARDCR, align 4
  %259 = call i32 @MT_AGG_ARxCR_LIMIT(i32 0)
  %260 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %261 = sub nsw i32 %260, 1
  %262 = call i32 @FIELD_PREP(i32 %259, i32 %261)
  %263 = call i32 @MT_AGG_ARxCR_LIMIT(i32 1)
  %264 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %265 = sub nsw i32 %264, 1
  %266 = call i32 @FIELD_PREP(i32 %263, i32 %265)
  %267 = or i32 %262, %266
  %268 = call i32 @MT_AGG_ARxCR_LIMIT(i32 2)
  %269 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %270 = sub nsw i32 %269, 1
  %271 = call i32 @FIELD_PREP(i32 %268, i32 %270)
  %272 = or i32 %267, %271
  %273 = call i32 @MT_AGG_ARxCR_LIMIT(i32 3)
  %274 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %275 = sub nsw i32 %274, 1
  %276 = call i32 @FIELD_PREP(i32 %273, i32 %275)
  %277 = or i32 %272, %276
  %278 = call i32 @MT_AGG_ARxCR_LIMIT(i32 4)
  %279 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %280 = sub nsw i32 %279, 1
  %281 = call i32 @FIELD_PREP(i32 %278, i32 %280)
  %282 = or i32 %277, %281
  %283 = call i32 @MT_AGG_ARxCR_LIMIT(i32 5)
  %284 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %285 = sub nsw i32 %284, 1
  %286 = call i32 @FIELD_PREP(i32 %283, i32 %285)
  %287 = or i32 %282, %286
  %288 = call i32 @MT_AGG_ARxCR_LIMIT(i32 6)
  %289 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %290 = sub nsw i32 %289, 1
  %291 = call i32 @FIELD_PREP(i32 %288, i32 %290)
  %292 = or i32 %287, %291
  %293 = call i32 @MT_AGG_ARxCR_LIMIT(i32 7)
  %294 = load i32, i32* @MT7603_RATE_RETRY, align 4
  %295 = sub nsw i32 %294, 1
  %296 = call i32 @FIELD_PREP(i32 %293, i32 %295)
  %297 = or i32 %292, %296
  %298 = call i32 @mt76_wr(%struct.mt7603_dev* %257, i32 %258, i32 %297)
  %299 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %300 = load i32, i32* @MT_AGG_ARCR, align 4
  %301 = load i32, i32* @MT_AGG_ARCR_RTS_RATE_THR, align 4
  %302 = call i32 @FIELD_PREP(i32 %301, i32 2)
  %303 = load i32, i32* @MT_AGG_ARCR_RATE_DOWN_RATIO_EN, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @MT_AGG_ARCR_RATE_DOWN_RATIO, align 4
  %306 = call i32 @FIELD_PREP(i32 %305, i32 1)
  %307 = or i32 %304, %306
  %308 = load i32, i32* @MT_AGG_ARCR_RATE_UP_EXTRA_TH, align 4
  %309 = call i32 @FIELD_PREP(i32 %308, i32 4)
  %310 = or i32 %307, %309
  %311 = call i32 @mt76_wr(%struct.mt7603_dev* %299, i32 %300, i32 %310)
  %312 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %313 = load i64, i64* @MT_WTBL_RMVTCR, align 8
  %314 = load i32, i32* @MT_WTBL_RMVTCR_RX_MV_MODE, align 4
  %315 = call i32 @mt76_set(%struct.mt7603_dev* %312, i64 %313, i32 %314)
  %316 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %317 = load i32, i32* @MT_SEC_SCR, align 4
  %318 = load i32, i32* @MT_SEC_SCR_MASK_ORDER, align 4
  %319 = call i32 @mt76_clear(%struct.mt7603_dev* %316, i32 %317, i32 %318)
  %320 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %321 = load i32, i32* @MT_SEC_SCR, align 4
  %322 = call i32 @BIT(i32 18)
  %323 = call i32 @mt76_clear(%struct.mt7603_dev* %320, i32 %321, i32 %322)
  store i32 0, i32* %6, align 4
  br label %324

324:                                              ; preds = %336, %202
  %325 = load i32, i32* %6, align 4
  %326 = icmp sle i32 %325, 4
  br i1 %326, label %327, label %339

327:                                              ; preds = %324
  %328 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %329 = load i32, i32* %6, align 4
  %330 = call i64 @MT_LPON_SBTOR(i32 %329)
  %331 = load i32, i32* @MT_LPON_SBTOR_TIME_OFFSET, align 4
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  %334 = mul nsw i32 %333, 4116
  %335 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %328, i64 %330, i32 %331, i32 %334)
  br label %336

336:                                              ; preds = %327
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %324

339:                                              ; preds = %324
  %340 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %340)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #2

declare dso_local i32 @MT_AGG_SIZE_LIMIT(i32) #2

declare dso_local i32 @FIELD_PREP(i32, i32) #2

declare dso_local i32 @MT_AGG_LIMIT_AC(i32) #2

declare dso_local i32 @mt76_rmw(%struct.mt7603_dev*, i32, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #2

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i64, i32) #2

declare dso_local i32 @mt7603_set_tmac_template(%struct.mt7603_dev*) #2

declare dso_local i64 @mt7603_reg_map(%struct.mt7603_dev*, i32) #2

declare dso_local i32 @GENMASK(i32, i32) #2

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i64, i32, i32) #2

declare dso_local i32 @mt7603_wtbl_clear(%struct.mt7603_dev*, i32) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @mt7603_wtbl_init(%struct.mt7603_dev*, i64, i32, i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @MT_AGG_ARxCR_LIMIT(i32) #2

declare dso_local i64 @MT_LPON_SBTOR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
