; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_4__*, i64, %struct.tx_queue* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tx_queue = type { i32, i32, i32, i32, i32, i64, %struct.tx_desc*, i32, i32, i32*, i64, i64, i64, i64 }
%struct.tx_desc = type { i64, i64 }

@MV643XX_MAX_SKB_DESCS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't allocate tx ring (%d bytes)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, i32)* @txq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_init(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_queue*, align 8
  %7 = alloca %struct.tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tx_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %13, i32 0, i32 4
  %15 = load %struct.tx_queue*, %struct.tx_queue** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %15, i64 %17
  store %struct.tx_queue* %18, %struct.tx_queue** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %21 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %23 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %26 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %28 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MV643XX_MAX_SKB_DESCS, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %33 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %35 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 2
  %38 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %39 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %41 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %40, i32 0, i32 13
  store i64 0, i64* %41, align 8
  %42 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %43 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %42, i32 0, i32 12
  store i64 0, i64* %43, align 8
  %44 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %45 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %44, i32 0, i32 11
  store i64 0, i64* %45, align 8
  %46 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %47 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 16
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %2
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %57 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %65 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.tx_desc* @ioremap(i64 %63, i32 %66)
  %68 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %69 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %68, i32 0, i32 6
  store %struct.tx_desc* %67, %struct.tx_desc** %69, align 8
  %70 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %71 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %74 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  br label %90

75:                                               ; preds = %54, %2
  %76 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %77 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %84 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %83, i32 0, i32 5
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @dma_alloc_coherent(i32 %81, i32 %82, i64* %84, i32 %85)
  %87 = bitcast i8* %86 to %struct.tx_desc*
  %88 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %89 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %88, i32 0, i32 6
  store %struct.tx_desc* %87, %struct.tx_desc** %89, align 8
  br label %90

90:                                               ; preds = %75, %60
  %91 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %92 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %91, i32 0, i32 6
  %93 = load %struct.tx_desc*, %struct.tx_desc** %92, align 8
  %94 = icmp eq %struct.tx_desc* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %97 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @netdev_err(%struct.TYPE_4__* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %232

103:                                              ; preds = %90
  %104 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %105 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %104, i32 0, i32 6
  %106 = load %struct.tx_desc*, %struct.tx_desc** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @memset(%struct.tx_desc* %106, i32 0, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %111 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %113 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %112, i32 0, i32 6
  %114 = load %struct.tx_desc*, %struct.tx_desc** %113, align 8
  store %struct.tx_desc* %114, %struct.tx_desc** %7, align 8
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %146, %103
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %118 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %115
  %122 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %122, i64 %124
  store %struct.tx_desc* %125, %struct.tx_desc** %11, align 8
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %130 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %133, %121
  %135 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %136 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %138 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 16
  %143 = add i64 %139, %142
  %144 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %145 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %115

149:                                              ; preds = %115
  %150 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %151 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i32 @kcalloc(i32 %152, i32 1, i32 %153)
  %155 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %156 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 8
  %157 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %158 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %149
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %199

164:                                              ; preds = %149
  %165 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %166 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %172 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %177 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %176, i32 0, i32 10
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i8* @dma_alloc_coherent(i32 %170, i32 %175, i64* %177, i32 %178)
  %180 = bitcast i8* %179 to i32*
  %181 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %182 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %181, i32 0, i32 9
  store i32* %180, i32** %182, align 8
  %183 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %184 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %183, i32 0, i32 9
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %164
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %9, align 4
  br label %194

190:                                              ; preds = %164
  %191 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %192 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %191, i32 0, i32 8
  %193 = call i32 @skb_queue_head_init(i32* %192)
  store i32 0, i32* %3, align 4
  br label %232

194:                                              ; preds = %187
  %195 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %196 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @kfree(i32 %197)
  br label %199

199:                                              ; preds = %194, %161
  %200 = load i32, i32* %5, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %205 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp sle i32 %203, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %210 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %209, i32 0, i32 6
  %211 = load %struct.tx_desc*, %struct.tx_desc** %210, align 8
  %212 = call i32 @iounmap(%struct.tx_desc* %211)
  br label %230

213:                                              ; preds = %202, %199
  %214 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %215 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %214, i32 0, i32 2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %221 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %224 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %223, i32 0, i32 6
  %225 = load %struct.tx_desc*, %struct.tx_desc** %224, align 8
  %226 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %227 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @dma_free_coherent(i32 %219, i32 %222, %struct.tx_desc* %225, i64 %228)
  br label %230

230:                                              ; preds = %213, %208
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %230, %190, %95
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local %struct.tx_desc* @ioremap(i64, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @memset(%struct.tx_desc*, i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(%struct.tx_desc*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.tx_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
