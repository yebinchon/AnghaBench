; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_6__*, i64, i64, %struct.TYPE_5__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BNX2_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_MASK_INT = common dso_local global i32 0, align 4
@BNX2_DMA_CONFIG_DATA_BYTE_SWAP = common dso_local global i32 0, align 4
@BNX2_DMA_CONFIG_DATA_WORD_SWAP = common dso_local global i32 0, align 4
@BNX2_DMA_CONFIG_CNTL_WORD_SWAP = common dso_local global i32 0, align 4
@DMA_READ_CHANS = common dso_local global i32 0, align 4
@DMA_WRITE_CHANS = common dso_local global i32 0, align 4
@BNX2_FLAG_PCIX = common dso_local global i32 0, align 4
@BNX2_CHIP_5706 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5706_A0 = common dso_local global i64 0, align 8
@BNX2_DMA_CONFIG_CNTL_PING_PONG_DMA = common dso_local global i32 0, align 4
@BNX2_DMA_CONFIG = common dso_local global i32 0, align 4
@BNX2_TDMA_CONFIG = common dso_local global i32 0, align 4
@BNX2_TDMA_CONFIG_ONE_DMA = common dso_local global i32 0, align 4
@PCI_X_CMD = common dso_local global i64 0, align 8
@PCI_X_CMD_ERO = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_MQ_CONFIG = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG_KNL_BYP_BLK_SIZE = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG_KNL_BYP_BLK_SIZE_256 = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG_BIN_MQ_MODE = common dso_local global i32 0, align 4
@BNX2_CHIP_REV_Ax = common dso_local global i64 0, align 8
@BNX2_MQ_CONFIG_HALT_DIS = common dso_local global i32 0, align 4
@MAX_CID_CNT = common dso_local global i32 0, align 4
@MB_KERNEL_CTX_SIZE = common dso_local global i32 0, align 4
@BNX2_MQ_KNL_BYP_WIND_START = common dso_local global i32 0, align 4
@BNX2_MQ_KNL_WIND_END = common dso_local global i32 0, align 4
@BNX2_PAGE_BITS = common dso_local global i32 0, align 4
@BNX2_RV2P_CONFIG = common dso_local global i32 0, align 4
@BNX2_TBDR_CONFIG = common dso_local global i32 0, align 4
@BNX2_TBDR_CONFIG_PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2_EMAC_BACKOFF_SEED = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@MAX_ETHERNET_PACKET_SIZE = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_MTU_SIZE_JUMBO_ENA = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_MTU_SIZE = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@BNX2_RBUF_CONFIG = common dso_local global i32 0, align 4
@BNX2_RBUF_CONFIG2 = common dso_local global i32 0, align 4
@BNX2_RBUF_CONFIG3 = common dso_local global i32 0, align 4
@BNX2_MAX_MSIX_VEC = common dso_local global i32 0, align 4
@BNX2_EMAC_ATTENTION_ENA = common dso_local global i32 0, align 4
@BNX2_EMAC_ATTENTION_ENA_LINK = common dso_local global i32 0, align 4
@BNX2_HC_STATUS_ADDR_L = common dso_local global i32 0, align 4
@BNX2_HC_STATUS_ADDR_H = common dso_local global i32 0, align 4
@BNX2_HC_STATISTICS_ADDR_L = common dso_local global i32 0, align 4
@BNX2_HC_STATISTICS_ADDR_H = common dso_local global i32 0, align 4
@BNX2_HC_TX_QUICK_CONS_TRIP = common dso_local global i32 0, align 4
@BNX2_HC_RX_QUICK_CONS_TRIP = common dso_local global i32 0, align 4
@BNX2_HC_COMP_PROD_TRIP = common dso_local global i32 0, align 4
@BNX2_HC_TX_TICKS = common dso_local global i32 0, align 4
@BNX2_HC_RX_TICKS = common dso_local global i32 0, align 4
@BNX2_HC_COM_TICKS = common dso_local global i32 0, align 4
@BNX2_HC_CMD_TICKS = common dso_local global i32 0, align 4
@BNX2_FLAG_BROKEN_STATS = common dso_local global i32 0, align 4
@BNX2_HC_STATS_TICKS = common dso_local global i32 0, align 4
@BNX2_HC_STAT_COLLECT_TICKS = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5706_A1 = common dso_local global i64 0, align 8
@BNX2_HC_CONFIG_COLLECT_STATS = common dso_local global i32 0, align 4
@BNX2_HC_CONFIG_RX_TMR_MODE = common dso_local global i32 0, align 4
@BNX2_HC_CONFIG_TX_TMR_MODE = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_HC_MSIX_BIT_VECTOR = common dso_local global i32 0, align 4
@BNX2_HC_MSIX_BIT_VECTOR_VAL = common dso_local global i32 0, align 4
@BNX2_HC_CONFIG_SB_ADDR_INC_128B = common dso_local global i32 0, align 4
@BNX2_FLAG_ONE_SHOT_MSI = common dso_local global i32 0, align 4
@BNX2_HC_CONFIG_ONE_SHOT = common dso_local global i32 0, align 4
@BNX2_HC_CONFIG_USE_INT_PARAM = common dso_local global i32 0, align 4
@BNX2_HC_CONFIG = common dso_local global i32 0, align 4
@BNX2_FW_RX_LOW_LATENCY = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_SIZE = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_1 = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_1_TX_TMR_MODE = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_1_RX_TMR_MODE = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_1_ONE_SHOT = common dso_local global i32 0, align 4
@BNX2_HC_TX_QUICK_CONS_TRIP_OFF = common dso_local global i32 0, align 4
@BNX2_HC_TX_TICKS_OFF = common dso_local global i32 0, align 4
@BNX2_HC_RX_QUICK_CONS_TRIP_OFF = common dso_local global i32 0, align 4
@BNX2_HC_RX_TICKS_OFF = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_CLR_STAT_NOW = common dso_local global i32 0, align 4
@BNX2_HC_ATTN_BITS_ENABLE = common dso_local global i32 0, align 4
@STATUS_ATTN_EVENTS = common dso_local global i32 0, align 4
@BNX2_MISC_NEW_CORE_CTL = common dso_local global i32 0, align 4
@BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA_WAIT2 = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_RESET = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@BNX2_DMA_CONFIG_CNTL_BYTE_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_init_chip(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %12 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_MASK_INT, align 4
  %13 = call i32 @BNX2_WR(%struct.bnx2* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @BNX2_DMA_CONFIG_DATA_BYTE_SWAP, align 4
  %15 = load i32, i32* @BNX2_DMA_CONFIG_DATA_WORD_SWAP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BNX2_DMA_CONFIG_CNTL_WORD_SWAP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DMA_READ_CHANS, align 4
  %20 = shl i32 %19, 12
  %21 = or i32 %18, %20
  %22 = load i32, i32* @DMA_WRITE_CHANS, align 4
  %23 = shl i32 %22, 16
  %24 = or i32 %21, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 2099200
  store i32 %26, i32* %4, align 4
  %27 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BNX2_FLAG_PCIX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 133
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 8388608
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %33, %1
  %42 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %43 = call i64 @BNX2_CHIP(%struct.bnx2* %42)
  %44 = load i64, i64* @BNX2_CHIP_5706, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %48 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %47)
  %49 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BNX2_FLAG_PCIX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @BNX2_DMA_CONFIG_CNTL_PING_PONG_DMA, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %51, %46, %41
  %63 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %64 = load i32, i32* @BNX2_DMA_CONFIG, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @BNX2_WR(%struct.bnx2* %63, i32 %64, i32 %65)
  %67 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %68 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %67)
  %69 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %62
  %72 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %73 = load i32, i32* @BNX2_TDMA_CONFIG, align 4
  %74 = call i8* @BNX2_RD(%struct.bnx2* %72, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @BNX2_TDMA_CONFIG_ONE_DMA, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %80 = load i32, i32* @BNX2_TDMA_CONFIG, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @BNX2_WR(%struct.bnx2* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %62
  %84 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %85 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BNX2_FLAG_PCIX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %83
  %91 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %92 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %91, i32 0, i32 27
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %94, i32 0, i32 26
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI_X_CMD, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @pci_read_config_word(i32 %93, i64 %98, i32* %8)
  %100 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %101 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %100, i32 0, i32 27
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %104 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %103, i32 0, i32 26
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PCI_X_CMD, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @PCI_X_CMD_ERO, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = call i32 @pci_write_config_word(i32 %102, i64 %107, i32 %111)
  br label %113

113:                                              ; preds = %90, %83
  %114 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %115 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS, align 4
  %116 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE, align 4
  %117 = load i32, i32* @BNX2_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @BNX2_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @BNX2_WR(%struct.bnx2* %114, i32 %115, i32 %120)
  %122 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %123 = call i64 @BNX2_CHIP(%struct.bnx2* %122)
  %124 = load i64, i64* @BNX2_CHIP_5709, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %113
  %127 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %128 = call i32 @bnx2_init_5709_context(%struct.bnx2* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %656

133:                                              ; preds = %126
  br label %137

134:                                              ; preds = %113
  %135 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %136 = call i32 @bnx2_init_context(%struct.bnx2* %135)
  br label %137

137:                                              ; preds = %134, %133
  %138 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %139 = call i32 @bnx2_init_cpus(%struct.bnx2* %138)
  store i32 %139, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %656

143:                                              ; preds = %137
  %144 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %145 = call i32 @bnx2_init_nvram(%struct.bnx2* %144)
  %146 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %147 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %148 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %147, i32 0, i32 21
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @bnx2_set_mac_addr(%struct.bnx2* %146, i32 %151, i32 0)
  %153 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %154 = load i32, i32* @BNX2_MQ_CONFIG, align 4
  %155 = call i8* @BNX2_RD(%struct.bnx2* %153, i32 %154)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* @BNX2_MQ_CONFIG_KNL_BYP_BLK_SIZE, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %4, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* @BNX2_MQ_CONFIG_KNL_BYP_BLK_SIZE_256, align 4
  %162 = load i32, i32* %4, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %4, align 4
  %164 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %165 = call i64 @BNX2_CHIP(%struct.bnx2* %164)
  %166 = load i64, i64* @BNX2_CHIP_5709, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %143
  %169 = load i32, i32* @BNX2_MQ_CONFIG_BIN_MQ_MODE, align 4
  %170 = load i32, i32* %4, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %4, align 4
  %172 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %173 = call i64 @BNX2_CHIP_REV(%struct.bnx2* %172)
  %174 = load i64, i64* @BNX2_CHIP_REV_Ax, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load i32, i32* @BNX2_MQ_CONFIG_HALT_DIS, align 4
  %178 = load i32, i32* %4, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %168
  br label %181

181:                                              ; preds = %180, %143
  %182 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %183 = load i32, i32* @BNX2_MQ_CONFIG, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @BNX2_WR(%struct.bnx2* %182, i32 %183, i32 %184)
  %186 = load i32, i32* @MAX_CID_CNT, align 4
  %187 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 65536, %188
  store i32 %189, i32* %4, align 4
  %190 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %191 = load i32, i32* @BNX2_MQ_KNL_BYP_WIND_START, align 4
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @BNX2_WR(%struct.bnx2* %190, i32 %191, i32 %192)
  %194 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %195 = load i32, i32* @BNX2_MQ_KNL_WIND_END, align 4
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @BNX2_WR(%struct.bnx2* %194, i32 %195, i32 %196)
  %198 = load i32, i32* @BNX2_PAGE_BITS, align 4
  %199 = sub nsw i32 %198, 8
  %200 = shl i32 %199, 24
  store i32 %200, i32* %4, align 4
  %201 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %202 = load i32, i32* @BNX2_RV2P_CONFIG, align 4
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @BNX2_WR(%struct.bnx2* %201, i32 %202, i32 %203)
  %205 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %206 = load i32, i32* @BNX2_TBDR_CONFIG, align 4
  %207 = call i8* @BNX2_RD(%struct.bnx2* %205, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  store i32 %208, i32* %4, align 4
  %209 = load i32, i32* @BNX2_TBDR_CONFIG_PAGE_SIZE, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %4, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* @BNX2_PAGE_BITS, align 4
  %214 = sub nsw i32 %213, 8
  %215 = shl i32 %214, 24
  %216 = or i32 %215, 64
  %217 = load i32, i32* %4, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %4, align 4
  %219 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %220 = load i32, i32* @BNX2_TBDR_CONFIG, align 4
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @BNX2_WR(%struct.bnx2* %219, i32 %220, i32 %221)
  %223 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %224 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %229 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 8
  %234 = add nsw i32 %227, %233
  %235 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %236 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 16
  %241 = add nsw i32 %234, %240
  %242 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %243 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %241, %246
  %248 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %249 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 4
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 8
  %254 = add nsw i32 %247, %253
  %255 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %256 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 5
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 16
  %261 = add nsw i32 %254, %260
  store i32 %261, i32* %4, align 4
  %262 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %263 = load i32, i32* @BNX2_EMAC_BACKOFF_SEED, align 4
  %264 = load i32, i32* %4, align 4
  %265 = call i32 @BNX2_WR(%struct.bnx2* %262, i32 %263, i32 %264)
  %266 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %267 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %266, i32 0, i32 21
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %5, align 4
  %272 = load i32, i32* @ETH_HLEN, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* @ETH_FCS_LEN, align 4
  %275 = add nsw i32 %273, %274
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @MAX_ETHERNET_PACKET_SIZE, align 4
  %278 = load i32, i32* @ETH_HLEN, align 4
  %279 = add nsw i32 %277, %278
  %280 = add nsw i32 %279, 4
  %281 = icmp sgt i32 %276, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %181
  %283 = load i32, i32* @BNX2_EMAC_RX_MTU_SIZE_JUMBO_ENA, align 4
  %284 = load i32, i32* %4, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %4, align 4
  br label %286

286:                                              ; preds = %282, %181
  %287 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %288 = load i32, i32* @BNX2_EMAC_RX_MTU_SIZE, align 4
  %289 = load i32, i32* %4, align 4
  %290 = call i32 @BNX2_WR(%struct.bnx2* %287, i32 %288, i32 %289)
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* @ETH_DATA_LEN, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %286
  %295 = load i32, i32* @ETH_DATA_LEN, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %294, %286
  %297 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %298 = load i32, i32* @BNX2_RBUF_CONFIG, align 4
  %299 = load i32, i32* %5, align 4
  %300 = call i32 @BNX2_RBUF_CONFIG_VAL(i32 %299)
  %301 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %297, i32 %298, i32 %300)
  %302 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %303 = load i32, i32* @BNX2_RBUF_CONFIG2, align 4
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @BNX2_RBUF_CONFIG2_VAL(i32 %304)
  %306 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %302, i32 %303, i32 %305)
  %307 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %308 = load i32, i32* @BNX2_RBUF_CONFIG3, align 4
  %309 = load i32, i32* %5, align 4
  %310 = call i32 @BNX2_RBUF_CONFIG3_VAL(i32 %309)
  %311 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %307, i32 %308, i32 %310)
  %312 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %313 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %312, i32 0, i32 24
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %320 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %319, i32 0, i32 25
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @memset(i32 %318, i32 0, i32 %321)
  store i32 0, i32* %7, align 4
  br label %323

323:                                              ; preds = %335, %296
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* @BNX2_MAX_MSIX_VEC, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %338

327:                                              ; preds = %323
  %328 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %329 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %328, i32 0, i32 24
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  store i64 0, i64* %334, align 8
  br label %335

335:                                              ; preds = %327
  %336 = load i32, i32* %7, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %7, align 4
  br label %323

338:                                              ; preds = %323
  %339 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %340 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %339, i32 0, i32 3
  store i32 65535, i32* %340, align 8
  %341 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %342 = load i32, i32* @BNX2_EMAC_ATTENTION_ENA, align 4
  %343 = load i32, i32* @BNX2_EMAC_ATTENTION_ENA_LINK, align 4
  %344 = call i32 @BNX2_WR(%struct.bnx2* %341, i32 %342, i32 %343)
  %345 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %346 = load i32, i32* @BNX2_HC_STATUS_ADDR_L, align 4
  %347 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %348 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %347, i32 0, i32 23
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = call i32 @BNX2_WR(%struct.bnx2* %345, i32 %346, i32 %350)
  %352 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %353 = load i32, i32* @BNX2_HC_STATUS_ADDR_H, align 4
  %354 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %355 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %354, i32 0, i32 23
  %356 = load i64, i64* %355, align 8
  %357 = trunc i64 %356 to i32
  %358 = ashr i32 %357, 32
  %359 = call i32 @BNX2_WR(%struct.bnx2* %352, i32 %353, i32 %358)
  %360 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %361 = load i32, i32* @BNX2_HC_STATISTICS_ADDR_L, align 4
  %362 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %363 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %362, i32 0, i32 22
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  %366 = call i32 @BNX2_WR(%struct.bnx2* %360, i32 %361, i32 %365)
  %367 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %368 = load i32, i32* @BNX2_HC_STATISTICS_ADDR_H, align 4
  %369 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %370 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %369, i32 0, i32 22
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = ashr i32 %372, 32
  %374 = call i32 @BNX2_WR(%struct.bnx2* %367, i32 %368, i32 %373)
  %375 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %376 = load i32, i32* @BNX2_HC_TX_QUICK_CONS_TRIP, align 4
  %377 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %378 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 4
  %380 = shl i32 %379, 16
  %381 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %382 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %380, %383
  %385 = call i32 @BNX2_WR(%struct.bnx2* %375, i32 %376, i32 %384)
  %386 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %387 = load i32, i32* @BNX2_HC_RX_QUICK_CONS_TRIP, align 4
  %388 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %389 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  %391 = shl i32 %390, 16
  %392 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %393 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %391, %394
  %396 = call i32 @BNX2_WR(%struct.bnx2* %386, i32 %387, i32 %395)
  %397 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %398 = load i32, i32* @BNX2_HC_COMP_PROD_TRIP, align 4
  %399 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %400 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 4
  %402 = shl i32 %401, 16
  %403 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %404 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 8
  %406 = or i32 %402, %405
  %407 = call i32 @BNX2_WR(%struct.bnx2* %397, i32 %398, i32 %406)
  %408 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %409 = load i32, i32* @BNX2_HC_TX_TICKS, align 4
  %410 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %411 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %410, i32 0, i32 10
  %412 = load i32, i32* %411, align 4
  %413 = shl i32 %412, 16
  %414 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %415 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %414, i32 0, i32 11
  %416 = load i32, i32* %415, align 8
  %417 = or i32 %413, %416
  %418 = call i32 @BNX2_WR(%struct.bnx2* %408, i32 %409, i32 %417)
  %419 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %420 = load i32, i32* @BNX2_HC_RX_TICKS, align 4
  %421 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %422 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %421, i32 0, i32 12
  %423 = load i32, i32* %422, align 4
  %424 = shl i32 %423, 16
  %425 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %426 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %425, i32 0, i32 13
  %427 = load i32, i32* %426, align 8
  %428 = or i32 %424, %427
  %429 = call i32 @BNX2_WR(%struct.bnx2* %419, i32 %420, i32 %428)
  %430 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %431 = load i32, i32* @BNX2_HC_COM_TICKS, align 4
  %432 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %433 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %432, i32 0, i32 14
  %434 = load i32, i32* %433, align 4
  %435 = shl i32 %434, 16
  %436 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %437 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %436, i32 0, i32 15
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %435, %438
  %440 = call i32 @BNX2_WR(%struct.bnx2* %430, i32 %431, i32 %439)
  %441 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %442 = load i32, i32* @BNX2_HC_CMD_TICKS, align 4
  %443 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %444 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %443, i32 0, i32 16
  %445 = load i32, i32* %444, align 4
  %446 = shl i32 %445, 16
  %447 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %448 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %447, i32 0, i32 17
  %449 = load i32, i32* %448, align 8
  %450 = or i32 %446, %449
  %451 = call i32 @BNX2_WR(%struct.bnx2* %441, i32 %442, i32 %450)
  %452 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %453 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @BNX2_FLAG_BROKEN_STATS, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %338
  %459 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %460 = load i32, i32* @BNX2_HC_STATS_TICKS, align 4
  %461 = call i32 @BNX2_WR(%struct.bnx2* %459, i32 %460, i32 0)
  br label %469

462:                                              ; preds = %338
  %463 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %464 = load i32, i32* @BNX2_HC_STATS_TICKS, align 4
  %465 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %466 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %465, i32 0, i32 18
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @BNX2_WR(%struct.bnx2* %463, i32 %464, i32 %467)
  br label %469

469:                                              ; preds = %462, %458
  %470 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %471 = load i32, i32* @BNX2_HC_STAT_COLLECT_TICKS, align 4
  %472 = call i32 @BNX2_WR(%struct.bnx2* %470, i32 %471, i32 3000)
  %473 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %474 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %473)
  %475 = load i64, i64* @BNX2_CHIP_ID_5706_A1, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %479

