; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i64, %struct.atl1c_adapter* }
%struct.atl1c_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@REG_GPHY_CTRL = common dso_local global i32 0, align 4
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CTRL_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CTRL_GATE_25M_EN = common dso_local global i32 0, align 4
@GPHY_CTRL_PWDOWN_HW = common dso_local global i32 0, align 4
@GPHY_CTRL_CLS = common dso_local global i32 0, align 4
@GPHY_CTRL_SEL_ANA_RST = common dso_local global i32 0, align 4
@ATL1C_HIB_DISABLE = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CTRL_EXT_RST_TO = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@MIIDBG_CFGLPSPD = common dso_local global i32 0, align 4
@CFGLPSPD_RSTCNT_CLK125SW = common dso_local global i32 0, align 4
@athr_l2c_b2 = common dso_local global i64 0, align 8
@MIIDBG_CABLE1TH_DET = common dso_local global i32 0, align 4
@CABLE1TH_DET_EN = common dso_local global i32 0, align 4
@MIIDBG_VOLT_CTRL = common dso_local global i32 0, align 4
@VOLT_CTRL_SWLOWEST = common dso_local global i32 0, align 4
@athr_l1d = common dso_local global i64 0, align 8
@athr_l1d_2 = common dso_local global i64 0, align 8
@L1D_LEGCYPS_DEF = common dso_local global i32 0, align 4
@L1C_LEGCYPS_DEF = common dso_local global i32 0, align 4
@MIIDBG_LEGCYPS = common dso_local global i32 0, align 4
@MIIDBG_SYSMODCTRL = common dso_local global i32 0, align 4
@SYSMODCTRL_IECHOADJ_DEF = common dso_local global i32 0, align 4
@LEGCYPS_EN = common dso_local global i32 0, align 4
@MIIDBG_HIBNEG = common dso_local global i32 0, align 4
@HIBNEG_PSHIB_EN = common dso_local global i32 0, align 4
@REG_LPI_CTRL = common dso_local global i32 0, align 4
@LPI_CTRL_EN = common dso_local global i32 0, align 4
@MIIEXT_ANEG = common dso_local global i32 0, align 4
@MIIEXT_LOCAL_EEEADV = common dso_local global i32 0, align 4
@MIIEXT_PCS = common dso_local global i32 0, align 4
@MIIEXT_CLDCTRL3 = common dso_local global i32 0, align 4
@L2CB_CLDCTRL3 = common dso_local global i32 0, align 4
@MIIDBG_ANACTRL = common dso_local global i32 0, align 4
@ANACTRL_DEF = common dso_local global i32 0, align 4
@MIIDBG_SRDSYSMOD = common dso_local global i32 0, align 4
@SRDSYSMOD_DEF = common dso_local global i32 0, align 4
@MIIDBG_TST10BTCFG = common dso_local global i32 0, align 4
@TST10BTCFG_DEF = common dso_local global i32 0, align 4
@MIIDBG_TST100BTCFG = common dso_local global i32 0, align 4
@TST100BTCFG_DEF = common dso_local global i32 0, align 4
@TST100BTCFG_LITCH_EN = common dso_local global i32 0, align 4
@IER_LINK_UP = common dso_local global i32 0, align 4
@IER_LINK_DOWN = common dso_local global i32 0, align 4
@MII_IER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error enable PHY linkChange Interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_phy_reset(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  %10 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %11 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %10, i32 0, i32 2
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %11, align 8
  store %struct.atl1c_adapter* %12, %struct.atl1c_adapter** %4, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %17 = load i32, i32* @REG_GPHY_CTRL, align 4
  %18 = call i32 @AT_READ_REG(%struct.atl1c_hw* %16, i32 %17, i32* %7)
  %19 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %20 = load i32, i32* @GPHY_CTRL_PHY_IDDQ, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GPHY_CTRL_GATE_25M_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GPHY_CTRL_PWDOWN_HW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GPHY_CTRL_CLS, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @GPHY_CTRL_SEL_ANA_RST, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %35 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ATL1C_HIB_DISABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %42 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %53

46:                                               ; preds = %1
  %47 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %48 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %55 = load i32, i32* @REG_GPHY_CTRL, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %59 = call i32 @AT_WRITE_FLUSH(%struct.atl1c_hw* %58)
  %60 = call i32 @udelay(i32 10)
  %61 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %62 = load i32, i32* @REG_GPHY_CTRL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %61, i32 %62, i32 %65)
  %67 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %68 = call i32 @AT_WRITE_FLUSH(%struct.atl1c_hw* %67)
  %69 = load i32, i32* @GPHY_CTRL_EXT_RST_TO, align 4
  %70 = mul nsw i32 10, %69
  %71 = call i32 @udelay(i32 %70)
  %72 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %73 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @athr_l2c_b, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %53
  %78 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %79 = load i32, i32* @MIIDBG_CFGLPSPD, align 4
  %80 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %78, i32 %79, i32* %6)
  %81 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %82 = load i32, i32* @MIIDBG_CFGLPSPD, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @CFGLPSPD_RSTCNT_CLK125SW, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %77, %53
  %89 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %90 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @athr_l2c_b, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %96 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @athr_l2c_b2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94, %88
  %101 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %102 = load i32, i32* @MIIDBG_CABLE1TH_DET, align 4
  %103 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %101, i32 %102, i32* %6)
  %104 = load i32, i32* @CABLE1TH_DET_EN, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %108 = load i32, i32* @MIIDBG_CABLE1TH_DET, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %94
  %112 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %113 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ATL1C_HIB_DISABLE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %168, label %118

