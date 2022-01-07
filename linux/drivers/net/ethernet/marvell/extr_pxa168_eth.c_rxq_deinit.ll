; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_rxq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_rxq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pxa168_eth_private = type { i32, i64*, i32, i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Error in freeing Rx Ring. %d skb's still\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rxq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxq_deinit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pxa168_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.pxa168_eth_private* %6, %struct.pxa168_eth_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %9 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %15 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i1 [ false, %7 ], [ %17, %12 ]
  br i1 %19, label %20, label %46

20:                                               ; preds = %18
  %21 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %22 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %31 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dev_kfree_skb(i64 %36)
  %38 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %39 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %29, %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %18
  %47 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %48 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %54 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %59 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %64 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %63, i32 0, i32 5
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %70 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %73 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %76 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dma_free_coherent(i32 %68, i32 %71, i64 %74, i32 %77)
  br label %79

79:                                               ; preds = %62, %57
  %80 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %81 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = call i32 @kfree(i64* %82)
  ret void
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