477:                                              ; preds = %469
  %478 = load i32, i32* @BNX2_HC_CONFIG_COLLECT_STATS, align 4
  store i32 %478, i32* %4, align 4
  br label %485

479:                                              ; preds = %469
  %480 = load i32, i32* @BNX2_HC_CONFIG_RX_TMR_MODE, align 4
  %481 = load i32, i32* @BNX2_HC_CONFIG_TX_TMR_MODE, align 4
  %482 = or i32 %480, %481
  %483 = load i32, i32* @BNX2_HC_CONFIG_COLLECT_STATS, align 4
  %484 = or i32 %482, %483
  store i32 %484, i32* %4, align 4
  br label %485

485:                                              ; preds = %479, %477
  %486 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %487 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* @BNX2_FLAG_USING_MSIX, align 4
  %490 = and i32 %488, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %500

492:                                              ; preds = %485
  %493 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %494 = load i32, i32* @BNX2_HC_MSIX_BIT_VECTOR, align 4
  %495 = load i32, i32* @BNX2_HC_MSIX_BIT_VECTOR_VAL, align 4
  %496 = call i32 @BNX2_WR(%struct.bnx2* %493, i32 %494, i32 %495)
  %497 = load i32, i32* @BNX2_HC_CONFIG_SB_ADDR_INC_128B, align 4
  %498 = load i32, i32* %4, align 4
  %499 = or i32 %498, %497
  store i32 %499, i32* %4, align 4
  br label %500

