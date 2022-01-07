; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_clean_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_clean_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { %struct.hns_nic_ring_data*, %struct.net_device* }
%struct.hns_nic_ring_data = type { i32 (%struct.hns_nic_ring_data*, i32, i32)* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@__lb_other_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_priv*, i32, i32, i32)* @__lb_clean_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lb_clean_rings(%struct.hns_nic_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hns_nic_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hns_nic_ring_data*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %17 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %12, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load %struct.net_device*, %struct.net_device** %12, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %38 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %37, i32 0, i32 0
  %39 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %39, i64 %41
  store %struct.hns_nic_ring_data* %42, %struct.hns_nic_ring_data** %11, align 8
  %43 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %11, align 8
  %44 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %43, i32 0, i32 0
  %45 = load i32 (%struct.hns_nic_ring_data*, i32, i32)*, i32 (%struct.hns_nic_ring_data*, i32, i32)** %44, align 8
  %46 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @__lb_other_process, align 4
  %49 = call i32 %45(%struct.hns_nic_ring_data* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.net_device*, %struct.net_device** %12, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.net_device*, %struct.net_device** %12, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.net_device*, %struct.net_device** %12, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load %struct.net_device*, %struct.net_device** %12, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
