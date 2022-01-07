; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rx_alloc_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rx_alloc_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { i32, i32, %struct.rxdb* }
%struct.rxdb = type { i32 }
%struct.rxf_fifo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxf_desc = type { i32, i8*, i8*, i8*, i8* }
%struct.rx_map = type { i32, %struct.sk_buff* }

@ENTER = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wrapped descriptor\0A\00", align 1
@TXF_WPTR_WR_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.rxf_fifo*)* @bdx_rx_alloc_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_rx_alloc_skbs(%struct.bdx_priv* %0, %struct.rxf_fifo* %1) #0 {
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca %struct.rxf_fifo*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxf_desc*, align 8
  %7 = alloca %struct.rx_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxdb*, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store %struct.rxf_fifo* %1, %struct.rxf_fifo** %4, align 8
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %12, i32 0, i32 2
  %14 = load %struct.rxdb*, %struct.rxdb** %13, align 8
  store %struct.rxdb* %14, %struct.rxdb** %11, align 8
  %15 = load i32, i32* @ENTER, align 4
  %16 = load %struct.rxdb*, %struct.rxdb** %11, align 8
  %17 = call i32 @bdx_rxdb_available(%struct.rxdb* %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %148, %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %151

22:                                               ; preds = %19
  %23 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %27 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NET_IP_ALIGN, align 4
  %31 = add nsw i32 %29, %30
  %32 = call %struct.sk_buff* @netdev_alloc_skb(i32 %25, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %151

36:                                               ; preds = %22
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @NET_IP_ALIGN, align 4
  %39 = call i32 @skb_reserve(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.rxdb*, %struct.rxdb** %11, align 8
  %41 = call i32 @bdx_rxdb_alloc_elem(%struct.rxdb* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.rxdb*, %struct.rxdb** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %42, i32 %43)
  store %struct.rx_map* %44, %struct.rx_map** %7, align 8
  %45 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %46 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %52 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %56 = call i32 @pci_map_single(i32 %47, i32 %50, i32 %54, i32 %55)
  %57 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %58 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %61 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %60, i32 0, i32 1
  store %struct.sk_buff* %59, %struct.sk_buff** %61, align 8
  %62 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %63 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %67 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %65, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.rxf_desc*
  store %struct.rxf_desc* %72, %struct.rxf_desc** %6, align 8
  %73 = call i8* @CPU_CHIP_SWAP32(i32 65539)
  %74 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %75 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %78 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %80 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @L32_64(i32 %81)
  %83 = call i8* @CPU_CHIP_SWAP32(i32 %82)
  %84 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %85 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.rx_map*, %struct.rx_map** %7, align 8
  %87 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @H32_64(i32 %88)
  %90 = call i8* @CPU_CHIP_SWAP32(i32 %89)
  %91 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %92 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %94 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @CPU_CHIP_SWAP32(i32 %96)
  %98 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %99 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.rxf_desc*, %struct.rxf_desc** %6, align 8
  %101 = call i32 @print_rxfd(%struct.rxf_desc* %100)
  %102 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %103 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 40
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %110 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %114 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %112, %116
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp sge i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %36
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %126 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %123
  %131 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %132 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %136 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %140 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %138, %142
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @memcpy(i32 %134, i32 %143, i32 %144)
  %146 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %147

147:                                              ; preds = %130, %123
  br label %148

148:                                              ; preds = %147, %36
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %8, align 4
  br label %19

151:                                              ; preds = %35, %19
  %152 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %153 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %154 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %158 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %162 = and i32 %160, %161
  %163 = call i32 @WRITE_REG(%struct.bdx_priv* %152, i32 %156, i32 %162)
  %164 = call i32 (...) @RET()
  ret void
}

declare dso_local i32 @bdx_rxdb_available(%struct.rxdb*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @bdx_rxdb_alloc_elem(%struct.rxdb*) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @L32_64(i32) #1

declare dso_local i32 @H32_64(i32) #1

declare dso_local i32 @print_rxfd(%struct.rxf_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
