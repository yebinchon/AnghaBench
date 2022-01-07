; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_configure_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_configure_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@ALX_CLK_GATE = common dso_local global i32 0, align 4
@ALX_CLK_GATE_ALL = common dso_local global i32 0, align 4
@ALX_REV_B0 = common dso_local global i64 0, align 8
@ALX_IDLE_DECISN_TIMER = common dso_local global i32 0, align 4
@ALX_IDLE_DECISN_TIMER_DEF = common dso_local global i32 0, align 4
@ALX_SMB_TIMER = common dso_local global i32 0, align 4
@ALX_MASTER = common dso_local global i32 0, align 4
@ALX_MASTER_IRQMOD2_EN = common dso_local global i32 0, align 4
@ALX_MASTER_IRQMOD1_EN = common dso_local global i32 0, align 4
@ALX_MASTER_SYSALVTIMER_EN = common dso_local global i32 0, align 4
@ALX_IRQ_MODU_TIMER = common dso_local global i32 0, align 4
@ALX_IRQ_MODU_TIMER1_SHIFT = common dso_local global i32 0, align 4
@ALX_INT_RETRIG = common dso_local global i32 0, align 4
@ALX_INT_RETRIG_TO = common dso_local global i32 0, align 4
@ALX_TINT_TPD_THRSHLD = common dso_local global i32 0, align 4
@ALX_TINT_TIMER = common dso_local global i32 0, align 4
@ALX_MTU = common dso_local global i32 0, align 4
@ALX_MTU_JUMBO_TH = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_FAST_PAUSE = common dso_local global i32 0, align 4
@ALX_TXQ1_JUMBO_TSO_TH = common dso_local global i32 0, align 4
@ALX_TXQ1 = common dso_local global i32 0, align 4
@ALX_TXQ1_ERRLGPKT_DROP_EN = common dso_local global i32 0, align 4
@ALX_DEV_CTRL_MAXRRS_MIN = common dso_local global i32 0, align 4
@ALX_TXQ_TPD_BURSTPREF_DEF = common dso_local global i32 0, align 4
@ALX_TXQ0_TPD_BURSTPREF_SHIFT = common dso_local global i32 0, align 4
@ALX_TXQ0_MODE_ENHANCE = common dso_local global i32 0, align 4
@ALX_TXQ0_LSO_8023_EN = common dso_local global i32 0, align 4
@ALX_TXQ0_SUPT_IPOPT = common dso_local global i32 0, align 4
@ALX_TXQ_TXF_BURST_PREF_DEF = common dso_local global i32 0, align 4
@ALX_TXQ0_TXF_BURST_PREF_SHIFT = common dso_local global i32 0, align 4
@ALX_TXQ0 = common dso_local global i32 0, align 4
@ALX_HQTPD_Q1_NUMPREF_SHIFT = common dso_local global i32 0, align 4
@ALX_HQTPD_Q2_NUMPREF_SHIFT = common dso_local global i32 0, align 4
@ALX_HQTPD_Q3_NUMPREF_SHIFT = common dso_local global i32 0, align 4
@ALX_HQTPD_BURST_EN = common dso_local global i32 0, align 4
@ALX_HQTPD = common dso_local global i32 0, align 4
@ALX_SRAM5 = common dso_local global i32 0, align 4
@ALX_SRAM_RXF_LEN = common dso_local global i32 0, align 4
@ALX_SRAM_RXF_LEN_8K = common dso_local global i32 0, align 4
@ALX_MTU_STD_ALGN = common dso_local global i32 0, align 4
@ALX_RXQ2_RXF_FLOW_CTRL_RSVD = common dso_local global i32 0, align 4
@ALX_RXQ2 = common dso_local global i32 0, align 4
@ALX_RXQ2_RXF_XOFF_THRESH_SHIFT = common dso_local global i32 0, align 4
@ALX_RXQ2_RXF_XON_THRESH_SHIFT = common dso_local global i32 0, align 4
@ALX_RXQ0_NUM_RFD_PREF_DEF = common dso_local global i32 0, align 4
@ALX_RXQ0_NUM_RFD_PREF_SHIFT = common dso_local global i32 0, align 4
@ALX_RXQ0_RSS_MODE_DIS = common dso_local global i32 0, align 4
@ALX_RXQ0_RSS_MODE_SHIFT = common dso_local global i32 0, align 4
@ALX_RXQ0_IDT_TBL_SIZE_DEF = common dso_local global i32 0, align 4
@ALX_RXQ0_IDT_TBL_SIZE_SHIFT = common dso_local global i32 0, align 4
@ALX_RXQ0_RSS_HSTYP_ALL = common dso_local global i32 0, align 4
@ALX_RXQ0_RSS_HASH_EN = common dso_local global i32 0, align 4
@ALX_RXQ0_IPV6_PARSE_EN = common dso_local global i32 0, align 4
@ALX_RXQ0_ASPM_THRESH = common dso_local global i32 0, align 4
@ALX_RXQ0_ASPM_THRESH_100M = common dso_local global i32 0, align 4
@ALX_RXQ0 = common dso_local global i32 0, align 4
@ALX_DMA = common dso_local global i32 0, align 4
@ALX_DMA_RORDER_MODE_OUT = common dso_local global i32 0, align 4
@ALX_DMA_RORDER_MODE_SHIFT = common dso_local global i32 0, align 4
@ALX_DMA_RREQ_PRI_DATA = common dso_local global i32 0, align 4
@ALX_DMA_RREQ_BLEN_SHIFT = common dso_local global i32 0, align 4
@ALX_DMA_WDLY_CNT_DEF = common dso_local global i32 0, align 4
@ALX_DMA_WDLY_CNT_SHIFT = common dso_local global i32 0, align 4
@ALX_DMA_RDLY_CNT_DEF = common dso_local global i32 0, align 4
@ALX_DMA_RDLY_CNT_SHIFT = common dso_local global i32 0, align 4
@ALX_DMA_RCHNL_SEL_SHIFT = common dso_local global i32 0, align 4
@ALX_WRR_PRI_RESTRICT_NONE = common dso_local global i32 0, align 4
@ALX_WRR_PRI_SHIFT = common dso_local global i32 0, align 4
@ALX_WRR_PRI0_SHIFT = common dso_local global i32 0, align 4
@ALX_WRR_PRI1_SHIFT = common dso_local global i32 0, align 4
@ALX_WRR_PRI2_SHIFT = common dso_local global i32 0, align 4
@ALX_WRR_PRI3_SHIFT = common dso_local global i32 0, align 4
@ALX_WRR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_configure_basic(%struct.alx_hw* %0) #0 {
  %2 = alloca %struct.alx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %2, align 8
  %8 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %9 = call i64 @alx_hw_revision(%struct.alx_hw* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %11 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %12 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @alx_set_macaddr(%struct.alx_hw* %10, i32 %13)
  %15 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %16 = load i32, i32* @ALX_CLK_GATE, align 4
  %17 = load i32, i32* @ALX_CLK_GATE_ALL, align 4
  %18 = call i32 @alx_write_mem32(%struct.alx_hw* %15, i32 %16, i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ALX_REV_B0, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %24 = load i32, i32* @ALX_IDLE_DECISN_TIMER, align 4
  %25 = load i32, i32* @ALX_IDLE_DECISN_TIMER_DEF, align 4
  %26 = call i32 @alx_write_mem32(%struct.alx_hw* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %29 = load i32, i32* @ALX_SMB_TIMER, align 4
  %30 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %31 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %32, 500
  %34 = trunc i64 %33 to i32
  %35 = call i32 @alx_write_mem32(%struct.alx_hw* %28, i32 %29, i32 %34)
  %36 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %37 = load i32, i32* @ALX_MASTER, align 4
  %38 = call i32 @alx_read_mem32(%struct.alx_hw* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @ALX_MASTER_IRQMOD2_EN, align 4
  %40 = load i32, i32* @ALX_MASTER_IRQMOD1_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ALX_MASTER_SYSALVTIMER_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %47 = load i32, i32* @ALX_MASTER, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @alx_write_mem32(%struct.alx_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %51 = load i32, i32* @ALX_IRQ_MODU_TIMER, align 4
  %52 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %53 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 1
  %56 = load i32, i32* @ALX_IRQ_MODU_TIMER1_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @alx_write_mem32(%struct.alx_hw* %50, i32 %51, i32 %57)
  %59 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %60 = load i32, i32* @ALX_INT_RETRIG, align 4
  %61 = load i32, i32* @ALX_INT_RETRIG_TO, align 4
  %62 = call i32 @alx_write_mem32(%struct.alx_hw* %59, i32 %60, i32 %61)
  %63 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %64 = load i32, i32* @ALX_TINT_TPD_THRSHLD, align 4
  %65 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %66 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @alx_write_mem32(%struct.alx_hw* %63, i32 %64, i32 %67)
  %69 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %70 = load i32, i32* @ALX_TINT_TIMER, align 4
  %71 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %72 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @alx_write_mem32(%struct.alx_hw* %69, i32 %70, i32 %73)
  %75 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %76 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ALX_RAW_MTU(i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %80 = load i32, i32* @ALX_MTU, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @alx_write_mem32(%struct.alx_hw* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @ALX_MTU_JUMBO_TH, align 4
  %85 = load i32, i32* @ETH_FCS_LEN, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @VLAN_HLEN, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp sgt i32 %83, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %27
  %91 = load i32, i32* @ALX_MAC_CTRL_FAST_PAUSE, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %94 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %27
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @ALX_TXQ1_JUMBO_TSO_TH, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 7
  %104 = ashr i32 %103, 3
  store i32 %104, i32* %3, align 4
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @ALX_TXQ1_JUMBO_TSO_TH, align 4
  %107 = ashr i32 %106, 3
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %110 = load i32, i32* @ALX_TXQ1, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @ALX_TXQ1_ERRLGPKT_DROP_EN, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @alx_write_mem32(%struct.alx_hw* %109, i32 %110, i32 %113)
  %115 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %116 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pcie_get_readrq(i32 %117)
  %119 = ashr i32 %118, 8
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ALX_DEV_CTRL_MAXRRS_MIN, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %108
  %124 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %125 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ALX_DEV_CTRL_MAXRRS_MIN, align 4
  %128 = shl i32 128, %127
  %129 = call i32 @pcie_set_readrq(i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %123, %108
  %131 = load i32, i32* @ALX_TXQ_TPD_BURSTPREF_DEF, align 4
  %132 = load i32, i32* @ALX_TXQ0_TPD_BURSTPREF_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* @ALX_TXQ0_MODE_ENHANCE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @ALX_TXQ0_LSO_8023_EN, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @ALX_TXQ0_SUPT_IPOPT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @ALX_TXQ_TXF_BURST_PREF_DEF, align 4
  %141 = load i32, i32* @ALX_TXQ0_TXF_BURST_PREF_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %139, %142
  store i32 %143, i32* %3, align 4
  %144 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %145 = load i32, i32* @ALX_TXQ0, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @alx_write_mem32(%struct.alx_hw* %144, i32 %145, i32 %146)
  %148 = load i32, i32* @ALX_TXQ_TPD_BURSTPREF_DEF, align 4
  %149 = load i32, i32* @ALX_HQTPD_Q1_NUMPREF_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* @ALX_TXQ_TPD_BURSTPREF_DEF, align 4
  %152 = load i32, i32* @ALX_HQTPD_Q2_NUMPREF_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = or i32 %150, %153
  %155 = load i32, i32* @ALX_TXQ_TPD_BURSTPREF_DEF, align 4
  %156 = load i32, i32* @ALX_HQTPD_Q3_NUMPREF_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  %159 = load i32, i32* @ALX_HQTPD_BURST_EN, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %3, align 4
  %161 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %162 = load i32, i32* @ALX_HQTPD, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @alx_write_mem32(%struct.alx_hw* %161, i32 %162, i32 %163)
  %165 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %166 = load i32, i32* @ALX_SRAM5, align 4
  %167 = call i32 @alx_read_mem32(%struct.alx_hw* %165, i32 %166)
  store i32 %167, i32* %3, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @ALX_SRAM_RXF_LEN, align 4
  %170 = call i32 @ALX_GET_FIELD(i32 %168, i32 %169)
  %171 = shl i32 %170, 3
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @ALX_SRAM_RXF_LEN_8K, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %130
  %176 = load i32, i32* @ALX_MTU_STD_ALGN, align 4
  %177 = ashr i32 %176, 3
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @ALX_RXQ2_RXF_FLOW_CTRL_RSVD, align 4
  %180 = sub nsw i32 %178, %179
  %181 = ashr i32 %180, 3
  store i32 %181, i32* %3, align 4
  br label %189

182:                                              ; preds = %130
  %183 = load i32, i32* @ALX_MTU_STD_ALGN, align 4
  %184 = ashr i32 %183, 3
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @ALX_MTU_STD_ALGN, align 4
  %187 = sub nsw i32 %185, %186
  %188 = ashr i32 %187, 3
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %182, %175
  %190 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %191 = load i32, i32* @ALX_RXQ2, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @ALX_RXQ2_RXF_XOFF_THRESH_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @ALX_RXQ2_RXF_XON_THRESH_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = or i32 %194, %197
  %199 = call i32 @alx_write_mem32(%struct.alx_hw* %190, i32 %191, i32 %198)
  %200 = load i32, i32* @ALX_RXQ0_NUM_RFD_PREF_DEF, align 4
  %201 = load i32, i32* @ALX_RXQ0_NUM_RFD_PREF_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = load i32, i32* @ALX_RXQ0_RSS_MODE_DIS, align 4
  %204 = load i32, i32* @ALX_RXQ0_RSS_MODE_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = or i32 %202, %205
  %207 = load i32, i32* @ALX_RXQ0_IDT_TBL_SIZE_DEF, align 4
  %208 = load i32, i32* @ALX_RXQ0_IDT_TBL_SIZE_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = or i32 %206, %209
  %211 = load i32, i32* @ALX_RXQ0_RSS_HSTYP_ALL, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @ALX_RXQ0_RSS_HASH_EN, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @ALX_RXQ0_IPV6_PARSE_EN, align 4
  %216 = or i32 %214, %215
  store i32 %216, i32* %3, align 4
  %217 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %218 = call i64 @alx_hw_giga(%struct.alx_hw* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %189
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @ALX_RXQ0_ASPM_THRESH, align 4
  %223 = load i32, i32* @ALX_RXQ0_ASPM_THRESH_100M, align 4
  %224 = call i32 @ALX_SET_FIELD(i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %220, %189
  %226 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %227 = load i32, i32* @ALX_RXQ0, align 4
  %228 = load i32, i32* %3, align 4
  %229 = call i32 @alx_write_mem32(%struct.alx_hw* %226, i32 %227, i32 %228)
  %230 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %231 = load i32, i32* @ALX_DMA, align 4
  %232 = call i32 @alx_read_mem32(%struct.alx_hw* %230, i32 %231)
  store i32 %232, i32* %3, align 4
  %233 = load i32, i32* @ALX_DMA_RORDER_MODE_OUT, align 4
  %234 = load i32, i32* @ALX_DMA_RORDER_MODE_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load i32, i32* @ALX_DMA_RREQ_PRI_DATA, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @ALX_DMA_RREQ_BLEN_SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = or i32 %237, %240
  %242 = load i32, i32* @ALX_DMA_WDLY_CNT_DEF, align 4
  %243 = load i32, i32* @ALX_DMA_WDLY_CNT_SHIFT, align 4
  %244 = shl i32 %242, %243
  %245 = or i32 %241, %244
  %246 = load i32, i32* @ALX_DMA_RDLY_CNT_DEF, align 4
  %247 = load i32, i32* @ALX_DMA_RDLY_CNT_SHIFT, align 4
  %248 = shl i32 %246, %247
  %249 = or i32 %245, %248
  %250 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %251 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, 1
  %254 = load i32, i32* @ALX_DMA_RCHNL_SEL_SHIFT, align 4
  %255 = shl i32 %253, %254
  %256 = or i32 %249, %255
  store i32 %256, i32* %3, align 4
  %257 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %258 = load i32, i32* @ALX_DMA, align 4
  %259 = load i32, i32* %3, align 4
  %260 = call i32 @alx_write_mem32(%struct.alx_hw* %257, i32 %258, i32 %259)
  %261 = load i32, i32* @ALX_WRR_PRI_RESTRICT_NONE, align 4
  %262 = load i32, i32* @ALX_WRR_PRI_SHIFT, align 4
  %263 = shl i32 %261, %262
  %264 = load i32, i32* @ALX_WRR_PRI0_SHIFT, align 4
  %265 = shl i32 4, %264
  %266 = or i32 %263, %265
  %267 = load i32, i32* @ALX_WRR_PRI1_SHIFT, align 4
  %268 = shl i32 4, %267
  %269 = or i32 %266, %268
  %270 = load i32, i32* @ALX_WRR_PRI2_SHIFT, align 4
  %271 = shl i32 4, %270
  %272 = or i32 %269, %271
  %273 = load i32, i32* @ALX_WRR_PRI3_SHIFT, align 4
  %274 = shl i32 4, %273
  %275 = or i32 %272, %274
  store i32 %275, i32* %3, align 4
  %276 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %277 = load i32, i32* @ALX_WRR, align 4
  %278 = load i32, i32* %3, align 4
  %279 = call i32 @alx_write_mem32(%struct.alx_hw* %276, i32 %277, i32 %278)
  ret void
}

declare dso_local i64 @alx_hw_revision(%struct.alx_hw*) #1

declare dso_local i32 @alx_set_macaddr(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @ALX_RAW_MTU(i32) #1

declare dso_local i32 @pcie_get_readrq(i32) #1

declare dso_local i32 @pcie_set_readrq(i32, i32) #1

declare dso_local i32 @ALX_GET_FIELD(i32, i32) #1

declare dso_local i64 @alx_hw_giga(%struct.alx_hw*) #1

declare dso_local i32 @ALX_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
