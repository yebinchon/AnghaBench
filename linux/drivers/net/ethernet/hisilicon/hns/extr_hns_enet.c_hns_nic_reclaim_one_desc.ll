; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_reclaim_one_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_reclaim_one_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i64, %struct.hnae_desc_cb* }
%struct.hnae_desc_cb = type { i64, i64 }

@DESC_TYPE_SKB = common dso_local global i64 0, align 8
@next_to_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i32*, i32*)* @hns_nic_reclaim_one_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_reclaim_one_desc(%struct.hnae_ring* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hnae_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hnae_desc_cb*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %9 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %8, i32 0, i32 1
  %10 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %9, align 8
  %11 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %12 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %10, i64 %13
  store %struct.hnae_desc_cb* %14, %struct.hnae_desc_cb** %7, align 8
  %15 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %7, align 8
  %16 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DESC_TYPE_SKB, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %7, align 8
  %25 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %26
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %33 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %34 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @hnae_free_buffer_detach(%struct.hnae_ring* %32, i64 %35)
  %37 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %38 = load i32, i32* @next_to_clean, align 4
  %39 = call i32 @ring_ptr_move_fw(%struct.hnae_ring* %37, i32 %38)
  ret void
}

declare dso_local i32 @hnae_free_buffer_detach(%struct.hnae_ring*, i64) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hnae_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
