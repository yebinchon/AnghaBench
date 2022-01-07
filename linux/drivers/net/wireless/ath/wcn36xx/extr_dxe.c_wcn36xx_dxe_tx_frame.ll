; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32, i32, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch }
%struct.wcn36xx_dxe_ch = type { i32, i32, i32, i32, i32, %struct.wcn36xx_dxe_ctl*, i32 }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_ctl*, %struct.sk_buff*, i64, i32, %struct.wcn36xx_dxe_desc* }
%struct.wcn36xx_dxe_desc = type { i32, i32, i32, i32 }
%struct.wcn36xx_vif = type { i64 }
%struct.wcn36xx_tx_bd = type { i32 }
%struct.sk_buff = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bd_cpu_addr cannot be NULL for skb DXE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WCN36XX_DBG_DXE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"DXE TX\0A\00", align 1
@WCN36XX_DBG_DXE_DUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"DESC1 >>> \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"BD   >>> \00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to DMA map src_addr_l\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"DESC2 >>> \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SKB   >>> \00", align 1
@WCN36XX_BMPS = common dso_local global i64 0, align 8
@WCN36XX_SMSM_WLAN_TX_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_dxe_tx_frame(%struct.wcn36xx* %0, %struct.wcn36xx_vif* %1, %struct.wcn36xx_tx_bd* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.wcn36xx_vif*, align 8
  %9 = alloca %struct.wcn36xx_tx_bd*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wcn36xx_dxe_desc*, align 8
  %13 = alloca %struct.wcn36xx_dxe_desc*, align 8
  %14 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %15 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %16 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %7, align 8
  store %struct.wcn36xx_vif* %1, %struct.wcn36xx_vif** %8, align 8
  store %struct.wcn36xx_tx_bd* %2, %struct.wcn36xx_tx_bd** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.wcn36xx_dxe_ch* null, %struct.wcn36xx_dxe_ch** %16, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 5
  br label %27

24:                                               ; preds = %5
  %25 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %26 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %25, i32 0, i32 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi %struct.wcn36xx_dxe_ch* [ %23, %21 ], [ %26, %24 ]
  store %struct.wcn36xx_dxe_ch* %28, %struct.wcn36xx_dxe_ch** %16, align 8
  %29 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %29, i32 0, i32 0
  %31 = load i64, i64* %17, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %34 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %33, i32 0, i32 5
  %35 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %34, align 8
  store %struct.wcn36xx_dxe_ctl* %35, %struct.wcn36xx_dxe_ctl** %14, align 8
  %36 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %14, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %36, i32 0, i32 0
  %38 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %37, align 8
  store %struct.wcn36xx_dxe_ctl* %38, %struct.wcn36xx_dxe_ctl** %15, align 8
  %39 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %40 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %39, i32 0, i32 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  %42 = icmp ne %struct.sk_buff* null, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %27
  %44 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %45 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ieee80211_stop_queues(i32 %46)
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %49 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %51 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %50, i32 0, i32 0
  %52 = load i64, i64* %17, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %213

56:                                               ; preds = %27
  %57 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @unlikely(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %18, align 4
  br label %207

66:                                               ; preds = %56
  %67 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %14, align 8
  %68 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %67, i32 0, i32 4
  %69 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %68, align 8
  store %struct.wcn36xx_dxe_desc* %69, %struct.wcn36xx_dxe_desc** %12, align 8
  %70 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %71 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %70, i32 0, i32 4
  %72 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %71, align 8
  store %struct.wcn36xx_dxe_desc* %72, %struct.wcn36xx_dxe_desc** %13, align 8
  %73 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %14, align 8
  %74 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %73, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %74, align 8
  %75 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %14, align 8
  %76 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %9, align 8
  %79 = call i32 @memcpy(i64 %77, %struct.wcn36xx_tx_bd* %78, i32 4)
  %80 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %14, align 8
  %81 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %12, align 8
  %84 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %86 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %12, align 8
  %89 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %12, align 8
  %91 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %90, i32 0, i32 0
  store i32 4, i32* %91, align 4
  %92 = load i32, i32* @WCN36XX_DBG_DXE, align 4
  %93 = call i32 @wcn36xx_dbg(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @WCN36XX_DBG_DXE_DUMP, align 4
  %95 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %12, align 8
  %96 = bitcast %struct.wcn36xx_dxe_desc* %95 to i8*
  %97 = call i32 @wcn36xx_dbg_dump(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 16)
  %98 = load i32, i32* @WCN36XX_DBG_DXE_DUMP, align 4
  %99 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %14, align 8
  %100 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @wcn36xx_dbg_dump(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %102, i32 4)
  %104 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %105 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DMA_TO_DEVICE, align 4
  %114 = call i32 @dma_map_single(i32 %106, i64 %109, i32 %112, i32 %113)
  %115 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %13, align 8
  %116 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %118 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %13, align 8
  %121 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @dma_mapping_error(i32 %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %66
  %126 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %127 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %18, align 4
  br label %207

132:                                              ; preds = %66
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %135 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %134, i32 0, i32 1
  store %struct.sk_buff* %133, %struct.sk_buff** %135, align 8
  %136 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %137 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %13, align 8
  %140 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %142 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %141, i32 0, i32 1
  %143 = load %struct.sk_buff*, %struct.sk_buff** %142, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %13, align 8
  %147 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @WCN36XX_DBG_DXE_DUMP, align 4
  %149 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %13, align 8
  %150 = bitcast %struct.wcn36xx_dxe_desc* %149 to i8*
  %151 = call i32 @wcn36xx_dbg_dump(i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %150, i32 16)
  %152 = load i32, i32* @WCN36XX_DBG_DXE_DUMP, align 4
  %153 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %154 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %153, i32 0, i32 1
  %155 = load %struct.sk_buff*, %struct.sk_buff** %154, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %160 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %159, i32 0, i32 1
  %161 = load %struct.sk_buff*, %struct.sk_buff** %160, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @wcn36xx_dbg_dump(i32 %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %158, i32 %163)
  %165 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %166 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %165, i32 0, i32 0
  %167 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %166, align 8
  %168 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %169 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %168, i32 0, i32 5
  store %struct.wcn36xx_dxe_ctl* %167, %struct.wcn36xx_dxe_ctl** %169, align 8
  %170 = call i32 (...) @wmb()
  %171 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %172 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %13, align 8
  %175 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = call i32 (...) @wmb()
  %177 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %178 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %12, align 8
  %181 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %132
  %185 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %8, align 8
  %186 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @WCN36XX_BMPS, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %192 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @WCN36XX_SMSM_WLAN_TX_ENABLE, align 4
  %195 = load i32, i32* @WCN36XX_SMSM_WLAN_TX_ENABLE, align 4
  %196 = call i32 @qcom_smem_state_update_bits(i32 %193, i32 %194, i32 %195)
  br label %206

197:                                              ; preds = %184, %132
  %198 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %199 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %200 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %203 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %198, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %197, %190
  store i32 0, i32* %18, align 4
  br label %207

207:                                              ; preds = %206, %125, %62
  %208 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %16, align 8
  %209 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %208, i32 0, i32 0
  %210 = load i64, i64* %17, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load i32, i32* %18, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %207, %43
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @memcpy(i64, %struct.wcn36xx_tx_bd*, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i8*, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qcom_smem_state_update_bits(i32, i32, i32) #1

declare dso_local i32 @wcn36xx_dxe_write_register(%struct.wcn36xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
