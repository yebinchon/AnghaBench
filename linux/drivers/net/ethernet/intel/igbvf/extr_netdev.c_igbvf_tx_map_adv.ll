; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_tx_map_adv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_tx_map_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.igbvf_ring = type { i32, i32, %struct.igbvf_buffer* }
%struct.igbvf_buffer = type { i32, i32, i8*, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@IGBVF_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_adapter*, %struct.igbvf_ring*, %struct.sk_buff*)* @igbvf_tx_map_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_tx_map_adv(%struct.igbvf_adapter* %0, %struct.igbvf_ring* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igbvf_adapter*, align 8
  %6 = alloca %struct.igbvf_ring*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.igbvf_buffer*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %5, align 8
  store %struct.igbvf_ring* %1, %struct.igbvf_ring** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %21 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %24 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %23, i32 0, i32 2
  %25 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %25, i64 %27
  store %struct.igbvf_buffer* %28, %struct.igbvf_buffer** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IGBVF_MAX_DATA_PER_TXD, align 4
  %31 = icmp uge i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @jiffies, align 8
  %38 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %41 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i64 @dma_map_single(i32* %43, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %51 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %55 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @dma_mapping_error(i32* %53, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %3
  br label %139

60:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %125, %60
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %62, %66
  br i1 %67, label %68, label %128

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %75 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %14, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @skb_frag_size(i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %90 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %89, i32 0, i32 2
  %91 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %91, i64 %93
  store %struct.igbvf_buffer* %94, %struct.igbvf_buffer** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @IGBVF_MAX_DATA_PER_TXD, align 4
  %97 = icmp uge i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %102 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** @jiffies, align 8
  %104 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %105 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %107 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @DMA_TO_DEVICE, align 4
  %113 = call i64 @skb_frag_dma_map(i32* %109, i32* %110, i32 0, i32 %111, i32 %112)
  %114 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %115 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %119 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @dma_mapping_error(i32* %117, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %79
  br label %139

124:                                              ; preds = %79
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %61

128:                                              ; preds = %61
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %131 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %130, i32 0, i32 2
  %132 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %132, i64 %134
  %136 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %135, i32 0, i32 4
  store %struct.sk_buff* %129, %struct.sk_buff** %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  store i32 %138, i32* %4, align 4
  br label %183

139:                                              ; preds = %123, %59
  %140 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %143 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %144 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %146 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %145, i32 0, i32 2
  store i8* null, i8** %146, align 8
  %147 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %148 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %150 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %154, -1
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %153, %139
  br label %157

157:                                              ; preds = %170, %156
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, -1
  store i32 %159, i32* %11, align 4
  %160 = icmp ne i32 %158, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %157
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %166 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i32, i32* %12, align 4
  %172 = add i32 %171, -1
  store i32 %172, i32* %12, align 4
  %173 = load %struct.igbvf_ring*, %struct.igbvf_ring** %6, align 8
  %174 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %173, i32 0, i32 2
  %175 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %175, i64 %177
  store %struct.igbvf_buffer* %178, %struct.igbvf_buffer** %8, align 8
  %179 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %180 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %8, align 8
  %181 = call i32 @igbvf_put_txbuf(%struct.igbvf_adapter* %179, %struct.igbvf_buffer* %180)
  br label %157

182:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %128
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @igbvf_put_txbuf(%struct.igbvf_adapter*, %struct.igbvf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
