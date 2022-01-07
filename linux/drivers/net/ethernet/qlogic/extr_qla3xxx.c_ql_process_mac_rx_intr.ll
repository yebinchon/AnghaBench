; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_process_mac_rx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_process_mac_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_mac_iocb_rsp = type { i32 }
%struct.ql_rcv_buf_cb = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@QL3022_DEVICE_ID = common dso_local global i64 0, align 8
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*, %struct.ib_mac_iocb_rsp*)* @ql_process_mac_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_intr(%struct.ql3_adapter* %0, %struct.ib_mac_iocb_rsp* %1) #0 {
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %5 = alloca %struct.ql_rcv_buf_cb*, align 8
  %6 = alloca %struct.ql_rcv_buf_cb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store %struct.ib_mac_iocb_rsp* %1, %struct.ib_mac_iocb_rsp** %4, align 8
  store %struct.ql_rcv_buf_cb* null, %struct.ql_rcv_buf_cb** %5, align 8
  store %struct.ql_rcv_buf_cb* null, %struct.ql_rcv_buf_cb** %6, align 8
  %9 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le16_to_cpu(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %14 = call i32 @ql_get_sbuf(%struct.ql3_adapter* %13)
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QL3022_DEVICE_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = call %struct.ql_rcv_buf_cb* @ql_get_lbuf(%struct.ql3_adapter* %21)
  store %struct.ql_rcv_buf_cb* %22, %struct.ql_rcv_buf_cb** %5, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %25 = call %struct.ql_rcv_buf_cb* @ql_get_lbuf(%struct.ql3_adapter* %24)
  store %struct.ql_rcv_buf_cb* %25, %struct.ql_rcv_buf_cb** %6, align 8
  %26 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %6, align 8
  %27 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %26, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %36
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @skb_put(%struct.sk_buff* %46, i64 %47)
  %49 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %6, align 8
  %53 = load i32, i32* @mapaddr, align 4
  %54 = call i32 @dma_unmap_addr(%struct.ql_rcv_buf_cb* %52, i32 %53)
  %55 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %6, align 8
  %56 = load i32, i32* @maplen, align 4
  %57 = call i32 @dma_unmap_len(%struct.ql_rcv_buf_cb* %55, i32 %56)
  %58 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %59 = call i32 @pci_unmap_single(i32 %51, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @prefetch(i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @eth_type_trans(%struct.sk_buff* %66, %struct.TYPE_4__* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %73, i32 0, i32 1
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32 @napi_gro_receive(i32* %74, %struct.sk_buff* %75)
  %77 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %6, align 8
  %78 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %77, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %78, align 8
  %79 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @QL3022_DEVICE_ID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %23
  %85 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %86 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %87 = call i32 @ql_release_to_lrg_buf_free_list(%struct.ql3_adapter* %85, %struct.ql_rcv_buf_cb* %86)
  br label %88

88:                                               ; preds = %84, %23
  %89 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %90 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %6, align 8
  %91 = call i32 @ql_release_to_lrg_buf_free_list(%struct.ql3_adapter* %89, %struct.ql_rcv_buf_cb* %90)
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ql_get_sbuf(%struct.ql3_adapter*) #1

declare dso_local %struct.ql_rcv_buf_cb* @ql_get_lbuf(%struct.ql3_adapter*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ql_rcv_buf_cb*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.ql_rcv_buf_cb*, i32) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ql_release_to_lrg_buf_free_list(%struct.ql3_adapter*, %struct.ql_rcv_buf_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
