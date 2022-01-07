; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_process_mac_tx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_process_mac_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, %struct.TYPE_6__*, i32, %struct.ql_tx_buf_cb* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ql_tx_buf_cb = type { i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.ob_mac_iocb_rsp = type { i32, i64 }

@OB_MAC_IOCB_RSP_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Frame too short but it was padded and sent\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Frame too short to be legal, frame not sent\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"tx_cb->seg_count == 0: %d\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*, %struct.ob_mac_iocb_rsp*)* @ql_process_mac_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_tx_intr(%struct.ql3_adapter* %0, %struct.ob_mac_iocb_rsp* %1) #0 {
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.ob_mac_iocb_rsp*, align 8
  %5 = alloca %struct.ql_tx_buf_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store %struct.ob_mac_iocb_rsp* %1, %struct.ob_mac_iocb_rsp** %4, align 8
  %7 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %8 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OB_MAC_IOCB_RSP_S, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @netdev_warn(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 3
  %21 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %20, align 8
  %22 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %23 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %21, i64 %24
  store %struct.ql_tx_buf_cb* %25, %struct.ql_tx_buf_cb** %5, align 8
  %26 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %27 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OB_MAC_IOCB_RSP_S, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %18
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %145

44:                                               ; preds = %18
  %45 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %46 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %54 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %152

64:                                               ; preds = %44
  %65 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %69 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* @mapaddr, align 4
  %73 = call i32 @dma_unmap_addr(i32* %71, i32 %72)
  %74 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %75 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* @maplen, align 4
  %79 = call i32 @dma_unmap_len(i32* %77, i32 %78)
  %80 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %81 = call i32 @pci_unmap_single(i32 %67, i32 %73, i32 %79, i32 %80)
  %82 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %83 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %87 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %94 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %91
  %98 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %102 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* @mapaddr, align 4
  %108 = call i32 @dma_unmap_addr(i32* %106, i32 %107)
  %109 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %110 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* @maplen, align 4
  %116 = call i32 @dma_unmap_len(i32* %114, i32 %115)
  %117 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %118 = call i32 @pci_unmap_page(i32 %100, i32 %108, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %97
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %91

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %64
  %124 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %132 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %135
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  br label %145

145:                                              ; preds = %123, %32
  %146 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %147 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = call i32 @dev_kfree_skb_irq(%struct.TYPE_7__* %148)
  %150 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %5, align 8
  %151 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %150, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %151, align 8
  br label %152

152:                                              ; preds = %145, %49
  %153 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %153, i32 0, i32 0
  %155 = call i32 @atomic_inc(i32* %154)
  ret void
}

declare dso_local i32 @netdev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(i32*, i32) #1

declare dso_local i32 @dma_unmap_len(i32*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
