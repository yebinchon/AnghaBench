; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_add_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_add_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns83820 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32*, %struct.sk_buff**, i32 }
%struct.sk_buff = type { i32 }

@DESC_SIZE = common dso_local global i32 0, align 4
@NR_RX_DESC = common dso_local global i32 0, align 4
@REAL_RX_BUF_SIZE = common dso_local global i32 0, align 4
@CMDSTS_INTR = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ns83820*, %struct.sk_buff*)* @ns83820_add_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_add_rx_skb(%struct.ns83820* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ns83820*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ns83820* %0, %struct.ns83820** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %11 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %15 = call i32 @nr_rx_empty(%struct.ns83820* %14)
  %16 = icmp sle i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  store i32 1, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %25 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DESC_SIZE, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %8, align 8
  %33 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %34 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = icmp ne %struct.sk_buff* null, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %46 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load %struct.sk_buff**, %struct.sk_buff*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %48, i64 %50
  store %struct.sk_buff* %44, %struct.sk_buff** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  %54 = load i32, i32* @NR_RX_DESC, align 4
  %55 = urem i32 %53, %54
  %56 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %57 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @REAL_RX_BUF_SIZE, align 4
  %60 = load i32, i32* @CMDSTS_INTR, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %63 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @REAL_RX_BUF_SIZE, align 4
  %69 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %70 = call i32 @pci_map_single(i32 %64, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @build_rx_desc(%struct.ns83820* %71, i32* %72, i32 0, i32 %73, i32 %74, i32 0)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %78 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %76, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @likely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %23
  %86 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %87 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @DESC_SIZE, align 4
  %92 = mul i32 %90, %91
  %93 = mul i32 %92, 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %89, %94
  %96 = call i32 @cpu_to_le32(i64 %95)
  %97 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %98 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @NR_RX_DESC, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %101, %102
  %104 = sub i32 %103, 1
  %105 = load i32, i32* @NR_RX_DESC, align 4
  %106 = urem i32 %104, %105
  %107 = load i32, i32* @DESC_SIZE, align 4
  %108 = mul i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %100, i64 %109
  store i32 %96, i32* %110, align 4
  br label %111

111:                                              ; preds = %85, %23
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nr_rx_empty(%struct.ns83820*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @build_rx_desc(%struct.ns83820*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
