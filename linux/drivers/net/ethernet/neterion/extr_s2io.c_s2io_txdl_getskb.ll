; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_txdl_getskb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_txdl_getskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fifo_info = type { i32, i64, %struct.s2io_nic* }
%struct.s2io_nic = type { i32 }
%struct.TxD = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.fifo_info*, %struct.TxD*, i32)* @s2io_txdl_getskb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @s2io_txdl_getskb(%struct.fifo_info* %0, %struct.TxD* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fifo_info*, align 8
  %6 = alloca %struct.TxD*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s2io_nic*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.TxD*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.fifo_info* %0, %struct.fifo_info** %5, align 8
  store %struct.TxD* %1, %struct.TxD** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.fifo_info*, %struct.fifo_info** %5, align 8
  %15 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %14, i32 0, i32 2
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %15, align 8
  store %struct.s2io_nic* %16, %struct.s2io_nic** %8, align 8
  %17 = load %struct.TxD*, %struct.TxD** %6, align 8
  store %struct.TxD* %17, %struct.TxD** %10, align 8
  %18 = load %struct.TxD*, %struct.TxD** %10, align 8
  %19 = getelementptr inbounds %struct.TxD, %struct.TxD* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fifo_info*, %struct.fifo_info** %5, align 8
  %22 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.s2io_nic*, %struct.s2io_nic** %8, align 8
  %27 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TxD*, %struct.TxD** %10, align 8
  %30 = getelementptr inbounds %struct.TxD, %struct.TxD* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %34 = call i32 @pci_unmap_single(i32 %28, i32 %32, i32 8, i32 %33)
  %35 = load %struct.TxD*, %struct.TxD** %10, align 8
  %36 = getelementptr inbounds %struct.TxD, %struct.TxD* %35, i32 1
  store %struct.TxD* %36, %struct.TxD** %10, align 8
  br label %37

37:                                               ; preds = %25, %3
  %38 = load %struct.TxD*, %struct.TxD** %10, align 8
  %39 = getelementptr inbounds %struct.TxD, %struct.TxD* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.sk_buff*
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load %struct.TxD*, %struct.TxD** %6, align 8
  %46 = load %struct.fifo_info*, %struct.fifo_info** %5, align 8
  %47 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 16, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(%struct.TxD* %45, i32 0, i32 %51)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %118

53:                                               ; preds = %37
  %54 = load %struct.s2io_nic*, %struct.s2io_nic** %8, align 8
  %55 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TxD*, %struct.TxD** %10, align 8
  %58 = getelementptr inbounds %struct.TxD, %struct.TxD* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @skb_headlen(%struct.sk_buff* %61)
  %63 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %64 = call i32 @pci_unmap_single(i32 %56, i32 %60, i32 %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %53
  %72 = load %struct.TxD*, %struct.TxD** %10, align 8
  %73 = getelementptr inbounds %struct.TxD, %struct.TxD* %72, i32 1
  store %struct.TxD* %73, %struct.TxD** %10, align 8
  store i64 0, i64* %11, align 8
  br label %74

74:                                               ; preds = %102, %71
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %74
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %13, align 8
  %85 = load %struct.TxD*, %struct.TxD** %10, align 8
  %86 = getelementptr inbounds %struct.TxD, %struct.TxD* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %107

90:                                               ; preds = %78
  %91 = load %struct.s2io_nic*, %struct.s2io_nic** %8, align 8
  %92 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TxD*, %struct.TxD** %10, align 8
  %95 = getelementptr inbounds %struct.TxD, %struct.TxD* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @skb_frag_size(i32* %98)
  %100 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %101 = call i32 @pci_unmap_page(i32 %93, i32 %97, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %11, align 8
  %105 = load %struct.TxD*, %struct.TxD** %10, align 8
  %106 = getelementptr inbounds %struct.TxD, %struct.TxD* %105, i32 1
  store %struct.TxD* %106, %struct.TxD** %10, align 8
  br label %74

107:                                              ; preds = %89, %74
  br label %108

108:                                              ; preds = %107, %53
  %109 = load %struct.TxD*, %struct.TxD** %6, align 8
  %110 = load %struct.fifo_info*, %struct.fifo_info** %5, align 8
  %111 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 16, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(%struct.TxD* %109, i32 0, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %117, %struct.sk_buff** %4, align 8
  br label %118

118:                                              ; preds = %108, %44
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %119
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TxD*, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
