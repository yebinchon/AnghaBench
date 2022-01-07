; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_rx_fini_pro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_rx_fini_pro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { %struct.hnae_ring* }
%struct.hnae_ring = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae_ring*, i32)* }

@RCB_REG_FBDNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_ring_data*)* @hns_nic_rx_fini_pro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_rx_fini_pro(%struct.hns_nic_ring_data* %0) #0 {
  %2 = alloca %struct.hns_nic_ring_data*, align 8
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %2, align 8
  %6 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %7 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %6, i32 0, i32 0
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  store %struct.hnae_ring* %8, %struct.hnae_ring** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %10 = call i32 @hns_update_rx_rate(%struct.hnae_ring* %9)
  %11 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %12 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %11, i32 0, i32 0
  %13 = load %struct.hnae_ring*, %struct.hnae_ring** %12, align 8
  %14 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.hnae_ring*, i32)*, i32 (%struct.hnae_ring*, i32)** %22, align 8
  %24 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %25 = call i32 %23(%struct.hnae_ring* %24, i32 0)
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RCB_REG_FBDNUM, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %34 = call i32 @hns_coal_rx_bdnum(%struct.hnae_ring* %33)
  %35 = icmp sle i32 %32, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %38 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %47 = call i32 @hns_nic_adpt_coalesce(%struct.hns_nic_ring_data* %46)
  br label %48

48:                                               ; preds = %45, %36
  store i32 1, i32* %5, align 4
  br label %67

49:                                               ; preds = %1
  %50 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %51 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %50, i32 0, i32 0
  %52 = load %struct.hnae_ring*, %struct.hnae_ring** %51, align 8
  %53 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.hnae_ring*, i32)*, i32 (%struct.hnae_ring*, i32)** %61, align 8
  %63 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %64 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %63, i32 0, i32 0
  %65 = load %struct.hnae_ring*, %struct.hnae_ring** %64, align 8
  %66 = call i32 %62(%struct.hnae_ring* %65, i32 1)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %49, %48
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @hns_update_rx_rate(%struct.hnae_ring*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @hns_coal_rx_bdnum(%struct.hnae_ring*) #1

declare dso_local i32 @hns_nic_adpt_coalesce(%struct.hns_nic_ring_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
