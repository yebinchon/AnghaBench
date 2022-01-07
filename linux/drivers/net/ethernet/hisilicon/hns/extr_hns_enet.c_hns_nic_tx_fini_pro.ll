; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_tx_fini_pro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_tx_fini_pro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { %struct.hnae_ring* }
%struct.hnae_ring = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae_ring*, i32)* }

@RCB_REG_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_ring_data*)* @hns_nic_tx_fini_pro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_tx_fini_pro(%struct.hns_nic_ring_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_nic_ring_data*, align 8
  %4 = alloca %struct.hnae_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %3, align 8
  %6 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %7 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %6, i32 0, i32 0
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  store %struct.hnae_ring* %8, %struct.hnae_ring** %4, align 8
  %9 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %10 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %9, i32 0, i32 0
  %11 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %12 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.hnae_ring*, i32)*, i32 (%struct.hnae_ring*, i32)** %20, align 8
  %22 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %23 = call i32 %21(%struct.hnae_ring* %22, i32 0)
  %24 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %25 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RCB_REG_HEAD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %32 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %37 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %36, i32 0, i32 0
  %38 = load %struct.hnae_ring*, %struct.hnae_ring** %37, align 8
  %39 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hnae_ring*, i32)*, i32 (%struct.hnae_ring*, i32)** %47, align 8
  %49 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %50 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %49, i32 0, i32 0
  %51 = load %struct.hnae_ring*, %struct.hnae_ring** %50, align 8
  %52 = call i32 %48(%struct.hnae_ring* %51, i32 1)
  store i32 0, i32* %2, align 4
  br label %54

53:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
