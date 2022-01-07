; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*)* @smsc9420_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_free_rx_ring(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca %struct.smsc9420_pdata*, align 8
  %3 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %2, align 8
  %4 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %5 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %110

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %95, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @RX_RING_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %23 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %33 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_kfree_skb_any(i64 %39)
  br label %41

41:                                               ; preds = %31, %21
  %42 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %43 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %53 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %56 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @PKT_BUF_SZ, align 4
  %64 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %65 = call i32 @pci_unmap_single(i32 %54, i64 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %51, %41
  %67 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %68 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %75 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %82 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %89 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %66
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %17

98:                                               ; preds = %17
  %99 = call i32 (...) @wmb()
  %100 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %101 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = call i32 @kfree(%struct.TYPE_4__* %102)
  %104 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %105 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %104, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %105, align 8
  %106 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %107 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %109 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %98, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