500:                                              ; preds = %492, %485
  %501 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %502 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* @BNX2_FLAG_ONE_SHOT_MSI, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %500
  %508 = load i32, i32* @BNX2_HC_CONFIG_ONE_SHOT, align 4
  %509 = load i32, i32* @BNX2_HC_CONFIG_USE_INT_PARAM, align 4
  %510 = or i32 %508, %509
  %511 = load i32, i32* %4, align 4
  %512 = or i32 %511, %510
  store i32 %512, i32* %4, align 4
  br label %513

513:                                              ; preds = %507, %500
  %514 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %515 = load i32, i32* @BNX2_HC_CONFIG, align 4
  %516 = load i32, i32* %4, align 4
  %517 = call i32 @BNX2_WR(%struct.bnx2* %514, i32 %515, i32 %516)
  %518 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %519 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %518, i32 0, i32 13
  %520 = load i32, i32* %519, align 8
  %521 = icmp slt i32 %520, 25
  br i1 %521, label %522, label %526

522:                                              ; preds = %513
  %523 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %524 = load i32, i32* @BNX2_FW_RX_LOW_LATENCY, align 4
  %525 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %523, i32 %524, i32 1)
  br label %530

526:                                              ; preds = %513
  %527 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %528 = load i32, i32* @BNX2_FW_RX_LOW_LATENCY, align 4
  %529 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %527, i32 %528, i32 0)
  br label %530

