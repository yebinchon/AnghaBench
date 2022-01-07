; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netxen_cmd_buffer = type { %struct.netxen_skb_frag* }
%struct.netxen_skb_frag = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.sk_buff*, %struct.netxen_cmd_buffer*)* @netxen_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_map_tx_skb(%struct.pci_dev* %0, %struct.sk_buff* %1, %struct.netxen_cmd_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netxen_cmd_buffer*, align 8
  %8 = alloca %struct.netxen_skb_frag*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netxen_cmd_buffer* %2, %struct.netxen_cmd_buffer** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %17, i32 0, i32 0
  %19 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %18, align 8
  %20 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %19, i64 0
  store %struct.netxen_skb_frag* %20, %struct.netxen_skb_frag** %8, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @skb_headlen(%struct.sk_buff* %25)
  %27 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %28 = call i8* @pci_map_single(%struct.pci_dev* %21, i32 %24, i32 %26, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %127

34:                                               ; preds = %3
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %38 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_headlen(%struct.sk_buff* %39)
  %41 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %42 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %84, %34
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %9, align 8
  %55 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %7, align 8
  %56 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %55, i32 0, i32 0
  %57 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %57, i64 %60
  store %struct.netxen_skb_frag* %61, %struct.netxen_skb_frag** %8, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @skb_frag_size(i32* %65)
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i8* @skb_frag_dma_map(i32* %63, i32* %64, i32 0, i32 %66, i32 %67)
  store i8* %68, i8** %12, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i8*, i8** %12, align 8
  %72 = call i64 @dma_mapping_error(i32* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %47
  br label %88

75:                                               ; preds = %47
  %76 = load i8*, i8** %12, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %79 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @skb_frag_size(i32* %80)
  %82 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %83 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %43

87:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %130

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %93, %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %10, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %7, align 8
  %95 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %94, i32 0, i32 0
  %96 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %96, i64 %99
  store %struct.netxen_skb_frag* %100, %struct.netxen_skb_frag** %8, align 8
  %101 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %102 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %103 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %106 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %109 = call i32 @pci_unmap_page(%struct.pci_dev* %101, i64 %104, i32 %107, i32 %108)
  %110 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %111 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  br label %89

112:                                              ; preds = %89
  %113 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %113, i32 0, i32 0
  %115 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %114, align 8
  %116 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %115, i64 0
  store %struct.netxen_skb_frag* %116, %struct.netxen_skb_frag** %8, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %118 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %119 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @skb_headlen(%struct.sk_buff* %121)
  %123 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %124 = call i32 @pci_unmap_single(%struct.pci_dev* %117, i64 %120, i32 %122, i32 %123)
  %125 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %8, align 8
  %126 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %112, %33
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %87
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i8*) #1

declare dso_local i8* @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
