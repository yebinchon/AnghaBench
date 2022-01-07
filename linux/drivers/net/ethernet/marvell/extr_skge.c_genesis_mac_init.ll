; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, i32, %struct.net_device** }
%struct.net_device = type { i64, i32* }
%struct.skge_port = type { i64 }

@ETH_DATA_LEN = common dso_local global i64 0, align 8
@genesis_mac_init.zero = internal constant [6 x i32] zeroinitializer, align 16
@TX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_SET_MAC_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"genesis reset failed\0A\00", align 1
@MFF_CLR_MAC_RST = common dso_local global i32 0, align 4
@B2_GP_IO = common dso_local global i32 0, align 4
@GP_DIR_0 = common dso_local global i32 0, align 4
@GP_IO_0 = common dso_local global i32 0, align 4
@GP_DIR_2 = common dso_local global i32 0, align 4
@GP_IO_2 = common dso_local global i32 0, align 4
@XM_HW_CFG = common dso_local global i32 0, align 4
@XM_HW_GMII_MD = common dso_local global i32 0, align 4
@XM_SA = common dso_local global i32 0, align 4
@XM_STAT_CMD = common dso_local global i32 0, align 4
@XM_SC_CLR_RXC = common dso_local global i32 0, align 4
@XM_SC_CLR_TXC = common dso_local global i32 0, align 4
@XM_RX_HI_WM = common dso_local global i32 0, align 4
@XM_RX_LENERR_OK = common dso_local global i32 0, align 4
@XM_RX_STRIP_FCS = common dso_local global i32 0, align 4
@XM_RX_BIG_PK_OK = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@XM_RX_DIS_CEXT = common dso_local global i32 0, align 4
@XM_RX_CMD = common dso_local global i32 0, align 4
@XM_TX_CMD = common dso_local global i32 0, align 4
@XM_TX_AUTO_PAD = common dso_local global i32 0, align 4
@XM_TX_THR = common dso_local global i32 0, align 4
@XM_MODE = common dso_local global i32 0, align 4
@XM_DEF_MODE = common dso_local global i32 0, align 4
@XM_RX_EV_MSK = common dso_local global i32 0, align 4
@XMR_DEF_MSK = common dso_local global i32 0, align 4
@XM_TX_EV_MSK = common dso_local global i32 0, align 4
@XMT_DEF_MSK = common dso_local global i32 0, align 4
@B3_MA_TO_CTRL = common dso_local global i32 0, align 4
@MA_RST_CLR = common dso_local global i32 0, align 4
@B3_MA_TOINI_RX1 = common dso_local global i32 0, align 4
@B3_MA_TOINI_RX2 = common dso_local global i32 0, align 4
@B3_MA_TOINI_TX1 = common dso_local global i32 0, align 4
@B3_MA_TOINI_TX2 = common dso_local global i32 0, align 4
@B3_MA_RCINI_RX1 = common dso_local global i32 0, align 4
@B3_MA_RCINI_RX2 = common dso_local global i32 0, align 4
@B3_MA_RCINI_TX1 = common dso_local global i32 0, align 4
@B3_MA_RCINI_TX2 = common dso_local global i32 0, align 4
@RX_MFF_CTRL2 = common dso_local global i32 0, align 4
@MFF_RST_CLR = common dso_local global i32 0, align 4
@RX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_ENA_TIM_PAT = common dso_local global i32 0, align 4
@MFF_ENA_OP_MD = common dso_local global i32 0, align 4
@TX_MFF_CTRL2 = common dso_local global i32 0, align 4
@MFF_TX_CTRL_DEF = common dso_local global i32 0, align 4
@MFF_ENA_FLUSH = common dso_local global i32 0, align 4
@B3_PA_CTRL = common dso_local global i32 0, align 4
@PA_ENA_TO_TX1 = common dso_local global i32 0, align 4
@PA_ENA_TO_TX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @genesis_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_mac_init(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %11 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %10, i32 0, i32 2
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 %14
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.skge_port* @netdev_priv(%struct.net_device* %17)
  store %struct.skge_port* %18, %struct.skge_port** %6, align 8
  %19 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %20 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %19, i32 0, i32 2
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 %23
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ETH_DATA_LEN, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %52, %2
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TX_MFF_CTRL1, align 4
  %38 = call i32 @SK_REG(i32 %36, i32 %37)
  %39 = load i32, i32* @MFF_SET_MAC_RST, align 4
  %40 = call i32 @skge_write16(%struct.skge_hw* %35, i32 %38, i32 %39)
  %41 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TX_MFF_CTRL1, align 4
  %44 = call i32 @SK_REG(i32 %42, i32 %43)
  %45 = call i32 @skge_read16(%struct.skge_hw* %41, i32 %44)
  %46 = load i32, i32* @MFF_SET_MAC_RST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %58

50:                                               ; preds = %34
  %51 = call i32 @udelay(i32 1)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 @netdev_warn(%struct.net_device* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TX_MFF_CTRL1, align 4
  %62 = call i32 @SK_REG(i32 %60, i32 %61)
  %63 = load i32, i32* @MFF_CLR_MAC_RST, align 4
  %64 = call i32 @skge_write16(%struct.skge_hw* %59, i32 %62, i32 %63)
  %65 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %66 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 128
  br i1 %68, label %69, label %97

69:                                               ; preds = %58
  %70 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %71 = load i32, i32* @B2_GP_IO, align 4
  %72 = call i32 @skge_read32(%struct.skge_hw* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @GP_DIR_0, align 4
  %77 = load i32, i32* @GP_IO_0, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %87

81:                                               ; preds = %69
  %82 = load i32, i32* @GP_DIR_2, align 4
  %83 = load i32, i32* @GP_IO_2, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %89 = load i32, i32* @B2_GP_IO, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @skge_write32(%struct.skge_hw* %88, i32 %89, i32 %90)
  %92 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @XM_HW_CFG, align 4
  %95 = load i32, i32* @XM_HW_GMII_MD, align 4
  %96 = call i32 @xm_write16(%struct.skge_hw* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %58
  %98 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %99 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %110 [
    i32 128, label %101
    i32 129, label %104
  ]

101:                                              ; preds = %97
  %102 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %103 = call i32 @xm_phy_init(%struct.skge_port* %102)
  br label %110

104:                                              ; preds = %97
  %105 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %106 = call i32 @bcom_phy_init(%struct.skge_port* %105)
  %107 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @bcom_check_link(%struct.skge_hw* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %97, %101
  %111 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @XM_SA, align 4
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @xm_outaddr(%struct.skge_hw* %111, i32 %112, i32 %113, i32* %116)
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %127, %110
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 16
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @XM_EXM(i32 %124)
  %126 = call i32 @xm_outaddr(%struct.skge_hw* %122, i32 %123, i32 %125, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @genesis_mac_init.zero, i64 0, i64 0))
  br label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %118

130:                                              ; preds = %118
  %131 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @XM_STAT_CMD, align 4
  %134 = load i32, i32* @XM_SC_CLR_RXC, align 4
  %135 = load i32, i32* @XM_SC_CLR_TXC, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @xm_write16(%struct.skge_hw* %131, i32 %132, i32 %133, i32 %136)
  %138 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @XM_STAT_CMD, align 4
  %141 = load i32, i32* @XM_SC_CLR_RXC, align 4
  %142 = load i32, i32* @XM_SC_CLR_TXC, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @xm_write16(%struct.skge_hw* %138, i32 %139, i32 %140, i32 %143)
  %145 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @XM_RX_HI_WM, align 4
  %148 = call i32 @xm_write16(%struct.skge_hw* %145, i32 %146, i32 %147, i32 1450)
  %149 = load i32, i32* @XM_RX_LENERR_OK, align 4
  %150 = load i32, i32* @XM_RX_STRIP_FCS, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %130
  %155 = load i32, i32* @XM_RX_BIG_PK_OK, align 4
  %156 = load i32, i32* %9, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %154, %130
  %159 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %160 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DUPLEX_HALF, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @XM_RX_DIS_CEXT, align 4
  %166 = load i32, i32* %9, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %164, %158
  %169 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @XM_RX_CMD, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @xm_write16(%struct.skge_hw* %169, i32 %170, i32 %171, i32 %172)
  %174 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @XM_TX_CMD, align 4
  %177 = load i32, i32* @XM_TX_AUTO_PAD, align 4
  %178 = call i32 @xm_write16(%struct.skge_hw* %174, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %180 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %191

183:                                              ; preds = %168
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @XM_TX_THR, align 4
  %190 = call i32 @xm_write16(%struct.skge_hw* %187, i32 %188, i32 %189, i32 1020)
  br label %196

191:                                              ; preds = %183, %168
  %192 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @XM_TX_THR, align 4
  %195 = call i32 @xm_write16(%struct.skge_hw* %192, i32 %193, i32 %194, i32 512)
  br label %196

196:                                              ; preds = %191, %186
  %197 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @XM_MODE, align 4
  %200 = load i32, i32* @XM_DEF_MODE, align 4
  %201 = call i32 @xm_write32(%struct.skge_hw* %197, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @XM_RX_EV_MSK, align 4
  %205 = load i32, i32* @XMR_DEF_MSK, align 4
  %206 = call i32 @xm_write32(%struct.skge_hw* %202, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @XM_TX_EV_MSK, align 4
  %210 = load i32, i32* @XMT_DEF_MSK, align 4
  %211 = call i32 @xm_write32(%struct.skge_hw* %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %213 = load i32, i32* @B3_MA_TO_CTRL, align 4
  %214 = load i32, i32* @MA_RST_CLR, align 4
  %215 = call i32 @skge_write16(%struct.skge_hw* %212, i32 %213, i32 %214)
  %216 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %217 = load i32, i32* @B3_MA_TOINI_RX1, align 4
  %218 = call i32 @skge_write8(%struct.skge_hw* %216, i32 %217, i32 72)
  %219 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %220 = load i32, i32* @B3_MA_TOINI_RX2, align 4
  %221 = call i32 @skge_write8(%struct.skge_hw* %219, i32 %220, i32 72)
  %222 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %223 = load i32, i32* @B3_MA_TOINI_TX1, align 4
  %224 = call i32 @skge_write8(%struct.skge_hw* %222, i32 %223, i32 72)
  %225 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %226 = load i32, i32* @B3_MA_TOINI_TX2, align 4
  %227 = call i32 @skge_write8(%struct.skge_hw* %225, i32 %226, i32 72)
  %228 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %229 = load i32, i32* @B3_MA_RCINI_RX1, align 4
  %230 = call i32 @skge_write8(%struct.skge_hw* %228, i32 %229, i32 0)
  %231 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %232 = load i32, i32* @B3_MA_RCINI_RX2, align 4
  %233 = call i32 @skge_write8(%struct.skge_hw* %231, i32 %232, i32 0)
  %234 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %235 = load i32, i32* @B3_MA_RCINI_TX1, align 4
  %236 = call i32 @skge_write8(%struct.skge_hw* %234, i32 %235, i32 0)
  %237 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %238 = load i32, i32* @B3_MA_RCINI_TX2, align 4
  %239 = call i32 @skge_write8(%struct.skge_hw* %237, i32 %238, i32 0)
  %240 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @RX_MFF_CTRL2, align 4
  %243 = call i32 @SK_REG(i32 %241, i32 %242)
  %244 = load i32, i32* @MFF_RST_CLR, align 4
  %245 = call i32 @skge_write8(%struct.skge_hw* %240, i32 %243, i32 %244)
  %246 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @RX_MFF_CTRL1, align 4
  %249 = call i32 @SK_REG(i32 %247, i32 %248)
  %250 = load i32, i32* @MFF_ENA_TIM_PAT, align 4
  %251 = call i32 @skge_write16(%struct.skge_hw* %246, i32 %249, i32 %250)
  %252 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @RX_MFF_CTRL2, align 4
  %255 = call i32 @SK_REG(i32 %253, i32 %254)
  %256 = load i32, i32* @MFF_ENA_OP_MD, align 4
  %257 = call i32 @skge_write8(%struct.skge_hw* %252, i32 %255, i32 %256)
  %258 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @TX_MFF_CTRL2, align 4
  %261 = call i32 @SK_REG(i32 %259, i32 %260)
  %262 = load i32, i32* @MFF_RST_CLR, align 4
  %263 = call i32 @skge_write8(%struct.skge_hw* %258, i32 %261, i32 %262)
  %264 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @TX_MFF_CTRL1, align 4
  %267 = call i32 @SK_REG(i32 %265, i32 %266)
  %268 = load i32, i32* @MFF_TX_CTRL_DEF, align 4
  %269 = call i32 @skge_write16(%struct.skge_hw* %264, i32 %267, i32 %268)
  %270 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* @TX_MFF_CTRL2, align 4
  %273 = call i32 @SK_REG(i32 %271, i32 %272)
  %274 = load i32, i32* @MFF_ENA_OP_MD, align 4
  %275 = call i32 @skge_write8(%struct.skge_hw* %270, i32 %273, i32 %274)
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %196
  %279 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* @RX_MFF_CTRL1, align 4
  %282 = call i32 @SK_REG(i32 %280, i32 %281)
  %283 = load i32, i32* @MFF_ENA_FLUSH, align 4
  %284 = call i32 @skge_write16(%struct.skge_hw* %279, i32 %282, i32 %283)
  br label %297

285:                                              ; preds = %196
  %286 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %287 = load i32, i32* @B3_PA_CTRL, align 4
  %288 = load i32, i32* %4, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = load i32, i32* @PA_ENA_TO_TX1, align 4
  br label %294

292:                                              ; preds = %285
  %293 = load i32, i32* @PA_ENA_TO_TX2, align 4
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi i32 [ %291, %290 ], [ %293, %292 ]
  %296 = call i32 @skge_write16(%struct.skge_hw* %286, i32 %287, i32 %295)
  br label %297

297:                                              ; preds = %294, %278
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_read16(%struct.skge_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_phy_init(%struct.skge_port*) #1

declare dso_local i32 @bcom_phy_init(%struct.skge_port*) #1

declare dso_local i32 @bcom_check_link(%struct.skge_hw*, i32) #1

declare dso_local i32 @xm_outaddr(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @XM_EXM(i32) #1

declare dso_local i32 @xm_write32(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
