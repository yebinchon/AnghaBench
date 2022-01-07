; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_init_dma_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_init_dma_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i64, i32, %struct.TYPE_6__*, %struct.stmmac_tx_queue*, %struct.stmmac_rx_queue*, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.stmmac_tx_queue = type { i32, i32 }
%struct.stmmac_rx_queue = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid DMA configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STMMAC_RING_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to reset the dma\0A\00", align 1
@DMA_RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_init_dma_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_init_dma_engine(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stmmac_rx_queue*, align 8
  %8 = alloca %struct.stmmac_tx_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @max(i64 %22, i64 %23)
  store i64 %24, i64* %6, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %212

47:                                               ; preds = %31
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @STMMAC_RING_MODE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %52, %47
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @stmmac_reset(%struct.stmmac_priv* %60, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %69 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %2, align 4
  br label %212

73:                                               ; preds = %59
  %74 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %75 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %76 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %79 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @stmmac_dma_init(%struct.stmmac_priv* %74, i32 %77, %struct.TYPE_7__* %82, i32 %83)
  %85 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %86 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %73
  %92 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %93 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %94 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %97 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @stmmac_axi(%struct.stmmac_priv* %92, i32 %95, i64 %100)
  br label %102

102:                                              ; preds = %91, %73
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %119, %102
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %6, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %109 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %110 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %113 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @stmmac_init_chan(%struct.stmmac_priv* %108, i32 %111, %struct.TYPE_7__* %116, i64 %117)
  br label %119

119:                                              ; preds = %107
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  br label %103

122:                                              ; preds = %103
  store i64 0, i64* %9, align 8
  br label %123

123:                                              ; preds = %165, %122
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %4, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %123
  %128 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %129 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %128, i32 0, i32 4
  %130 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %130, i64 %131
  store %struct.stmmac_rx_queue* %132, %struct.stmmac_rx_queue** %7, align 8
  %133 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %134 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %135 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %138 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %137, i32 0, i32 2
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %143 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @stmmac_init_rx_chan(%struct.stmmac_priv* %133, i32 %136, %struct.TYPE_7__* %141, i64 %144, i64 %145)
  %147 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %148 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @DMA_RX_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  %153 = add i64 %149, %152
  %154 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %155 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %157 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %158 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %161 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @stmmac_set_rx_tail_ptr(%struct.stmmac_priv* %156, i32 %159, i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %127
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %9, align 8
  br label %123

168:                                              ; preds = %123
  store i64 0, i64* %9, align 8
  br label %169

169:                                              ; preds = %207, %168
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* %5, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %169
  %174 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %175 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %174, i32 0, i32 3
  %176 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %176, i64 %177
  store %struct.stmmac_tx_queue* %178, %struct.stmmac_tx_queue** %8, align 8
  %179 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %180 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %181 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %184 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %183, i32 0, i32 2
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %189 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %9, align 8
  %192 = call i32 @stmmac_init_tx_chan(%struct.stmmac_priv* %179, i32 %182, %struct.TYPE_7__* %187, i32 %190, i64 %191)
  %193 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %194 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %197 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %199 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %200 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %203 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i64, i64* %9, align 8
  %206 = call i32 @stmmac_set_tx_tail_ptr(%struct.stmmac_priv* %198, i32 %201, i32 %204, i64 %205)
  br label %207

207:                                              ; preds = %173
  %208 = load i64, i64* %9, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %9, align 8
  br label %169

210:                                              ; preds = %169
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %210, %67, %40
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stmmac_reset(%struct.stmmac_priv*, i32) #1

declare dso_local i32 @stmmac_dma_init(%struct.stmmac_priv*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @stmmac_axi(%struct.stmmac_priv*, i32, i64) #1

declare dso_local i32 @stmmac_init_chan(%struct.stmmac_priv*, i32, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @stmmac_init_rx_chan(%struct.stmmac_priv*, i32, %struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @stmmac_set_rx_tail_ptr(%struct.stmmac_priv*, i32, i64, i64) #1

declare dso_local i32 @stmmac_init_tx_chan(%struct.stmmac_priv*, i32, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @stmmac_set_tx_tail_ptr(%struct.stmmac_priv*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
