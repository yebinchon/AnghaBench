; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_rx_handoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_rx_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i64, %struct.TYPE_4__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@RDES0_FRAME_LENGTH_MASK_ = common dso_local global i32 0, align 4
@RDES0_FRAME_LENGTH_SHFT_ = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*, i32, i32)* @smsc9420_rx_handoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_rx_handoff(%struct.smsc9420_pdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %12 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RDES0_FRAME_LENGTH_MASK_, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @RDES0_FRAME_LENGTH_SHFT_, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %19, 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %22 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %44 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @PKT_BUF_SZ, align 4
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %53 = call i32 @pci_unmap_single(i32 %42, i64 %50, i32 %51, i32 %52)
  %54 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %55 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %62 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %8, align 8
  %69 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %70 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %75, align 8
  %76 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %77 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %28
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @skb_tail_pointer(%struct.sk_buff* %81)
  %83 = load i32, i32* @NET_IP_ALIGN, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 4
  %88 = call i32 @get_unaligned_le16(i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 2
  %92 = call i32 @put_unaligned_le16(i32 %89, i32* %91)
  %93 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %80, %28
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = load i32, i32* @NET_IP_ALIGN, align 4
  %99 = call i32 @skb_reserve(%struct.sk_buff* %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @skb_put(%struct.sk_buff* %100, i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = call i32 @eth_type_trans(%struct.sk_buff* %103, %struct.net_device* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = call i32 @netif_receive_skb(%struct.sk_buff* %108)
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
