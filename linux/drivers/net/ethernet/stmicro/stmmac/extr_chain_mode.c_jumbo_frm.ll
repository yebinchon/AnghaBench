; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_chain_mode.c_jumbo_frm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_chain_mode.c_jumbo_frm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.stmmac_tx_queue = type { i32, %struct.TYPE_4__*, %struct.dma_desc*, i32**, %struct.stmmac_priv* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dma_desc = type { i8* }
%struct.stmmac_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BUF_SIZE_8KiB = common dso_local global i32 0, align 4
@BUF_SIZE_2KiB = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@DMA_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, i32)* @jumbo_frm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumbo_frm(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stmmac_tx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stmmac_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dma_desc*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.stmmac_tx_queue*
  store %struct.stmmac_tx_queue* %18, %struct.stmmac_tx_queue** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @skb_headlen(%struct.sk_buff* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %22 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %21, i32 0, i32 4
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %22, align 8
  store %struct.stmmac_priv* %23, %struct.stmmac_priv** %10, align 8
  %24 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %25 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store i32 1, i32* %14, align 4
  %27 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %28 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %27, i32 0, i32 2
  %29 = load %struct.dma_desc*, %struct.dma_desc** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %29, i64 %31
  store %struct.dma_desc* %32, %struct.dma_desc** %16, align 8
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @BUF_SIZE_8KiB, align 4
  store i32 %40, i32* %12, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @BUF_SIZE_2KiB, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub i32 %44, %45
  store i32 %46, i32* %15, align 4
  %47 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %48 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_map_single(i32 %49, i64 %52, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %59 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %61 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @dma_mapping_error(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %230

67:                                               ; preds = %43
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %70 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %78 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %85 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv* %84, %struct.dma_desc* %85, i32 1, i32 %86, i32 %87, i32 %88, i32 0, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %224, %67
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %225

96:                                               ; preds = %93
  %97 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %98 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @DMA_TX_SIZE, align 4
  %105 = call i32 @STMMAC_GET_ENTRY(i32 %103, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %107 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %106, i32 0, i32 2
  %108 = load %struct.dma_desc*, %struct.dma_desc** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %108, i64 %110
  store %struct.dma_desc* %111, %struct.dma_desc** %16, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ugt i32 %112, %113
  br i1 %114, label %115, label %172

115:                                              ; preds = %96
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = add nsw i64 %121, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @DMA_TO_DEVICE, align 4
  %129 = call i32 @dma_map_single(i32 %118, i64 %126, i32 %127, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %133 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %135 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i64 @dma_mapping_error(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %230

141:                                              ; preds = %115
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %144 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i32 %142, i32* %149, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %152 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 %150, i32* %157, align 4
  %158 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %159 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv* %158, %struct.dma_desc* %159, i32 0, i32 %160, i32 %161, i32 %162, i32 1, i32 0, i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %15, align 4
  %169 = sub i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %14, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %224

172:                                              ; preds = %96
  %173 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %174 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %14, align 4
  %181 = mul i32 %179, %180
  %182 = zext i32 %181 to i64
  %183 = add nsw i64 %178, %182
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @DMA_TO_DEVICE, align 4
  %186 = call i32 @dma_map_single(i32 %175, i64 %183, i32 %184, i32 %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i8* @cpu_to_le32(i32 %187)
  %189 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %190 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  %191 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %192 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i64 @dma_mapping_error(i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %172
  store i32 -1, i32* %4, align 4
  br label %230

198:                                              ; preds = %172
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %201 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %209 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  store i32 %207, i32* %214, align 4
  %215 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %216 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %220 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv* %215, %struct.dma_desc* %216, i32 0, i32 %217, i32 %218, i32 %219, i32 1, i32 1, i32 %222)
  store i32 0, i32* %15, align 4
  br label %224

224:                                              ; preds = %198, %141
  br label %93

225:                                              ; preds = %93
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %228 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %225, %197, %140, %66
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv*, %struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @STMMAC_GET_ENTRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
