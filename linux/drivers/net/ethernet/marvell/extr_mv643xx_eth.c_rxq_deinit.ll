; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_queue = type { i32, i64, i64, i64*, i32, i32, i64 }
%struct.mv643xx_eth_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"error freeing rx ring -- %d skbs stuck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rx_queue*)* @rxq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxq_deinit(%struct.rx_queue* %0) #0 {
  %2 = alloca %struct.rx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.rx_queue* %0, %struct.rx_queue** %2, align 8
  %5 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %6 = call %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue* %5)
  store %struct.mv643xx_eth_private* %6, %struct.mv643xx_eth_private** %3, align 8
  %7 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %8 = call i32 @rxq_disable(%struct.rx_queue* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_consume_skb_any(i64 %31)
  %33 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %24, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %43 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %48 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %51 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @netdev_err(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %56 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %61 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %64 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %69 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iounmap(i32 %70)
  br label %89

72:                                               ; preds = %59, %54
  %73 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %74 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %80 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %83 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %86 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_coherent(i32 %78, i64 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %72, %67
  %90 = load %struct.rx_queue*, %struct.rx_queue** %2, align 8
  %91 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = call i32 @kfree(i64* %92)
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue*) #1

declare dso_local i32 @rxq_disable(%struct.rx_queue*) #1

declare dso_local i32 @dev_consume_skb_any(i64) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
