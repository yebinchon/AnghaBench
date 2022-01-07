; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_aggr_txq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_aggr_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mvpp2_tx_queue = type { i32, i32, i32, i32 }
%struct.mvpp2 = type { i64 }

@MVPP2_AGGR_TXQ_SIZE = common dso_local global i32 0, align 4
@MVPP2_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVPP21 = common dso_local global i64 0, align 8
@MVPP22_AGGR_TXQ_DESC_ADDR_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mvpp2_tx_queue*, i32, %struct.mvpp2*)* @mvpp2_aggr_txq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_aggr_txq_init(%struct.platform_device* %0, %struct.mvpp2_tx_queue* %1, i32 %2, %struct.mvpp2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.mvpp2_tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvpp2*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mvpp2* %3, %struct.mvpp2** %9, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @MVPP2_AGGR_TXQ_SIZE, align 4
  %14 = load i32, i32* @MVPP2_DESC_ALIGNED_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %17 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @dma_alloc_coherent(i32* %12, i32 %15, i32* %17, i32 %18)
  %20 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %21 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %23 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %66

29:                                               ; preds = %4
  %30 = load i32, i32* @MVPP2_AGGR_TXQ_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %33 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mvpp2*, %struct.mvpp2** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @MVPP2_AGGR_TXQ_INDEX_REG(i32 %35)
  %37 = call i32 @mvpp2_read(%struct.mvpp2* %34, i32 %36)
  %38 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %39 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mvpp2*, %struct.mvpp2** %9, align 8
  %41 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MVPP21, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %47 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %55

49:                                               ; preds = %29
  %50 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %51 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MVPP22_AGGR_TXQ_DESC_ADDR_OFFS, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load %struct.mvpp2*, %struct.mvpp2** %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @MVPP2_AGGR_TXQ_DESC_ADDR_REG(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @mvpp2_write(%struct.mvpp2* %56, i32 %58, i32 %59)
  %61 = load %struct.mvpp2*, %struct.mvpp2** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @MVPP2_AGGR_TXQ_DESC_SIZE_REG(i32 %62)
  %64 = load i32, i32* @MVPP2_AGGR_TXQ_SIZE, align 4
  %65 = call i32 @mvpp2_write(%struct.mvpp2* %61, i32 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %55, %26
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_AGGR_TXQ_INDEX_REG(i32) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_AGGR_TXQ_DESC_ADDR_REG(i32) #1

declare dso_local i32 @MVPP2_AGGR_TXQ_DESC_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
