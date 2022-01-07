; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_init_ring_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_init_ring_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, i32, i32, %struct.hnae3_queue* }
%struct.hnae3_queue = type { i32 }

@HNS3_RING_RX_RING_BASEADDR_L_REG = common dso_local global i32 0, align 4
@HNS3_RING_RX_RING_BASEADDR_H_REG = common dso_local global i32 0, align 4
@HNS3_RING_RX_RING_BD_LEN_REG = common dso_local global i32 0, align 4
@HNS3_RING_RX_RING_BD_NUM_REG = common dso_local global i32 0, align 4
@HNS3_RING_TX_RING_BASEADDR_L_REG = common dso_local global i32 0, align 4
@HNS3_RING_TX_RING_BASEADDR_H_REG = common dso_local global i32 0, align 4
@HNS3_RING_TX_RING_BD_NUM_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*)* @hns3_init_ring_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_init_ring_hw(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca %struct.hns3_enet_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_queue*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %2, align 8
  %5 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %6 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %9 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %8, i32 0, i32 3
  %10 = load %struct.hnae3_queue*, %struct.hnae3_queue** %9, align 8
  store %struct.hnae3_queue* %10, %struct.hnae3_queue** %4, align 8
  %11 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %12 = call i32 @HNAE3_IS_TX_RING(%struct.hns3_enet_ring* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %16 = load i32, i32* @HNS3_RING_RX_RING_BASEADDR_L_REG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @hns3_write_dev(%struct.hnae3_queue* %15, i32 %16, i32 %17)
  %19 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %20 = load i32, i32* @HNS3_RING_RX_RING_BASEADDR_H_REG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 31
  %23 = ashr i32 %22, 1
  %24 = call i32 @hns3_write_dev(%struct.hnae3_queue* %19, i32 %20, i32 %23)
  %25 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %26 = load i32, i32* @HNS3_RING_RX_RING_BD_LEN_REG, align 4
  %27 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %28 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hns3_buf_size2type(i32 %29)
  %31 = call i32 @hns3_write_dev(%struct.hnae3_queue* %25, i32 %26, i32 %30)
  %32 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %33 = load i32, i32* @HNS3_RING_RX_RING_BD_NUM_REG, align 4
  %34 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %35 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 8
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @hns3_write_dev(%struct.hnae3_queue* %32, i32 %33, i32 %38)
  br label %59

40:                                               ; preds = %1
  %41 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %42 = load i32, i32* @HNS3_RING_TX_RING_BASEADDR_L_REG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @hns3_write_dev(%struct.hnae3_queue* %41, i32 %42, i32 %43)
  %45 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %46 = load i32, i32* @HNS3_RING_TX_RING_BASEADDR_H_REG, align 4
  %47 = load i32, i32* %3, align 4
  %48 = ashr i32 %47, 31
  %49 = ashr i32 %48, 1
  %50 = call i32 @hns3_write_dev(%struct.hnae3_queue* %45, i32 %46, i32 %49)
  %51 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %52 = load i32, i32* @HNS3_RING_TX_RING_BD_NUM_REG, align 4
  %53 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %54 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 8
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @hns3_write_dev(%struct.hnae3_queue* %51, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @HNAE3_IS_TX_RING(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_write_dev(%struct.hnae3_queue*, i32, i32) #1

declare dso_local i32 @hns3_buf_size2type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
