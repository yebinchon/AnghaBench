; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_rx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_rx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%union.iavf_rx_desc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }

@IAVF_RX_DESC_FLTSTAT_RSS_HASH = common dso_local global i64 0, align 8
@IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_ring*, %union.iavf_rx_desc*, %struct.sk_buff*, i32)* @iavf_rx_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_rx_hash(%struct.iavf_ring* %0, %union.iavf_rx_desc* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.iavf_ring*, align 8
  %6 = alloca %union.iavf_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iavf_ring* %0, %struct.iavf_ring** %5, align 8
  store %union.iavf_rx_desc* %1, %union.iavf_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @IAVF_RX_DESC_FLTSTAT_RSS_HASH, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = call i32 @cpu_to_le64(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %17 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NETIF_F_RXHASH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %48

25:                                               ; preds = %4
  %26 = load %union.iavf_rx_desc*, %union.iavf_rx_desc** %6, align 8
  %27 = bitcast %union.iavf_rx_desc* %26 to %struct.TYPE_9__*
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load %union.iavf_rx_desc*, %union.iavf_rx_desc** %6, align 8
  %37 = bitcast %union.iavf_rx_desc* %36 to %struct.TYPE_9__*
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @iavf_ptype_to_htype(i32 %45)
  %47 = call i32 @skb_set_hash(%struct.sk_buff* %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %24, %35, %25
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @iavf_ptype_to_htype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
