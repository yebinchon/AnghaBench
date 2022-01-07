; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i32, %struct.basic_ring, %struct.rxbuff_ent*, %struct.typhoon_indexes* }
%struct.basic_ring = type { i32, i64 }
%struct.rxbuff_ent = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.typhoon_indexes = type { i8*, i32 }
%struct.rx_free = type { i64, i8* }

@RXFREE_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, i64)* @typhoon_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_alloc_rx_skb(%struct.typhoon* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.typhoon_indexes*, align 8
  %7 = alloca %struct.rxbuff_ent*, align 8
  %8 = alloca %struct.basic_ring*, align 8
  %9 = alloca %struct.rx_free*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %13 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %12, i32 0, i32 4
  %14 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %13, align 8
  store %struct.typhoon_indexes* %14, %struct.typhoon_indexes** %6, align 8
  %15 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %16 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %15, i32 0, i32 3
  %17 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %17, i64 %18
  store %struct.rxbuff_ent* %19, %struct.rxbuff_ent** %7, align 8
  %20 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %21 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %20, i32 0, i32 2
  store %struct.basic_ring* %21, %struct.basic_ring** %8, align 8
  %22 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %7, align 8
  %23 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %22, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %25 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 16
  %29 = load i32, i32* @RXFREE_ENTRIES, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 16
  %32 = urem i64 %28, %31
  %33 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %6, align 8
  %34 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %95

42:                                               ; preds = %2
  %43 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %44 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PKT_BUF_SZ, align 4
  %47 = call %struct.sk_buff* @netdev_alloc_skb(i32 %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %10, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %95

53:                                               ; preds = %42
  %54 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %55 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PKT_BUF_SZ, align 4
  %61 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %62 = call i32 @pci_map_single(i32 %56, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %64 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %67 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = inttoptr i64 %70 to %struct.rx_free*
  store %struct.rx_free* %71, %struct.rx_free** %9, align 8
  %72 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %73 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %72, i32 0, i32 0
  %74 = call i32 @typhoon_inc_rxfree_index(i32* %73, i32 1)
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.rx_free*, %struct.rx_free** %9, align 8
  %77 = getelementptr inbounds %struct.rx_free, %struct.rx_free* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.rx_free*, %struct.rx_free** %9, align 8
  %81 = getelementptr inbounds %struct.rx_free, %struct.rx_free* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %7, align 8
  %84 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %83, i32 0, i32 1
  store %struct.sk_buff* %82, %struct.sk_buff** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %7, align 8
  %87 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = call i32 (...) @wmb()
  %89 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %90 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %6, align 8
  %94 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %53, %50, %39
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @typhoon_inc_rxfree_index(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
