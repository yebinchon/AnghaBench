; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_base_ring_pair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_base_ring_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_pair_cb = type { i32 }
%struct.dsaf_device = type { %struct.rcb_common_cb** }
%struct.rcb_common_cb = type { i32, i32, %struct.ring_pair_cb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_pair_cb* (%struct.dsaf_device*, i32)* @hns_ae_get_base_ring_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_pair_cb* @hns_ae_get_base_ring_pair(%struct.dsaf_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcb_common_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %9 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %8, i32 0, i32 0
  %10 = load %struct.rcb_common_cb**, %struct.rcb_common_cb*** %9, align 8
  %11 = getelementptr inbounds %struct.rcb_common_cb*, %struct.rcb_common_cb** %10, i64 0
  %12 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %11, align 8
  store %struct.rcb_common_cb* %12, %struct.rcb_common_cb** %5, align 8
  %13 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %14 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %17 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %20 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %19, i32 0, i32 2
  %21 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %21, i64 %27
  ret %struct.ring_pair_cb* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
