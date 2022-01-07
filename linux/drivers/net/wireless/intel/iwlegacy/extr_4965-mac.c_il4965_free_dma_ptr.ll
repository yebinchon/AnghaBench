; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_free_dma_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_free_dma_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.il_dma_ptr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_dma_ptr*)* @il4965_free_dma_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_free_dma_ptr(%struct.il_priv* %0, %struct.il_dma_ptr* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_dma_ptr*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_dma_ptr* %1, %struct.il_dma_ptr** %4, align 8
  %5 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %4, align 8
  %6 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %4, align 8
  %20 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %4, align 8
  %23 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %4, align 8
  %26 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dma_free_coherent(i32* %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %4, align 8
  %30 = call i32 @memset(%struct.il_dma_ptr* %29, i32 0, i32 12)
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.il_dma_ptr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