530:                                              ; preds = %526, %522
  store i32 1, i32* %7, align 4
  br label %531

531:                                              ; preds = %604, %530
  %532 = load i32, i32* %7, align 4
  %533 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %534 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %533, i32 0, i32 19
  %535 = load i32, i32* %534, align 8
  %536 = icmp slt i32 %532, %535
  br i1 %536, label %537, label %607

537:                                              ; preds = %531
  %538 = load i32, i32* %7, align 4
  %539 = sub nsw i32 %538, 1
  %540 = load i32, i32* @BNX2_HC_SB_CONFIG_SIZE, align 4
  %541 = mul nsw i32 %539, %540
  %542 = load i32, i32* @BNX2_HC_SB_CONFIG_1, align 4
  %543 = add nsw i32 %541, %542
  store i32 %543, i32* %9, align 4
  %544 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %545 = load i32, i32* %9, align 4
  %546 = load i32, i32* @BNX2_HC_SB_CONFIG_1_TX_TMR_MODE, align 4
  %547 = load i32, i32* @BNX2_HC_SB_CONFIG_1_RX_TMR_MODE, align 4
  %548 = or i32 %546, %547
  %549 = load i32, i32* @BNX2_HC_SB_CONFIG_1_ONE_SHOT, align 4
  %550 = or i32 %548, %549
  %551 = call i32 @BNX2_WR(%struct.bnx2* %544, i32 %545, i32 %550)
  %552 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %553 = load i32, i32* %9, align 4
  %554 = load i32, i32* @BNX2_HC_TX_QUICK_CONS_TRIP_OFF, align 4
  %555 = add nsw i32 %553, %554
  %556 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %557 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %556, i32 0, i32 4
  %558 = load i32, i32* %557, align 4
  %559 = shl i32 %558, 16
  %560 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %561 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %560, i32 0, i32 5
  %562 = load i32, i32* %561, align 8
  %563 = or i32 %559, %562
  %564 = call i32 @BNX2_WR(%struct.bnx2* %552, i32 %555, i32 %563)
  %565 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %566 = load i32, i32* %9, align 4
  %567 = load i32, i32* @BNX2_HC_TX_TICKS_OFF, align 4
  %568 = add nsw i32 %566, %567
  %569 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %570 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %569, i32 0, i32 10
  %571 = load i32, i32* %570, align 4
  %572 = shl i32 %571, 16
  %573 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %574 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %573, i32 0, i32 11
  %575 = load i32, i32* %574, align 8
  %576 = or i32 %572, %575
  %577 = call i32 @BNX2_WR(%struct.bnx2* %565, i32 %568, i32 %576)
  %578 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %579 = load i32, i32* %9, align 4
  %580 = load i32, i32* @BNX2_HC_RX_QUICK_CONS_TRIP_OFF, align 4
  %581 = add nsw i32 %579, %580
  %582 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %583 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 4
  %585 = shl i32 %584, 16
  %586 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %587 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %586, i32 0, i32 7
  %588 = load i32, i32* %587, align 8
  %589 = or i32 %585, %588
  %590 = call i32 @BNX2_WR(%struct.bnx2* %578, i32 %581, i32 %589)
  %591 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %592 = load i32, i32* %9, align 4
  %593 = load i32, i32* @BNX2_HC_RX_TICKS_OFF, align 4
  %594 = add nsw i32 %592, %593
  %595 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %596 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %595, i32 0, i32 12
  %597 = load i32, i32* %596, align 4
  %598 = shl i32 %597, 16
  %599 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %600 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %599, i32 0, i32 13
  %601 = load i32, i32* %600, align 8
  %602 = or i32 %598, %601
  %603 = call i32 @BNX2_WR(%struct.bnx2* %591, i32 %594, i32 %602)
  br label %604

