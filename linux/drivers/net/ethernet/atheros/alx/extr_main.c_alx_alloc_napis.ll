; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_alloc_napis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_alloc_napis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.alx_napi**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.alx_napi = type { i32, %struct.alx_rx_queue*, %struct.alx_tx_queue*, i32, %struct.alx_priv* }
%struct.alx_rx_queue = type { i32*, i32, i32, i64, %struct.alx_napi* }
%struct.alx_tx_queue = type { i32, i32*, i32, i32, i32, i32 }

@ALX_ISR_ALL_QUEUES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@alx_poll = common dso_local global i32 0, align 4
@tx_pidx_reg = common dso_local global i32* null, align 8
@tx_cidx_reg = common dso_local global i32* null, align 8
@tx_vect_mask = common dso_local global i32* null, align 8
@rx_vect_mask = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"error allocating internal structures\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*)* @alx_alloc_napis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_alloc_napis(%struct.alx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.alx_napi*, align 8
  %5 = alloca %struct.alx_rx_queue*, align 8
  %6 = alloca %struct.alx_tx_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  %8 = load i32, i32* @ALX_ISR_ALL_QUEUES, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %11 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %45, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %17 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 40, i32 %21)
  %23 = bitcast i8* %22 to %struct.alx_napi*
  store %struct.alx_napi* %23, %struct.alx_napi** %4, align 8
  %24 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %25 = icmp ne %struct.alx_napi* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %184

27:                                               ; preds = %20
  %28 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %29 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %30 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %29, i32 0, i32 4
  store %struct.alx_priv* %28, %struct.alx_priv** %30, align 8
  %31 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %32 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %35 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %34, i32 0, i32 3
  %36 = load i32, i32* @alx_poll, align 4
  %37 = call i32 @netif_napi_add(i32 %33, i32* %35, i32 %36, i32 64)
  %38 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %39 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %40 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %39, i32 0, i32 6
  %41 = load %struct.alx_napi**, %struct.alx_napi*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.alx_napi*, %struct.alx_napi** %41, i64 %43
  store %struct.alx_napi* %38, %struct.alx_napi** %44, align 8
  br label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %125, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %52 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %49
  %56 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %57 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %56, i32 0, i32 6
  %58 = load %struct.alx_napi**, %struct.alx_napi*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.alx_napi*, %struct.alx_napi** %58, i64 %60
  %62 = load %struct.alx_napi*, %struct.alx_napi** %61, align 8
  store %struct.alx_napi* %62, %struct.alx_napi** %4, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kzalloc(i32 32, i32 %63)
  %65 = bitcast i8* %64 to %struct.alx_tx_queue*
  store %struct.alx_tx_queue* %65, %struct.alx_tx_queue** %6, align 8
  %66 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %67 = icmp ne %struct.alx_tx_queue* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  br label %184

69:                                               ; preds = %55
  %70 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %71 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %72 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %71, i32 0, i32 2
  store %struct.alx_tx_queue* %70, %struct.alx_tx_queue** %72, align 8
  %73 = load i32*, i32** @tx_pidx_reg, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %79 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** @tx_cidx_reg, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %86 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %89 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %91 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %94 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %96 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %99 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %101 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %6, align 8
  %106 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  %107 = load i32*, i32** @tx_vect_mask, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %113 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32*, i32** @tx_vect_mask, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %122 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %69
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %49

128:                                              ; preds = %49
  %129 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %130 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %129, i32 0, i32 6
  %131 = load %struct.alx_napi**, %struct.alx_napi*** %130, align 8
  %132 = getelementptr inbounds %struct.alx_napi*, %struct.alx_napi** %131, i64 0
  %133 = load %struct.alx_napi*, %struct.alx_napi** %132, align 8
  store %struct.alx_napi* %133, %struct.alx_napi** %4, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i8* @kzalloc(i32 32, i32 %134)
  %136 = bitcast i8* %135 to %struct.alx_rx_queue*
  store %struct.alx_rx_queue* %136, %struct.alx_rx_queue** %5, align 8
  %137 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %138 = icmp ne %struct.alx_rx_queue* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  br label %184

140:                                              ; preds = %128
  %141 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %142 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %143 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %142, i32 0, i32 1
  store %struct.alx_rx_queue* %141, %struct.alx_rx_queue** %143, align 8
  %144 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %145 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %144, i32 0, i32 6
  %146 = load %struct.alx_napi**, %struct.alx_napi*** %145, align 8
  %147 = getelementptr inbounds %struct.alx_napi*, %struct.alx_napi** %146, i64 0
  %148 = load %struct.alx_napi*, %struct.alx_napi** %147, align 8
  %149 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %150 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %149, i32 0, i32 4
  store %struct.alx_napi* %148, %struct.alx_napi** %150, align 8
  %151 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %152 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  %153 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %154 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %157 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %159 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %162 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %164 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %169 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  %170 = load i32*, i32** @rx_vect_mask, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.alx_napi*, %struct.alx_napi** %4, align 8
  %174 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i32*, i32** @rx_vect_mask, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %181 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  store i32 0, i32* %2, align 4
  br label %193

184:                                              ; preds = %139, %68, %26
  %185 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %186 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @netdev_err(i32 %187, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %190 = call i32 @alx_free_napis(%struct.alx_priv* %189)
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %184, %140
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @alx_free_napis(%struct.alx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
