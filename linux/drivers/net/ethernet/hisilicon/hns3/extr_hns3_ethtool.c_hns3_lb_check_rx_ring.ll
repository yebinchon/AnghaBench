; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_lb_check_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_lb_check_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { %struct.TYPE_3__*, %struct.hnae3_handle* }
%struct.TYPE_3__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hns3_enet_ring_group }
%struct.hns3_enet_ring_group = type { i64 }
%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32 }

@hns3_lb_check_skb_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_nic_priv*, i32)* @hns3_lb_check_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_lb_check_rx_ring(%struct.hns3_nic_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hnae3_knic_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns3_enet_ring*, align 8
  %10 = alloca %struct.hns3_enet_ring_group*, align 8
  %11 = alloca i64, align 8
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %12, i32 0, i32 1
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %13, align 8
  store %struct.hnae3_handle* %14, %struct.hnae3_handle** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %16, %struct.hnae3_knic_private_info** %6, align 8
  %17 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %18 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %61, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %23 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %20
  %28 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %29 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %34, align 8
  store %struct.hns3_enet_ring* %35, %struct.hns3_enet_ring** %9, align 8
  %36 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %37 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.hns3_enet_ring_group* %39, %struct.hns3_enet_ring_group** %10, align 8
  %40 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %10, align 8
  %41 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = call i32 (...) @preempt_disable()
  %44 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @hns3_lb_check_skb_data, align 4
  %47 = call i32 @hns3_clean_rx_ring(%struct.hns3_enet_ring* %44, i32 %45, i32 %46)
  %48 = call i32 (...) @preempt_enable()
  %49 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %10, align 8
  %50 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %10, align 8
  %60 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %27
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @hns3_clean_rx_ring(%struct.hns3_enet_ring*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
