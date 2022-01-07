; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_free_rxd_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_free_rxd_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, i32, %struct.mac_info, %struct.net_device* }
%struct.mac_info = type { %struct.TYPE_6__*, %struct.stat_block* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.RxD_t* }
%struct.RxD_t = type { i64 }
%struct.stat_block = type { %struct.swStat }
%struct.swStat = type { i32 }
%struct.net_device = type { i64 }
%struct.sk_buff = type { i64 }
%struct.RxD1 = type { i64 }
%struct.RxD3 = type { i64, i64, i64 }

@rxd_count = common dso_local global i32* null, align 8
@RXD_MODE_1 = common dso_local global i64 0, align 8
@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i64 0, align 8
@HEADER_802_2_SIZE = common dso_local global i64 0, align 8
@HEADER_SNAP_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i64 0, align 8
@BUF1_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*, i32, i32)* @free_rxd_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rxd_blk(%struct.s2io_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.RxD_t*, align 8
  %11 = alloca %struct.RxD1*, align 8
  %12 = alloca %struct.RxD3*, align 8
  %13 = alloca %struct.mac_info*, align 8
  %14 = alloca %struct.stat_block*, align 8
  %15 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %17 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %16, i32 0, i32 3
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %20 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %19, i32 0, i32 2
  store %struct.mac_info* %20, %struct.mac_info** %13, align 8
  %21 = load %struct.mac_info*, %struct.mac_info** %13, align 8
  %22 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %21, i32 0, i32 1
  %23 = load %struct.stat_block*, %struct.stat_block** %22, align 8
  store %struct.stat_block* %23, %struct.stat_block** %14, align 8
  %24 = load %struct.stat_block*, %struct.stat_block** %14, align 8
  %25 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %24, i32 0, i32 0
  store %struct.swStat* %25, %struct.swStat** %15, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %156, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** @rxd_count, align 8
  %29 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %30 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %27, %33
  br i1 %34, label %35, label %159

35:                                               ; preds = %26
  %36 = load %struct.mac_info*, %struct.mac_info** %13, align 8
  %37 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.RxD_t*, %struct.RxD_t** %52, align 8
  store %struct.RxD_t* %53, %struct.RxD_t** %10, align 8
  %54 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %55 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.sk_buff*
  store %struct.sk_buff* %57, %struct.sk_buff** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %35
  br label %156

61:                                               ; preds = %35
  %62 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %63 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RXD_MODE_1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %69 = bitcast %struct.RxD_t* %68 to %struct.RxD1*
  store %struct.RxD1* %69, %struct.RxD1** %11, align 8
  %70 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %71 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.RxD1*, %struct.RxD1** %11, align 8
  %74 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HEADER_ETHERNET_II_802_3_SIZE, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* @HEADER_802_2_SIZE, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @HEADER_SNAP_SIZE, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %87 = call i32 @pci_unmap_single(i32 %72, i32 %76, i64 %85, i32 %86)
  %88 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %89 = call i32 @memset(%struct.RxD_t* %88, i32 0, i32 8)
  br label %135

90:                                               ; preds = %61
  %91 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %92 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RXD_MODE_3B, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %90
  %97 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %98 = bitcast %struct.RxD_t* %97 to %struct.RxD3*
  store %struct.RxD3* %98, %struct.RxD3** %12, align 8
  %99 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %100 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.RxD3*, %struct.RxD3** %12, align 8
  %103 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* @BUF0_LEN, align 8
  %107 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %108 = call i32 @pci_unmap_single(i32 %101, i32 %105, i64 %106, i32 %107)
  %109 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %110 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.RxD3*, %struct.RxD3** %12, align 8
  %113 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* @BUF1_LEN, align 8
  %117 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %118 = call i32 @pci_unmap_single(i32 %111, i32 %115, i64 %116, i32 %117)
  %119 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %120 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.RxD3*, %struct.RxD3** %12, align 8
  %123 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.net_device*, %struct.net_device** %7, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 4
  %130 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %131 = call i32 @pci_unmap_single(i32 %121, i32 %125, i64 %129, i32 %130)
  %132 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %133 = call i32 @memset(%struct.RxD_t* %132, i32 0, i32 24)
  br label %134

134:                                              ; preds = %96, %90
  br label %135

135:                                              ; preds = %134, %67
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.swStat*, %struct.swStat** %15, align 8
  %140 = getelementptr inbounds %struct.swStat, %struct.swStat* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %146 = call i32 @dev_kfree_skb(%struct.sk_buff* %145)
  %147 = load %struct.mac_info*, %struct.mac_info** %13, align 8
  %148 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %135, %60
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %26

159:                                              ; preds = %26
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.RxD_t*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