118:                                              ; preds = %111
  %119 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %120 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @athr_l2c_b, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %126 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @athr_l2c_b2, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124, %118
  %131 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %132 = load i32, i32* @MIIDBG_VOLT_CTRL, align 4
  %133 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %131, i32 %132, i32* %6)
  %134 = load i32, i32* @VOLT_CTRL_SWLOWEST, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %6, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %139 = load i32, i32* @MIIDBG_VOLT_CTRL, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %130, %124
  %143 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %144 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @athr_l1d, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %150 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @athr_l1d_2, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148, %142
  %155 = load i32, i32* @L1D_LEGCYPS_DEF, align 4
  br label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @L1C_LEGCYPS_DEF, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  store i32 %159, i32* %6, align 4
  %160 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %161 = load i32, i32* @MIIDBG_LEGCYPS, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %160, i32 %161, i32 %162)
  %164 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %165 = load i32, i32* @MIIDBG_SYSMODCTRL, align 4
  %166 = load i32, i32* @SYSMODCTRL_IECHOADJ_DEF, align 4
  %167 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %164, i32 %165, i32 %166)
  br label %188

168:                                              ; preds = %111
  %169 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %170 = load i32, i32* @MIIDBG_LEGCYPS, align 4
  %171 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %169, i32 %170, i32* %6)
  %172 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %173 = load i32, i32* @MIIDBG_LEGCYPS, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @LEGCYPS_EN, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %174, %176
  %178 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %172, i32 %173, i32 %177)
  %179 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %180 = load i32, i32* @MIIDBG_HIBNEG, align 4
  %181 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %179, i32 %180, i32* %6)
  %182 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %183 = load i32, i32* @MIIDBG_HIBNEG, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @HIBNEG_PSHIB_EN, align 4
  %186 = and i32 %184, %185
  %187 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %182, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %168, %158
  %189 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %190 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @athr_l1d, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %206, label %194

194:                                              ; preds = %188
  %195 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %196 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @athr_l1d_2, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %202 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @athr_l2c_b2, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %200, %194, %188
  %207 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %208 = load i32, i32* @REG_LPI_CTRL, align 4
  %209 = call i32 @AT_READ_REG(%struct.atl1c_hw* %207, i32 %208, i32* %8)
  %210 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %211 = load i32, i32* @REG_LPI_CTRL, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @LPI_CTRL_EN, align 4
  %214 = xor i32 %213, -1
  %215 = and i32 %212, %214
  %216 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %210, i32 %211, i32 %215)
  %217 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %218 = load i32, i32* @MIIEXT_ANEG, align 4
  %219 = load i32, i32* @MIIEXT_LOCAL_EEEADV, align 4
  %220 = call i32 @atl1c_write_phy_ext(%struct.atl1c_hw* %217, i32 %218, i32 %219, i32 0)
  %221 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %222 = load i32, i32* @MIIEXT_PCS, align 4
  %223 = load i32, i32* @MIIEXT_CLDCTRL3, align 4
  %224 = load i32, i32* @L2CB_CLDCTRL3, align 4
  %225 = call i32 @atl1c_write_phy_ext(%struct.atl1c_hw* %221, i32 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %206, %200
  %227 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %228 = load i32, i32* @MIIDBG_ANACTRL, align 4
  %229 = load i32, i32* @ANACTRL_DEF, align 4
  %230 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %227, i32 %228, i32 %229)
  %231 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %232 = load i32, i32* @MIIDBG_SRDSYSMOD, align 4
  %233 = load i32, i32* @SRDSYSMOD_DEF, align 4
  %234 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %231, i32 %232, i32 %233)
  %235 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %236 = load i32, i32* @MIIDBG_TST10BTCFG, align 4
  %237 = load i32, i32* @TST10BTCFG_DEF, align 4
  %238 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %235, i32 %236, i32 %237)
  %239 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %240 = load i32, i32* @MIIDBG_TST100BTCFG, align 4
  %241 = load i32, i32* @TST100BTCFG_DEF, align 4
  %242 = load i32, i32* @TST100BTCFG_LITCH_EN, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %239, i32 %240, i32 %243)
  %245 = load i32, i32* @IER_LINK_UP, align 4
  %246 = load i32, i32* @IER_LINK_DOWN, align 4
  %247 = or i32 %245, %246
  store i32 %247, i32* %6, align 4
  %248 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %249 = load i32, i32* @MII_IER, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @atl1c_write_phy_reg(%struct.atl1c_hw* %248, i32 %249, i32 %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %226
  %255 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %256 = call i64 @netif_msg_hw(%struct.atl1c_adapter* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %260 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %259, i32 0, i32 0
  %261 = call i32 @dev_err(i32* %260, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %262

262:                                              ; preds = %258, %254
  %263 = load i32, i32* %9, align 4
  store i32 %263, i32* %2, align 4
  br label %265

264:                                              ; preds = %226
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %262
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @AT_WRITE_FLUSH(%struct.atl1c_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @atl1c_read_phy_dbg(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @atl1c_write_phy_dbg(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @atl1c_write_phy_ext(%struct.atl1c_hw*, i32, i32, i32) #1

declare dso_local i32 @atl1c_write_phy_reg(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
