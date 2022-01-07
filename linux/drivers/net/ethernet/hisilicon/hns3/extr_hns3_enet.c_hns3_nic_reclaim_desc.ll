; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_reclaim_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_reclaim_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, i32, %struct.hns3_desc_cb* }
%struct.hns3_desc_cb = type { i64, i64 }

@DESC_TYPE_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, i32, i32*, i32*)* @hns3_nic_reclaim_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_reclaim_desc(%struct.hns3_enet_ring* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hns3_enet_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns3_desc_cb*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %12 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %52, %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %20 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %19, i32 0, i32 2
  %21 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %21, i64 %23
  store %struct.hns3_desc_cb* %24, %struct.hns3_desc_cb** %10, align 8
  %25 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %26 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DESC_TYPE_SKB, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %10, align 8
  %35 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %36
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @hns3_free_buffer_detach(%struct.hns3_enet_ring* %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %48 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %54 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %53, i32 0, i32 2
  %55 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %55, i64 %57
  %59 = call i32 @prefetch(%struct.hns3_desc_cb* %58)
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %62 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @smp_store_release(i32* %62, i32 %63)
  ret void
}

declare dso_local i32 @hns3_free_buffer_detach(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @prefetch(%struct.hns3_desc_cb*) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
