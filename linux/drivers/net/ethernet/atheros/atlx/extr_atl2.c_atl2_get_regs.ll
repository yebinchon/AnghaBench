; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.atl2_adapter = type { %struct.atl2_hw }
%struct.atl2_hw = type { i32, i32 }

@ATL2_REGS_LEN = common dso_local global i32 0, align 4
@REG_VPD_CAP = common dso_local global i64 0, align 8
@REG_SPI_FLASH_CTRL = common dso_local global i64 0, align 8
@REG_SPI_FLASH_CONFIG = common dso_local global i64 0, align 8
@REG_TWSI_CTRL = common dso_local global i64 0, align 8
@REG_PCIE_DEV_MISC_CTRL = common dso_local global i64 0, align 8
@REG_MASTER_CTRL = common dso_local global i64 0, align 8
@REG_MANUAL_TIMER_INIT = common dso_local global i64 0, align 8
@REG_IRQ_MODU_TIMER_INIT = common dso_local global i64 0, align 8
@REG_PHY_ENABLE = common dso_local global i64 0, align 8
@REG_CMBDISDMA_TIMER = common dso_local global i64 0, align 8
@REG_IDLE_STATUS = common dso_local global i64 0, align 8
@REG_MDIO_CTRL = common dso_local global i64 0, align 8
@REG_SERDES_LOCK = common dso_local global i64 0, align 8
@REG_MAC_CTRL = common dso_local global i64 0, align 8
@REG_MAC_IPG_IFG = common dso_local global i64 0, align 8
@REG_MAC_STA_ADDR = common dso_local global i64 0, align 8
@REG_RX_HASH_TABLE = common dso_local global i64 0, align 8
@REG_MAC_HALF_DUPLX_CTRL = common dso_local global i64 0, align 8
@REG_MTU = common dso_local global i64 0, align 8
@REG_WOL_CTRL = common dso_local global i64 0, align 8
@REG_SRAM_TXRAM_END = common dso_local global i64 0, align 8
@REG_DESC_BASE_ADDR_HI = common dso_local global i64 0, align 8
@REG_TXD_BASE_ADDR_LO = common dso_local global i64 0, align 8
@REG_TXD_MEM_SIZE = common dso_local global i64 0, align 8
@REG_TXS_BASE_ADDR_LO = common dso_local global i64 0, align 8
@REG_TXS_MEM_SIZE = common dso_local global i64 0, align 8
@REG_RXD_BASE_ADDR_LO = common dso_local global i64 0, align 8
@REG_RXD_BUF_NUM = common dso_local global i64 0, align 8
@REG_DMAR = common dso_local global i64 0, align 8
@REG_TX_CUT_THRESH = common dso_local global i64 0, align 8
@REG_DMAW = common dso_local global i64 0, align 8
@REG_PAUSE_ON_TH = common dso_local global i64 0, align 8
@REG_PAUSE_OFF_TH = common dso_local global i64 0, align 8
@REG_MB_TXD_WR_IDX = common dso_local global i64 0, align 8
@REG_MB_RXD_RD_IDX = common dso_local global i64 0, align 8
@REG_ISR = common dso_local global i64 0, align 8
@REG_IMR = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @atl2_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.atl2_adapter*, align 8
  %8 = alloca %struct.atl2_hw*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl2_adapter* %12, %struct.atl2_adapter** %7, align 8
  %13 = load %struct.atl2_adapter*, %struct.atl2_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %13, i32 0, i32 0
  store %struct.atl2_hw* %14, %struct.atl2_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @ATL2_REGS_LEN, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i8* %17, i32 0, i32 %21)
  %23 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %24 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 16777216, %26
  %28 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %29 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %35 = load i64, i64* @REG_VPD_CAP, align 8
  %36 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %34, i64 %35)
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %40 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %41 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %39, i64 %40)
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %45 = load i64, i64* @REG_SPI_FLASH_CONFIG, align 8
  %46 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %44, i64 %45)
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %50 = load i64, i64* @REG_TWSI_CTRL, align 8
  %51 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %49, i64 %50)
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %55 = load i64, i64* @REG_PCIE_DEV_MISC_CTRL, align 8
  %56 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %54, i64 %55)
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %60 = load i64, i64* @REG_MASTER_CTRL, align 8
  %61 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %59, i64 %60)
  %62 = load i64*, i64** %9, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %65 = load i64, i64* @REG_MANUAL_TIMER_INIT, align 8
  %66 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %64, i64 %65)
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 6
  store i64 %66, i64* %68, align 8
  %69 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %70 = load i64, i64* @REG_IRQ_MODU_TIMER_INIT, align 8
  %71 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %69, i64 %70)
  %72 = load i64*, i64** %9, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 7
  store i64 %71, i64* %73, align 8
  %74 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %75 = load i64, i64* @REG_PHY_ENABLE, align 8
  %76 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %74, i64 %75)
  %77 = load i64*, i64** %9, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 8
  store i64 %76, i64* %78, align 8
  %79 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %80 = load i64, i64* @REG_CMBDISDMA_TIMER, align 8
  %81 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %79, i64 %80)
  %82 = load i64*, i64** %9, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 9
  store i64 %81, i64* %83, align 8
  %84 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %85 = load i64, i64* @REG_IDLE_STATUS, align 8
  %86 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %84, i64 %85)
  %87 = load i64*, i64** %9, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 10
  store i64 %86, i64* %88, align 8
  %89 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %90 = load i64, i64* @REG_MDIO_CTRL, align 8
  %91 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %89, i64 %90)
  %92 = load i64*, i64** %9, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 11
  store i64 %91, i64* %93, align 8
  %94 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %95 = load i64, i64* @REG_SERDES_LOCK, align 8
  %96 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %94, i64 %95)
  %97 = load i64*, i64** %9, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 12
  store i64 %96, i64* %98, align 8
  %99 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %100 = load i64, i64* @REG_MAC_CTRL, align 8
  %101 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %99, i64 %100)
  %102 = load i64*, i64** %9, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 13
  store i64 %101, i64* %103, align 8
  %104 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %105 = load i64, i64* @REG_MAC_IPG_IFG, align 8
  %106 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %104, i64 %105)
  %107 = load i64*, i64** %9, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 14
  store i64 %106, i64* %108, align 8
  %109 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %110 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %111 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %109, i64 %110)
  %112 = load i64*, i64** %9, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 15
  store i64 %111, i64* %113, align 8
  %114 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %115 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %116 = add nsw i64 %115, 4
  %117 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %114, i64 %116)
  %118 = load i64*, i64** %9, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 16
  store i64 %117, i64* %119, align 8
  %120 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %121 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %122 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %120, i64 %121)
  %123 = load i64*, i64** %9, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 17
  store i64 %122, i64* %124, align 8
  %125 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %126 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %127 = add nsw i64 %126, 4
  %128 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %125, i64 %127)
  %129 = load i64*, i64** %9, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 18
  store i64 %128, i64* %130, align 8
  %131 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %132 = load i64, i64* @REG_MAC_HALF_DUPLX_CTRL, align 8
  %133 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %131, i64 %132)
  %134 = load i64*, i64** %9, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 19
  store i64 %133, i64* %135, align 8
  %136 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %137 = load i64, i64* @REG_MTU, align 8
  %138 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %136, i64 %137)
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 20
  store i64 %138, i64* %140, align 8
  %141 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %142 = load i64, i64* @REG_WOL_CTRL, align 8
  %143 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %141, i64 %142)
  %144 = load i64*, i64** %9, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 21
  store i64 %143, i64* %145, align 8
  %146 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %147 = load i64, i64* @REG_SRAM_TXRAM_END, align 8
  %148 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %146, i64 %147)
  %149 = load i64*, i64** %9, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 22
  store i64 %148, i64* %150, align 8
  %151 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %152 = load i64, i64* @REG_DESC_BASE_ADDR_HI, align 8
  %153 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %151, i64 %152)
  %154 = load i64*, i64** %9, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 23
  store i64 %153, i64* %155, align 8
  %156 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %157 = load i64, i64* @REG_TXD_BASE_ADDR_LO, align 8
  %158 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %156, i64 %157)
  %159 = load i64*, i64** %9, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 24
  store i64 %158, i64* %160, align 8
  %161 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %162 = load i64, i64* @REG_TXD_MEM_SIZE, align 8
  %163 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %161, i64 %162)
  %164 = load i64*, i64** %9, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 25
  store i64 %163, i64* %165, align 8
  %166 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %167 = load i64, i64* @REG_TXS_BASE_ADDR_LO, align 8
  %168 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %166, i64 %167)
  %169 = load i64*, i64** %9, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 26
  store i64 %168, i64* %170, align 8
  %171 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %172 = load i64, i64* @REG_TXS_MEM_SIZE, align 8
  %173 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %171, i64 %172)
  %174 = load i64*, i64** %9, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 27
  store i64 %173, i64* %175, align 8
  %176 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %177 = load i64, i64* @REG_RXD_BASE_ADDR_LO, align 8
  %178 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %176, i64 %177)
  %179 = load i64*, i64** %9, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 28
  store i64 %178, i64* %180, align 8
  %181 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %182 = load i64, i64* @REG_RXD_BUF_NUM, align 8
  %183 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %181, i64 %182)
  %184 = load i64*, i64** %9, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 29
  store i64 %183, i64* %185, align 8
  %186 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %187 = load i64, i64* @REG_DMAR, align 8
  %188 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %186, i64 %187)
  %189 = load i64*, i64** %9, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 30
  store i64 %188, i64* %190, align 8
  %191 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %192 = load i64, i64* @REG_TX_CUT_THRESH, align 8
  %193 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %191, i64 %192)
  %194 = load i64*, i64** %9, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 31
  store i64 %193, i64* %195, align 8
  %196 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %197 = load i64, i64* @REG_DMAW, align 8
  %198 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %196, i64 %197)
  %199 = load i64*, i64** %9, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 32
  store i64 %198, i64* %200, align 8
  %201 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %202 = load i64, i64* @REG_PAUSE_ON_TH, align 8
  %203 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %201, i64 %202)
  %204 = load i64*, i64** %9, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 33
  store i64 %203, i64* %205, align 8
  %206 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %207 = load i64, i64* @REG_PAUSE_OFF_TH, align 8
  %208 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %206, i64 %207)
  %209 = load i64*, i64** %9, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 34
  store i64 %208, i64* %210, align 8
  %211 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %212 = load i64, i64* @REG_MB_TXD_WR_IDX, align 8
  %213 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %211, i64 %212)
  %214 = load i64*, i64** %9, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 35
  store i64 %213, i64* %215, align 8
  %216 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %217 = load i64, i64* @REG_MB_RXD_RD_IDX, align 8
  %218 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %216, i64 %217)
  %219 = load i64*, i64** %9, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 36
  store i64 %218, i64* %220, align 8
  %221 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %222 = load i64, i64* @REG_ISR, align 8
  %223 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %221, i64 %222)
  %224 = load i64*, i64** %9, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 38
  store i64 %223, i64* %225, align 8
  %226 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %227 = load i64, i64* @REG_IMR, align 8
  %228 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %226, i64 %227)
  %229 = load i64*, i64** %9, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 39
  store i64 %228, i64* %230, align 8
  %231 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %232 = load i32, i32* @MII_BMCR, align 4
  %233 = call i32 @atl2_read_phy_reg(%struct.atl2_hw* %231, i32 %232, i32* %10)
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = load i64*, i64** %9, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 40
  store i64 %235, i64* %237, align 8
  %238 = load %struct.atl2_hw*, %struct.atl2_hw** %8, align 8
  %239 = load i32, i32* @MII_BMSR, align 4
  %240 = call i32 @atl2_read_phy_reg(%struct.atl2_hw* %238, i32 %239, i32* %10)
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64*, i64** %9, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 41
  store i64 %242, i64* %244, align 8
  ret void
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @ATL2_READ_REG(%struct.atl2_hw*, i64) #1

declare dso_local i32 @atl2_read_phy_reg(%struct.atl2_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
