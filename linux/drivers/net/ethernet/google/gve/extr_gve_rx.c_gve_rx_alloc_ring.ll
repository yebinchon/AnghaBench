; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, i32, i32, %struct.TYPE_4__*, %struct.gve_rx_ring* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gve_rx_ring = type { i32, i32, i32, %struct.TYPE_6__, i32*, i64, %struct.TYPE_5__, i64, %struct.gve_priv* }
%struct.TYPE_6__ = type { i32*, i64, i32 }
%struct.TYPE_5__ = type { i32, i8*, i64 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"allocating rx ring\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"rx[%d]->data.data_bus=%lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*, i32)* @gve_rx_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_rx_alloc_ring(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gve_rx_ring*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %14 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %13, i32 0, i32 4
  %15 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %15, i64 %17
  store %struct.gve_rx_ring* %18, %struct.gve_rx_ring** %6, align 8
  %19 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %20 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %24 = load i32, i32* @drv, align 4
  %25 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %26 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (%struct.gve_priv*, i32, i32, i8*, ...) @netif_dbg(%struct.gve_priv* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %30 = call i32 @memset(%struct.gve_rx_ring* %29, i32 0, i32 96)
  %31 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %32 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %33 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %32, i32 0, i32 8
  store %struct.gve_priv* %31, %struct.gve_priv** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %38 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  store i64 %46, i64* %11, align 8
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dma_alloc_coherent(%struct.device* %47, i64 %48, i64* %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %56 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  %58 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %59 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %2
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %192

66:                                               ; preds = %2
  %67 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %68 = call i32 @gve_prefill_rx_pages(%struct.gve_rx_ring* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %173

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %77 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = call i32 (...) @dma_wmb()
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %81 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %80, i32 0, i32 5
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @dma_alloc_coherent(%struct.device* %79, i64 4, i64* %81, i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %86 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %85, i32 0, i32 4
  store i32* %84, i32** %86, align 8
  %87 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %88 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %74
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %167

94:                                               ; preds = %74
  %95 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %96 = load i32, i32* @drv, align 4
  %97 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %98 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %102 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (%struct.gve_priv*, i32, i32, i8*, ...) @netif_dbg(%struct.gve_priv* %95, i32 %96, i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %104)
  %106 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %107 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = udiv i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @PAGE_SIZE, align 8
  %118 = mul i64 %116, %117
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %94
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %156

124:                                              ; preds = %94
  %125 = load %struct.device*, %struct.device** %7, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %128 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @dma_alloc_coherent(%struct.device* %125, i64 %126, i64* %129, i32 %130)
  %132 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %133 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %136 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %124
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %12, align 4
  br label %156

143:                                              ; preds = %124
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %147 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %149 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %148, i32 0, i32 7
  store i64 0, i64* %149, align 8
  %150 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %151 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @gve_rx_add_to_block(%struct.gve_priv* %153, i32 %154)
  store i32 0, i32* %3, align 4
  br label %192

156:                                              ; preds = %140, %121
  %157 = load %struct.device*, %struct.device** %7, align 8
  %158 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %159 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %162 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @dma_free_coherent(%struct.device* %157, i64 4, i32* %160, i64 %163)
  %165 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %166 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %165, i32 0, i32 4
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %156, %91
  %168 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %169 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @kvfree(i32 %171)
  br label %173

173:                                              ; preds = %167, %71
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 4, %175
  store i64 %176, i64* %11, align 8
  %177 = load %struct.device*, %struct.device** %7, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %180 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %184 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @dma_free_coherent(%struct.device* %177, i64 %178, i32* %182, i64 %186)
  %188 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %189 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32* null, i32** %190, align 8
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %173, %143, %63
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @netif_dbg(%struct.gve_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.gve_rx_ring*, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @gve_prefill_rx_pages(%struct.gve_rx_ring*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @gve_rx_add_to_block(%struct.gve_priv*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32*, i64) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
