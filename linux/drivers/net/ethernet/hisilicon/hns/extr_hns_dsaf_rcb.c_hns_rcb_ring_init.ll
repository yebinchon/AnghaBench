; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_pair_cb = type { i64, %struct.hnae_queue }
%struct.hnae_queue = type { %struct.hnae_ring, %struct.hnae_ring }
%struct.hnae_ring = type { i32, i32 }

@RX_RING = common dso_local global i32 0, align 4
@RCB_RING_RX_RING_BASEADDR_L_REG = common dso_local global i32 0, align 4
@RCB_RING_RX_RING_BASEADDR_H_REG = common dso_local global i32 0, align 4
@RCB_RING_RX_RING_BD_NUM_REG = common dso_local global i32 0, align 4
@RCB_RING_RX_RING_PKTLINE_REG = common dso_local global i32 0, align 4
@RCB_RING_TX_RING_BASEADDR_L_REG = common dso_local global i32 0, align 4
@RCB_RING_TX_RING_BASEADDR_H_REG = common dso_local global i32 0, align 4
@RCB_RING_TX_RING_BD_NUM_REG = common dso_local global i32 0, align 4
@RCB_RING_TX_RING_PKTLINE_REG = common dso_local global i32 0, align 4
@HNS_RCB_TX_PKTLINE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_pair_cb*, i32)* @hns_rcb_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_rcb_ring_init(%struct.ring_pair_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.ring_pair_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae_queue*, align 8
  %6 = alloca %struct.hnae_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.ring_pair_cb* %0, %struct.ring_pair_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %3, align 8
  %9 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %8, i32 0, i32 1
  store %struct.hnae_queue* %9, %struct.hnae_queue** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RX_RING, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %15 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %14, i32 0, i32 1
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %18 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %17, i32 0, i32 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.hnae_ring* [ %15, %13 ], [ %18, %16 ]
  store %struct.hnae_ring* %20, %struct.hnae_ring** %6, align 8
  %21 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %22 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RX_RING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %19
  %28 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %29 = load i32, i32* @RCB_RING_RX_RING_BASEADDR_L_REG, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @dsaf_write_dev(%struct.hnae_queue* %28, i32 %29, i64 %31)
  %33 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %34 = load i32, i32* @RCB_RING_RX_RING_BASEADDR_H_REG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 31
  %37 = ashr i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = call i32 @dsaf_write_dev(%struct.hnae_queue* %33, i32 %34, i64 %38)
  %40 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %41 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %42 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hns_rcb_set_rx_ring_bs(%struct.hnae_queue* %40, i32 %43)
  %45 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %46 = load i32, i32* @RCB_RING_RX_RING_BD_NUM_REG, align 4
  %47 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %3, align 8
  %48 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dsaf_write_dev(%struct.hnae_queue* %45, i32 %46, i64 %49)
  %51 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %52 = load i32, i32* @RCB_RING_RX_RING_PKTLINE_REG, align 4
  %53 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %3, align 8
  %54 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dsaf_write_dev(%struct.hnae_queue* %51, i32 %52, i64 %55)
  br label %89

57:                                               ; preds = %19
  %58 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %59 = load i32, i32* @RCB_RING_TX_RING_BASEADDR_L_REG, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = call i32 @dsaf_write_dev(%struct.hnae_queue* %58, i32 %59, i64 %61)
  %63 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %64 = load i32, i32* @RCB_RING_TX_RING_BASEADDR_H_REG, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 31
  %67 = ashr i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = call i32 @dsaf_write_dev(%struct.hnae_queue* %63, i32 %64, i64 %68)
  %70 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %71 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %72 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hns_rcb_set_tx_ring_bs(%struct.hnae_queue* %70, i32 %73)
  %75 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %76 = load i32, i32* @RCB_RING_TX_RING_BD_NUM_REG, align 4
  %77 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %3, align 8
  %78 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dsaf_write_dev(%struct.hnae_queue* %75, i32 %76, i64 %79)
  %81 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %82 = load i32, i32* @RCB_RING_TX_RING_PKTLINE_REG, align 4
  %83 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %3, align 8
  %84 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HNS_RCB_TX_PKTLINE_OFFSET, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @dsaf_write_dev(%struct.hnae_queue* %81, i32 %82, i64 %87)
  br label %89

89:                                               ; preds = %57, %27
  ret void
}

declare dso_local i32 @dsaf_write_dev(%struct.hnae_queue*, i32, i64) #1

declare dso_local i32 @hns_rcb_set_rx_ring_bs(%struct.hnae_queue*, i32) #1

declare dso_local i32 @hns_rcb_set_tx_ring_bs(%struct.hnae_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
