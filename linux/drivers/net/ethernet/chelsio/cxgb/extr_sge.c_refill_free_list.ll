; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_refill_free_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_refill_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.freelQ = type { i64, i32, i32, i64, i64, i32, %struct.freelQ_e*, %struct.freelQ_ce* }
%struct.freelQ_e = type { i32, i32, i32, i64 }
%struct.freelQ_ce = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.freelQ*)* @refill_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_free_list(%struct.sge* %0, %struct.freelQ* %1) #0 {
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.freelQ*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.freelQ_ce*, align 8
  %7 = alloca %struct.freelQ_e*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  store %struct.sge* %0, %struct.sge** %3, align 8
  store %struct.freelQ* %1, %struct.freelQ** %4, align 8
  %11 = load %struct.sge*, %struct.sge** %3, align 8
  %12 = getelementptr inbounds %struct.sge, %struct.sge* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %17 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %16, i32 0, i32 7
  %18 = load %struct.freelQ_ce*, %struct.freelQ_ce** %17, align 8
  %19 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %20 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %18, i64 %21
  store %struct.freelQ_ce* %22, %struct.freelQ_ce** %6, align 8
  %23 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %24 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %23, i32 0, i32 6
  %25 = load %struct.freelQ_e*, %struct.freelQ_e** %24, align 8
  %26 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %27 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %25, i64 %28
  store %struct.freelQ_e* %29, %struct.freelQ_e** %7, align 8
  %30 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %31 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %34 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %131, %2
  %38 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %39 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %42 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %136

45:                                               ; preds = %37
  %46 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %47 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.sk_buff* @dev_alloc_skb(i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %136

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %56 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @skb_reserve(%struct.sk_buff* %54, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %65 = call i64 @pci_map_single(%struct.pci_dev* %59, i32 %62, i32 %63, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load %struct.sge*, %struct.sge** %3, align 8
  %68 = getelementptr inbounds %struct.sge, %struct.sge* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @skb_reserve(%struct.sk_buff* %66, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %73 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %72, i32 0, i32 0
  store %struct.sk_buff* %71, %struct.sk_buff** %73, align 8
  %74 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %75 = load i32, i32* @dma_addr, align 4
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @dma_unmap_addr_set(%struct.freelQ_ce* %74, i32 %75, i64 %76)
  %78 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @dma_unmap_len_set(%struct.freelQ_ce* %78, i32 %79, i32 %80)
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %84 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %10, align 8
  %86 = trunc i64 %85 to i32
  %87 = ashr i32 %86, 32
  %88 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %89 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @V_CMD_LEN(i32 %90)
  %92 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %93 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @V_CMD_GEN1(i32 %94)
  %96 = or i32 %91, %95
  %97 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %98 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = call i32 (...) @wmb()
  %100 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %101 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @V_CMD_GEN2(i32 %102)
  %104 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %105 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %107 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %106, i32 1
  store %struct.freelQ_e* %107, %struct.freelQ_e** %7, align 8
  %108 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %109 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %108, i32 1
  store %struct.freelQ_ce* %109, %struct.freelQ_ce** %6, align 8
  %110 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %111 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %115 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %53
  %119 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %120 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %122 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = xor i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %126 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %125, i32 0, i32 7
  %127 = load %struct.freelQ_ce*, %struct.freelQ_ce** %126, align 8
  store %struct.freelQ_ce* %127, %struct.freelQ_ce** %6, align 8
  %128 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %129 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %128, i32 0, i32 6
  %130 = load %struct.freelQ_e*, %struct.freelQ_e** %129, align 8
  store %struct.freelQ_e* %130, %struct.freelQ_e** %7, align 8
  br label %131

131:                                              ; preds = %118, %53
  %132 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %133 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %37

136:                                              ; preds = %52, %37
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.freelQ_ce*, i32, i64) #1

declare dso_local i32 @dma_unmap_len_set(%struct.freelQ_ce*, i32, i32) #1

declare dso_local i32 @V_CMD_LEN(i32) #1

declare dso_local i32 @V_CMD_GEN1(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @V_CMD_GEN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
