; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*)* @smsc9420_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_free_tx_ring(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca %struct.smsc9420_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %2, align 8
  %5 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %13 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %108

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %93, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @TX_RING_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %96

22:                                               ; preds = %18
  %23 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %24 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %22
  %34 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %35 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %47 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %50 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %61 = call i32 @pci_unmap_single(i32 %48, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %33, %22
  %65 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %66 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %73 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %80 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %87 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %64
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %18

96:                                               ; preds = %18
  %97 = call i32 (...) @wmb()
  %98 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %99 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i32 @kfree(%struct.TYPE_4__* %100)
  %102 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %103 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %102, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %103, align 8
  %104 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %105 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %107 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %96, %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
