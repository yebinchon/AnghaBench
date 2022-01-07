; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32, i32, i32, i64 }

@XGENE_ENET2 = common dso_local global i64 0, align 8
@XGENE_ENET1 = common dso_local global i64 0, align 8
@ENET_SPARE_CFG_REG_ADDR = common dso_local global i32 0, align 4
@RSIF_CONFIG_REG_ADDR = common dso_local global i32 0, align 4
@CFG_BYPASS_ADDR = common dso_local global i32 0, align 4
@OFFSET_4 = common dso_local global i32 0, align 4
@SG_RX_DV_GATE_REG_0_ADDR = common dso_local global i32 0, align 4
@XG_ENET_SPARE_CFG_REG_ADDR = common dso_local global i32 0, align 4
@XG_RSIF_CONFIG_REG_ADDR = common dso_local global i32 0, align 4
@XG_CFG_BYPASS_ADDR = common dso_local global i32 0, align 4
@XG_MCX_RX_DV_GATE_REG_0_ADDR = common dso_local global i32 0, align 4
@MPA_IDLE_WITH_QMI_EMPTY = common dso_local global i32 0, align 4
@MII_MGMT_CONFIG_ADDR = common dso_local global i32 0, align 4
@CFG_RSIF_FPBUFF_TIMEOUT_EN = common dso_local global i32 0, align 4
@CSR_MULTI_DPF0_ADDR = common dso_local global i32 0, align 4
@XG_MCX_MULTI_DPF0_ADDR = common dso_local global i32 0, align 4
@DEF_QUANTA = common dso_local global i32 0, align 4
@XG_MCX_MULTI_DPF1_ADDR = common dso_local global i32 0, align 4
@NORM_PAUSE_OPCODE = common dso_local global i32 0, align 4
@RXBUF_PAUSE_THRESH = common dso_local global i32 0, align 4
@XG_RXBUF_PAUSE_THRESH = common dso_local global i32 0, align 4
@RXBUF_PAUSE_OFF_THRESH = common dso_local global i32 0, align 4
@DEF_PAUSE_THRES = common dso_local global i32 0, align 4
@DEF_PAUSE_OFF_THRES = common dso_local global i32 0, align 4
@XG_ENET_SPARE_CFG_REG_1_ADDR = common dso_local global i32 0, align 4
@RESUME_TX = common dso_local global i32 0, align 4
@RESUME_RX0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_sgmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_sgmac_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XGENE_ENET2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %21 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %26 = call i32 @xgene_sgmac_reset(%struct.xgene_enet_pdata* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %29 = call i32 @xgene_sgmii_enable_autoneg(%struct.xgene_enet_pdata* %28)
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %31 = call i32 @xgene_sgmac_set_speed(%struct.xgene_enet_pdata* %30)
  %32 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %33 = call i32 @xgene_sgmac_set_mac_addr(%struct.xgene_enet_pdata* %32)
  %34 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %35 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XGENE_ENET1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %27
  %40 = load i32, i32* @ENET_SPARE_CFG_REG_ADDR, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @RSIF_CONFIG_REG_ADDR, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @CFG_BYPASS_ADDR, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %44 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OFFSET_4, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @SG_RX_DV_GATE_REG_0_ADDR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %8, align 4
  br label %56

51:                                               ; preds = %27
  %52 = load i32, i32* @XG_ENET_SPARE_CFG_REG_ADDR, align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @XG_RSIF_CONFIG_REG_ADDR, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @XG_CFG_BYPASS_ADDR, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @XG_MCX_RX_DV_GATE_REG_0_ADDR, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @MPA_IDLE_WITH_QMI_EMPTY, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %63, i32 %64, i32 %65)
  %67 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %68 = load i32, i32* @MII_MGMT_CONFIG_ADDR, align 4
  %69 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = call i32 @MGMT_CLOCK_SEL_SET(i32* %9, i32 7)
  %71 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %72 = load i32, i32* @MII_MGMT_CONFIG_ADDR, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %71, i32 %72, i32 %73)
  %75 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @CFG_RSIF_FPBUFF_TIMEOUT_EN, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %81, i32 %82, i32 %83)
  %85 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %86 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XGENE_ENET1, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %56
  %91 = load i32, i32* @CSR_MULTI_DPF0_ADDR, align 4
  br label %94

92:                                               ; preds = %56
  %93 = load i32, i32* @XG_MCX_MULTI_DPF0_ADDR, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %13, align 4
  %96 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @DEF_QUANTA, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 65535
  %103 = or i32 %100, %102
  store i32 %103, i32* %9, align 4
  %104 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %104, i32 %105, i32 %106)
  %108 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %109 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @XGENE_ENET1, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %94
  %114 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %115 = load i32, i32* @XG_MCX_MULTI_DPF1_ADDR, align 4
  %116 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @NORM_PAUSE_OPCODE, align 4
  %118 = shl i32 %117, 16
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 65535
  %121 = or i32 %118, %120
  store i32 %121, i32* %9, align 4
  %122 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %123 = load i32, i32* @XG_MCX_MULTI_DPF1_ADDR, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %113, %94
  %127 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %128 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @XGENE_ENET1, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @RXBUF_PAUSE_THRESH, align 4
  br label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @XG_RXBUF_PAUSE_THRESH, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %3, align 4
  %138 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %139 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @XGENE_ENET1, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @RXBUF_PAUSE_OFF_THRESH, align 4
  br label %146

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  store i32 %147, i32* %4, align 4
  %148 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %149 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @XGENE_ENET1, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %194

153:                                              ; preds = %146
  %154 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %154, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %161 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = srem i32 %162, 2
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, -65536
  %168 = load i32, i32* @DEF_PAUSE_THRES, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, -65536
  %172 = load i32, i32* @DEF_PAUSE_OFF_THRES, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %11, align 4
  br label %185

174:                                              ; preds = %153
  %175 = load i32, i32* %10, align 4
  %176 = and i32 %175, 65535
  %177 = load i32, i32* @DEF_PAUSE_THRES, align 4
  %178 = shl i32 %177, 16
  %179 = or i32 %176, %178
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, 65535
  %182 = load i32, i32* @DEF_PAUSE_OFF_THRES, align 4
  %183 = shl i32 %182, 16
  %184 = or i32 %181, %183
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %174, %165
  %186 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %186, i32 %187, i32 %188)
  %190 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %190, i32 %191, i32 %192)
  br label %203

194:                                              ; preds = %146
  %195 = load i32, i32* @DEF_PAUSE_OFF_THRES, align 4
  %196 = shl i32 %195, 16
  %197 = load i32, i32* @DEF_PAUSE_THRES, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %9, align 4
  %199 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %194, %185
  %204 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %205 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %206 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @xgene_sgmac_flowctl_tx(%struct.xgene_enet_pdata* %204, i32 %207)
  %209 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %210 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %211 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @xgene_sgmac_flowctl_rx(%struct.xgene_enet_pdata* %209, i32 %212)
  %214 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %215 = load i32, i32* @XG_ENET_SPARE_CFG_REG_1_ADDR, align 4
  %216 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %214, i32 %215, i32 132)
  %217 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @RESUME_TX, align 4
  %220 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %217, i32 %218, i32 %219)
  %221 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @RESUME_RX0, align 4
  %224 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %221, i32 %222, i32 %223)
  ret void
}

declare dso_local i32 @xgene_sgmac_reset(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_sgmii_enable_autoneg(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_sgmac_set_speed(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_sgmac_set_mac_addr(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @MGMT_CLOCK_SEL_SET(i32*, i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_sgmac_flowctl_tx(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_sgmac_flowctl_rx(%struct.xgene_enet_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
