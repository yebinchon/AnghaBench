; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i64 }
%struct.mv643xx_eth_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*)* @txq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_deinit(%struct.tx_queue* %0) #0 {
  %2 = alloca %struct.tx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.tx_queue* %0, %struct.tx_queue** %2, align 8
  %4 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %5 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %4)
  store %struct.mv643xx_eth_private* %5, %struct.mv643xx_eth_private** %3, align 8
  %6 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %7 = call i32 @txq_disable(%struct.tx_queue* %6)
  %8 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %9 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @txq_reclaim(%struct.tx_queue* %8, i32 %11, i32 1)
  %13 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %31 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @iounmap(i64 %37)
  br label %57

39:                                               ; preds = %26, %1
  %40 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %41 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %47 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %51 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %54 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dma_free_coherent(i32 %45, i32 %49, i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %39, %34
  %58 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %59 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kfree(i32 %60)
  %62 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %63 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %68 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %74 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %79 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %82 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dma_free_coherent(i32 %72, i32 %77, i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %66, %57
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local i32 @txq_disable(%struct.tx_queue*) #1

declare dso_local i32 @txq_reclaim(%struct.tx_queue*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