604:                                              ; preds = %537
  %605 = load i32, i32* %7, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %7, align 4
  br label %531

607:                                              ; preds = %531
  %608 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %609 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %610 = load i32, i32* @BNX2_HC_COMMAND_CLR_STAT_NOW, align 4
  %611 = call i32 @BNX2_WR(%struct.bnx2* %608, i32 %609, i32 %610)
  %612 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %613 = load i32, i32* @BNX2_HC_ATTN_BITS_ENABLE, align 4
  %614 = load i32, i32* @STATUS_ATTN_EVENTS, align 4
  %615 = call i32 @BNX2_WR(%struct.bnx2* %612, i32 %613, i32 %614)
  %616 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %617 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %616, i32 0, i32 21
  %618 = load %struct.TYPE_6__*, %struct.TYPE_6__** %617, align 8
  %619 = call i32 @bnx2_set_rx_mode(%struct.TYPE_6__* %618)
  %620 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %621 = call i64 @BNX2_CHIP(%struct.bnx2* %620)
  %622 = load i64, i64* @BNX2_CHIP_5709, align 8
  %623 = icmp eq i64 %621, %622
  br i1 %623, label %624, label %636

624:                                              ; preds = %607
  %625 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %626 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL, align 4
  %627 = call i8* @BNX2_RD(%struct.bnx2* %625, i32 %626)
  %628 = ptrtoint i8* %627 to i32
  store i32 %628, i32* %4, align 4
  %629 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE, align 4
  %630 = load i32, i32* %4, align 4
  %631 = or i32 %630, %629
  store i32 %631, i32* %4, align 4
  %632 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %633 = load i32, i32* @BNX2_MISC_NEW_CORE_CTL, align 4
  %634 = load i32, i32* %4, align 4
  %635 = call i32 @BNX2_WR(%struct.bnx2* %632, i32 %633, i32 %634)
  br label %636

