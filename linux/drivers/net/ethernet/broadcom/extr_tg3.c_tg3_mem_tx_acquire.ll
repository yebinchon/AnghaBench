; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_mem_tx_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_mem_tx_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__*, %struct.tg3_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_napi = type { i32, i32, i32 }

@ENABLE_TSS = common dso_local global i32 0, align 4
@TG3_TX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TG3_TX_RING_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_mem_tx_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_mem_tx_acquire(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = getelementptr inbounds %struct.tg3, %struct.tg3* %6, i32 0, i32 2
  %8 = load %struct.tg3_napi*, %struct.tg3_napi** %7, align 8
  %9 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %8, i64 0
  store %struct.tg3_napi* %9, %struct.tg3_napi** %5, align 8
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = load i32, i32* @ENABLE_TSS, align 4
  %12 = call i64 @tg3_flag(%struct.tg3* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %16 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %15, i32 1
  store %struct.tg3_napi* %16, %struct.tg3_napi** %5, align 8
  br label %17

17:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tg3*, %struct.tg3** %3, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = load i32, i32* @TG3_TX_RING_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @kcalloc(i32 %25, i32 4, i32 %26)
  %28 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %29 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %31 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %59

35:                                               ; preds = %24
  %36 = load %struct.tg3*, %struct.tg3** %3, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* @TG3_TX_RING_BYTES, align 4
  %41 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %42 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @dma_alloc_coherent(i32* %39, i32 %40, i32* %42, i32 %43)
  %45 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %46 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %48 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  br label %59

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %57 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %56, i32 1
  store %struct.tg3_napi* %57, %struct.tg3_napi** %5, align 8
  br label %18

58:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %64

59:                                               ; preds = %51, %34
  %60 = load %struct.tg3*, %struct.tg3** %3, align 8
  %61 = call i32 @tg3_mem_tx_release(%struct.tg3* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %58
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @tg3_mem_tx_release(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
