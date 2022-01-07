; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pch_gbe_tx_ring = type { i32, i32, %struct.pch_gbe_buffer*, i32 }
%struct.pch_gbe_buffer = type { i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.pch_gbe_tx_desc = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"next_to_clean : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"gbec_status:0x%04x  dma_status:0x%04x\0A\00", align 1
@PCH_GBE_TX_WEIGHT = common dso_local global i32 0, align 4
@DSC_INIT16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"clean_tx: transmit queue warning (%x,%x) unused=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"clean_tx: unused=%d loops=%d found tx_desc[%x,%x:%x].gbec_status=%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gbec_status:0x%04x\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_ABT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Transfer Abort Error\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_CRSER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Transfer Carrier Sense Error\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_EXCOL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Transfer Collision Abort Error\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_SNGCOL = common dso_local global i32 0, align 4
@PCH_GBE_TXD_GMAC_STAT_MLTCOL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Transfer Collision\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_CMPLT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"unmap buffer_info->dma : %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"trim buffer_info->skb : %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"called pch_gbe_unmap_and_free_tx_resource() %d count\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Tx wake queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*)* @pch_gbe_clean_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_clean_tx(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_tx_ring*, align 8
  %5 = alloca %struct.pch_gbe_tx_desc*, align 8
  %6 = alloca %struct.pch_gbe_buffer*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %25, i32 %26)
  store %struct.pch_gbe_tx_desc* %27, %struct.pch_gbe_tx_desc** %5, align 8
  %28 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %32 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %39 = call i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DSC_INIT16, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %118

50:                                               ; preds = %2
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %57, %54
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %94, %69
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %76, i32 %77)
  store %struct.pch_gbe_tx_desc* %78, %struct.pch_gbe_tx_desc** %5, align 8
  %79 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DSC_INIT16, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %97

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %71

97:                                               ; preds = %84, %71
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %113 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %104, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106, i32 %107, i32 %108, i32 %111, i32 %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %101, %97
  br label %118

118:                                              ; preds = %117, %50, %2
  br label %119

119:                                              ; preds = %317, %118
  %120 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %121 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DSC_INIT16, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %318

126:                                              ; preds = %119
  %127 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %131 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %135 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %134, i32 0, i32 2
  %136 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %136, i64 %138
  store %struct.pch_gbe_buffer* %139, %struct.pch_gbe_buffer** %6, align 8
  %140 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %141 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %140, i32 0, i32 1
  %142 = load %struct.sk_buff*, %struct.sk_buff** %141, align 8
  store %struct.sk_buff* %142, %struct.sk_buff** %7, align 8
  store i32 1, i32* %10, align 4
  %143 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %144 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_ABT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %126
  %150 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @netdev_err(i32 %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %254

159:                                              ; preds = %126
  %160 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %161 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_CRSER, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %168 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @netdev_err(i32 %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %253

176:                                              ; preds = %159
  %177 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %178 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_EXCOL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %176
  %184 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @netdev_err(i32 %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %252

193:                                              ; preds = %176
  %194 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %195 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_SNGCOL, align 4
  %198 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_MLTCOL, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %193
  %203 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %204 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %209 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %215
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 4
  %223 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %224 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %251

227:                                              ; preds = %193
  %228 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %229 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_CMPLT, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %227
  %235 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %236 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %244 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %242
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 4
  br label %250

250:                                              ; preds = %234, %227
  br label %251

251:                                              ; preds = %250, %202
  br label %252

252:                                              ; preds = %251, %183
  br label %253

253:                                              ; preds = %252, %166
  br label %254

254:                                              ; preds = %253, %149
  %255 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %256 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %254
  %260 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %261 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %262, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %263)
  %265 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %266 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %265, i32 0, i32 2
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %270 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %273 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @DMA_TO_DEVICE, align 4
  %276 = call i32 @dma_unmap_single(i32* %268, i32 %271, i32 %274, i32 %275)
  %277 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %278 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %277, i32 0, i32 0
  store i32 0, i32* %278, align 8
  br label %279

279:                                              ; preds = %259, %254
  %280 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %281 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %280, i32 0, i32 1
  %282 = load %struct.sk_buff*, %struct.sk_buff** %281, align 8
  %283 = icmp ne %struct.sk_buff* %282, null
  br i1 %283, label %284, label %294

284:                                              ; preds = %279
  %285 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %286 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %287, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %288)
  %290 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %291 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %290, i32 0, i32 1
  %292 = load %struct.sk_buff*, %struct.sk_buff** %291, align 8
  %293 = call i32 @skb_trim(%struct.sk_buff* %292, i32 0)
  br label %294

294:                                              ; preds = %284, %279
  %295 = load i32, i32* @DSC_INIT16, align 4
  %296 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %297 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %8, align 4
  %299 = add i32 %298, 1
  store i32 %299, i32* %8, align 4
  %300 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %301 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %299, %302
  %304 = zext i1 %303 to i32
  %305 = call i64 @unlikely(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %294
  store i32 0, i32* %8, align 4
  br label %308

308:                                              ; preds = %307, %294
  %309 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %310 = load i32, i32* %8, align 4
  %311 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %309, i32 %310)
  store %struct.pch_gbe_tx_desc* %311, %struct.pch_gbe_tx_desc** %5, align 8
  %312 = load i32, i32* %9, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %308
  store i32 0, i32* %10, align 4
  br label %318

317:                                              ; preds = %308
  br label %119

318:                                              ; preds = %316, %119
  %319 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %320 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %321, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* %9, align 4
  %325 = icmp ugt i32 %324, 0
  br i1 %325, label %326, label %373

326:                                              ; preds = %318
  %327 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %328 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @netif_tx_lock(i32 %329)
  %331 = load i32, i32* %10, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %326
  %334 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %335 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @netif_queue_stopped(i32 %336)
  %338 = icmp ne i64 %337, 0
  br label %339

339:                                              ; preds = %333, %326
  %340 = phi i1 [ false, %326 ], [ %338, %333 ]
  %341 = zext i1 %340 to i32
  %342 = call i64 @unlikely(i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %339
  %345 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %346 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @netif_wake_queue(i32 %347)
  %349 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %350 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 4
  %354 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %355 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %356, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %358

358:                                              ; preds = %344, %339
  %359 = load i32, i32* %8, align 4
  %360 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %361 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 8
  %362 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %363 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %366 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %364, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %367)
  %369 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %370 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @netif_tx_unlock(i32 %371)
  br label %373

373:                                              ; preds = %358, %318
  %374 = load i32, i32* %10, align 4
  ret i32 %374
}

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8, i32) #1

declare dso_local i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_lock(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_tx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
