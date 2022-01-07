; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ksz_desc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dev_priv = type { %struct.TYPE_7__, %struct.dev_info* }
%struct.TYPE_7__ = type { i32 }
%struct.dev_info = type { i32, %struct.ksz_hw }
%struct.ksz_hw = type { i32, i32, i32, %struct.ksz_desc_info }
%struct.ksz_desc_info = type { %struct.ksz_desc* }
%struct.ksz_dma_buf = type { i32, %struct.sk_buff*, i8* }
%struct.TYPE_12__ = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packet(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ksz_desc*, align 8
  %6 = alloca %struct.ksz_desc*, align 8
  %7 = alloca %struct.dev_priv*, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca %struct.ksz_hw*, align 8
  %10 = alloca %struct.ksz_desc_info*, align 8
  %11 = alloca %struct.ksz_dma_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.dev_priv* %17, %struct.dev_priv** %7, align 8
  %18 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %19 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %18, i32 0, i32 1
  %20 = load %struct.dev_info*, %struct.dev_info** %19, align 8
  store %struct.dev_info* %20, %struct.dev_info** %8, align 8
  %21 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %22 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %21, i32 0, i32 1
  store %struct.ksz_hw* %22, %struct.ksz_hw** %9, align 8
  %23 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %24 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %23, i32 0, i32 3
  store %struct.ksz_desc_info* %24, %struct.ksz_desc_info** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %30 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %35 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %40 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %10, align 8
  %46 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %45, i32 0, i32 0
  %47 = load %struct.ksz_desc*, %struct.ksz_desc** %46, align 8
  store %struct.ksz_desc* %47, %struct.ksz_desc** %6, align 8
  %48 = load %struct.ksz_desc*, %struct.ksz_desc** %6, align 8
  store %struct.ksz_desc* %48, %struct.ksz_desc** %5, align 8
  %49 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %50 = call %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc* %49)
  store %struct.ksz_dma_buf* %50, %struct.ksz_dma_buf** %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %139

53:                                               ; preds = %41
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @skb_headlen(%struct.sk_buff* %54)
  %56 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %57 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %59 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %65 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %68 = call i8* @pci_map_single(i32 %60, i32 %63, i32 %66, i32 %67)
  %69 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %70 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %72 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %73 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @set_tx_buf(%struct.ksz_desc* %71, i8* %74)
  %76 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %77 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %78 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @set_tx_len(%struct.ksz_desc* %76, i32 %79)
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %132, %53
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %15, align 8
  %89 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %10, align 8
  %90 = call i32 @get_tx_pkt(%struct.ksz_desc_info* %89, %struct.ksz_desc** %5)
  %91 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %92 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %96 = call %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc* %95)
  store %struct.ksz_dma_buf* %96, %struct.ksz_dma_buf** %11, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @skb_frag_size(i32* %97)
  %99 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %100 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %102 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = call i32 @skb_frag_address(i32* %104)
  %106 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %107 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %110 = call i8* @pci_map_single(i32 %103, i32 %105, i32 %108, i32 %109)
  %111 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %112 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %114 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %115 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @set_tx_buf(%struct.ksz_desc* %113, i8* %116)
  %118 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %119 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %120 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @set_tx_len(%struct.ksz_desc* %118, i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %81
  br label %133

129:                                              ; preds = %81
  %130 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %131 = call i32 @release_desc(%struct.ksz_desc* %130)
  br label %132

132:                                              ; preds = %129
  br i1 true, label %81, label %133

133:                                              ; preds = %132, %128
  %134 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %135 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %10, align 8
  %136 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %135, i32 0, i32 0
  store %struct.ksz_desc* %134, %struct.ksz_desc** %136, align 8
  %137 = load %struct.ksz_desc*, %struct.ksz_desc** %6, align 8
  %138 = call i32 @release_desc(%struct.ksz_desc* %137)
  br label %166

139:                                              ; preds = %41
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %142 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %144 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %150 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %153 = call i8* @pci_map_single(i32 %145, i32 %148, i32 %151, i32 %152)
  %154 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %155 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %157 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %158 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @set_tx_buf(%struct.ksz_desc* %156, i8* %159)
  %161 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %162 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %163 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @set_tx_len(%struct.ksz_desc* %161, i32 %164)
  br label %166

166:                                              ; preds = %139, %133
  %167 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %174 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = load %struct.ksz_desc*, %struct.ksz_desc** %5, align 8
  %179 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %172, %166
  %184 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %185 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %11, align 8
  %186 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %185, i32 0, i32 1
  store %struct.sk_buff* %184, %struct.sk_buff** %186, align 8
  %187 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %188 = call i32 @hw_send_pkt(%struct.ksz_hw* %187)
  %189 = load %struct.net_device*, %struct.net_device** %4, align 8
  %190 = getelementptr inbounds %struct.net_device, %struct.net_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.net_device*, %struct.net_device** %4, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %194
  store i32 %199, i32* %197, align 4
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @set_tx_buf(%struct.ksz_desc*, i8*) #1

declare dso_local i32 @set_tx_len(%struct.ksz_desc*, i32) #1

declare dso_local i32 @get_tx_pkt(%struct.ksz_desc_info*, %struct.ksz_desc**) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_address(i32*) #1

declare dso_local i32 @release_desc(%struct.ksz_desc*) #1

declare dso_local i32 @hw_send_pkt(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
