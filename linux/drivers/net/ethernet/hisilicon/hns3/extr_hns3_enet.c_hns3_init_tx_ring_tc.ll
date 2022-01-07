; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_init_tx_ring_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_init_tx_ring_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hnae3_queue* }
%struct.hnae3_queue = type { i32 }
%struct.TYPE_6__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { %struct.hnae3_tc_info* }
%struct.hnae3_tc_info = type { i32, i32, i32, i32 }

@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@HNS3_RING_TX_RING_TC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*)* @hns3_init_tx_ring_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_init_tx_ring_tc(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_nic_priv*, align 8
  %3 = alloca %struct.hnae3_knic_private_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_tc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_queue*, align 8
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %2, align 8
  %8 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %9 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %11, %struct.hnae3_knic_private_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %60, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HNAE3_MAX_TC, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %12
  %17 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %3, align 8
  %18 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %17, i32 0, i32 0
  %19 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %19, i64 %21
  store %struct.hnae3_tc_info* %22, %struct.hnae3_tc_info** %5, align 8
  %23 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %5, align 8
  %24 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %60

28:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %5, align 8
  %32 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %37 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %5, align 8
  %40 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.hnae3_queue*, %struct.hnae3_queue** %48, align 8
  store %struct.hnae3_queue* %49, %struct.hnae3_queue** %7, align 8
  %50 = load %struct.hnae3_queue*, %struct.hnae3_queue** %7, align 8
  %51 = load i32, i32* @HNS3_RING_TX_RING_TC_REG, align 4
  %52 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %5, align 8
  %53 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hns3_write_dev(%struct.hnae3_queue* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %29

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %12

63:                                               ; preds = %12
  ret void
}

declare dso_local i32 @hns3_write_dev(%struct.hnae3_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
