; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { %struct.TYPE_9__, i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@WCN36XX_DXE_REG_RESET = common dso_local global i32 0, align 4
@WCN36XX_DXE_REG_CSR_RESET = common dso_local global i32 0, align 4
@WCN36XX_DXE_INT_CH3_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_INT_CH1_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_INT_CH0_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_INT_CH4_MASK = common dso_local global i32 0, align 4
@WCN36XX_CCU_DXE_INT_SELECT_PRONTO = common dso_local global i32 0, align 4
@WCN36XX_CCU_DXE_INT_SELECT_RIVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error allocating descriptor\0A\00", align 1
@WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEST_ADDR_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_REG_CH_EN = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEST_ADDR_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_TX_H = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_SRC_ADDR_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEST_ADDR_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_REG_CTL_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEFAULT_CTL_RX_L = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_SRC_ADDR_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEST_ADDR_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_REG_CTL_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEFAULT_CTL_RX_H = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_RX_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_dxe_init(%struct.wcn36xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @WCN36XX_DXE_REG_RESET, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %8 = load i32, i32* @WCN36XX_DXE_REG_CSR_RESET, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @WCN36XX_DXE_INT_CH3_MASK, align 4
  %12 = load i32, i32* @WCN36XX_DXE_INT_CH1_MASK, align 4
  %13 = or i32 %11, %12
  %14 = shl i32 %13, 16
  %15 = load i32, i32* @WCN36XX_DXE_INT_CH0_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WCN36XX_DXE_INT_CH4_MASK, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %20 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %25 = load i32, i32* @WCN36XX_CCU_DXE_INT_SELECT_PRONTO, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @wcn36xx_ccu_write_register(%struct.wcn36xx* %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %30 = load i32, i32* @WCN36XX_CCU_DXE_INT_SELECT_RIVA, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @wcn36xx_ccu_write_register(%struct.wcn36xx* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %38 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %37, i32 0, i32 0
  %39 = call i32 @wcn36xx_dxe_init_descs(i32 %36, %struct.TYPE_9__* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %44 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %244

48:                                               ; preds = %33
  %49 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %50 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %49, i32 0, i32 0
  %51 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %52 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %51, i32 0, i32 6
  %53 = call i32 @wcn36xx_dxe_init_tx_bd(%struct.TYPE_9__* %50, i32* %52)
  %54 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %55 = load i32, i32* @WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_L, align 4
  %56 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %57 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %54, i32 %55, i32 %61)
  %63 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %64 = load i32, i32* @WCN36XX_DXE_CH_DEST_ADDR_TX_L, align 4
  %65 = load i32, i32* @WCN36XX_DXE_WQ_TX_L, align 4
  %66 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %63, i32 %64, i32 %65)
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %68 = load i32, i32* @WCN36XX_DXE_REG_CH_EN, align 4
  %69 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %67, i32 %68, i32* %4)
  %70 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %71 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_L, align 4
  %72 = call i32 @wcn36xx_dxe_enable_ch_int(%struct.wcn36xx* %70, i32 %71)
  %73 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %74 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %77 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %76, i32 0, i32 2
  %78 = call i32 @wcn36xx_dxe_init_descs(i32 %75, %struct.TYPE_9__* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %48
  %82 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %83 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %236

86:                                               ; preds = %48
  %87 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %88 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %87, i32 0, i32 2
  %89 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %90 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %89, i32 0, i32 5
  %91 = call i32 @wcn36xx_dxe_init_tx_bd(%struct.TYPE_9__* %88, i32* %90)
  %92 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %93 = load i32, i32* @WCN36XX_DXE_CH_NEXT_DESC_ADDR_TX_H, align 4
  %94 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %95 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %92, i32 %93, i32 %99)
  %101 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %102 = load i32, i32* @WCN36XX_DXE_CH_DEST_ADDR_TX_H, align 4
  %103 = load i32, i32* @WCN36XX_DXE_WQ_TX_H, align 4
  %104 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %101, i32 %102, i32 %103)
  %105 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %106 = load i32, i32* @WCN36XX_DXE_REG_CH_EN, align 4
  %107 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %105, i32 %106, i32* %4)
  %108 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %109 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_H, align 4
  %110 = call i32 @wcn36xx_dxe_enable_ch_int(%struct.wcn36xx* %108, i32 %109)
  %111 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %112 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %115 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %114, i32 0, i32 3
  %116 = call i32 @wcn36xx_dxe_init_descs(i32 %113, %struct.TYPE_9__* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %86
  %120 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %121 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %229

124:                                              ; preds = %86
  %125 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %126 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %127 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %126, i32 0, i32 3
  %128 = call i32 @wcn36xx_dxe_ch_alloc_skb(%struct.wcn36xx* %125, %struct.TYPE_9__* %127)
  %129 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %130 = load i32, i32* @WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_L, align 4
  %131 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %132 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %129, i32 %130, i32 %136)
  %138 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %139 = load i32, i32* @WCN36XX_DXE_CH_SRC_ADDR_RX_L, align 4
  %140 = load i32, i32* @WCN36XX_DXE_WQ_RX_L, align 4
  %141 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %138, i32 %139, i32 %140)
  %142 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %143 = load i32, i32* @WCN36XX_DXE_CH_DEST_ADDR_RX_L, align 4
  %144 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %145 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %142, i32 %143, i32 %151)
  %153 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %154 = load i32, i32* @WCN36XX_DXE_REG_CTL_RX_L, align 4
  %155 = load i32, i32* @WCN36XX_DXE_CH_DEFAULT_CTL_RX_L, align 4
  %156 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %153, i32 %154, i32 %155)
  %157 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %158 = load i32, i32* @WCN36XX_INT_MASK_CHAN_RX_L, align 4
  %159 = call i32 @wcn36xx_dxe_enable_ch_int(%struct.wcn36xx* %157, i32 %158)
  %160 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %161 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %164 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %163, i32 0, i32 4
  %165 = call i32 @wcn36xx_dxe_init_descs(i32 %162, %struct.TYPE_9__* %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %124
  %169 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %170 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %222

173:                                              ; preds = %124
  %174 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %175 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %176 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %175, i32 0, i32 4
  %177 = call i32 @wcn36xx_dxe_ch_alloc_skb(%struct.wcn36xx* %174, %struct.TYPE_9__* %176)
  %178 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %179 = load i32, i32* @WCN36XX_DXE_CH_NEXT_DESC_ADDR_RX_H, align 4
  %180 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %181 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %178, i32 %179, i32 %185)
  %187 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %188 = load i32, i32* @WCN36XX_DXE_CH_SRC_ADDR_RX_H, align 4
  %189 = load i32, i32* @WCN36XX_DXE_WQ_RX_H, align 4
  %190 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %187, i32 %188, i32 %189)
  %191 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %192 = load i32, i32* @WCN36XX_DXE_CH_DEST_ADDR_RX_H, align 4
  %193 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %194 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %191, i32 %192, i32 %200)
  %202 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %203 = load i32, i32* @WCN36XX_DXE_REG_CTL_RX_H, align 4
  %204 = load i32, i32* @WCN36XX_DXE_CH_DEFAULT_CTL_RX_H, align 4
  %205 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %202, i32 %203, i32 %204)
  %206 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %207 = load i32, i32* @WCN36XX_INT_MASK_CHAN_RX_H, align 4
  %208 = call i32 @wcn36xx_dxe_enable_ch_int(%struct.wcn36xx* %206, i32 %207)
  %209 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %210 = call i32 @wcn36xx_dxe_request_irqs(%struct.wcn36xx* %209)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %173
  br label %215

214:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %244

215:                                              ; preds = %213
  %216 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %217 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %220 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %219, i32 0, i32 4
  %221 = call i32 @wcn36xx_dxe_deinit_descs(i32 %218, %struct.TYPE_9__* %220)
  br label %222

222:                                              ; preds = %215, %168
  %223 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %224 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %227 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %226, i32 0, i32 3
  %228 = call i32 @wcn36xx_dxe_deinit_descs(i32 %225, %struct.TYPE_9__* %227)
  br label %229

229:                                              ; preds = %222, %119
  %230 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %231 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %234 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %233, i32 0, i32 2
  %235 = call i32 @wcn36xx_dxe_deinit_descs(i32 %232, %struct.TYPE_9__* %234)
  br label %236

236:                                              ; preds = %229, %81
  %237 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %238 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %241 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %240, i32 0, i32 0
  %242 = call i32 @wcn36xx_dxe_deinit_descs(i32 %239, %struct.TYPE_9__* %241)
  %243 = load i32, i32* %5, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %236, %214, %42
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @wcn36xx_dxe_write_register(%struct.wcn36xx*, i32, i32) #1

declare dso_local i32 @wcn36xx_ccu_write_register(%struct.wcn36xx*, i32, i32) #1

declare dso_local i32 @wcn36xx_dxe_init_descs(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wcn36xx_dxe_init_tx_bd(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @wcn36xx_dxe_read_register(%struct.wcn36xx*, i32, i32*) #1

declare dso_local i32 @wcn36xx_dxe_enable_ch_int(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_dxe_ch_alloc_skb(%struct.wcn36xx*, %struct.TYPE_9__*) #1

declare dso_local i32 @wcn36xx_dxe_request_irqs(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_deinit_descs(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