636:                                              ; preds = %624, %607
  %637 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %638 = load i32, i32* @BNX2_DRV_MSG_DATA_WAIT2, align 4
  %639 = load i32, i32* @BNX2_DRV_MSG_CODE_RESET, align 4
  %640 = or i32 %638, %639
  %641 = call i32 @bnx2_fw_sync(%struct.bnx2* %637, i32 %640, i32 1, i32 0)
  store i32 %641, i32* %6, align 4
  %642 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %643 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS, align 4
  %644 = load i32, i32* @BNX2_MISC_ENABLE_DEFAULT, align 4
  %645 = call i32 @BNX2_WR(%struct.bnx2* %642, i32 %643, i32 %644)
  %646 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %647 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS, align 4
  %648 = call i8* @BNX2_RD(%struct.bnx2* %646, i32 %647)
  %649 = call i32 @udelay(i32 20)
  %650 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %651 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %652 = call i8* @BNX2_RD(%struct.bnx2* %650, i32 %651)
  %653 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %654 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %653, i32 0, i32 20
  store i8* %652, i8** %654, align 8
  %655 = load i32, i32* %6, align 4
  store i32 %655, i32* %2, align 4
  br label %656

656:                                              ; preds = %636, %141, %131
  %657 = load i32, i32* %2, align 4
  ret i32 %657
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i64 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i8* @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i64, i32) #1

declare dso_local i32 @bnx2_init_5709_context(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_context(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_cpus(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_nvram(%struct.bnx2*) #1

declare dso_local i32 @bnx2_set_mac_addr(%struct.bnx2*, i32, i32) #1

declare dso_local i64 @BNX2_CHIP_REV(%struct.bnx2*) #1

declare dso_local i32 @bnx2_reg_wr_ind(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RBUF_CONFIG_VAL(i32) #1

declare dso_local i32 @BNX2_RBUF_CONFIG2_VAL(i32) #1

declare dso_local i32 @BNX2_RBUF_CONFIG3_VAL(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @bnx2_set_rx_mode(%struct.TYPE_6__*) #1

declare dso_local i32 @bnx2_fw_sync(%struct.bnx2*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
