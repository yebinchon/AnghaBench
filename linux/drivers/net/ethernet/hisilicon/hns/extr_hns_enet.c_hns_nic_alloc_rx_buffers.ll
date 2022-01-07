; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { %struct.TYPE_3__, %struct.hnae_ring* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hnae_ring = type { i64, i64, %struct.TYPE_4__, %struct.hnae_desc_cb* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hnae_desc_cb = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"hnae reserve buffer map failed.\0A\00", align 1
@next_to_use = common dso_local global i32 0, align 4
@RCB_REG_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_ring_data*, i32)* @hns_nic_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_alloc_rx_buffers(%struct.hns_nic_ring_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_nic_ring_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae_desc_cb, align 8
  %8 = alloca %struct.hnae_desc_cb*, align 8
  %9 = alloca %struct.hnae_ring*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %12 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %11, i32 0, i32 1
  %13 = load %struct.hnae_ring*, %struct.hnae_ring** %12, align 8
  store %struct.hnae_ring* %13, %struct.hnae_ring** %9, align 8
  %14 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %15 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %10, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %68, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %24 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %23, i32 0, i32 3
  %25 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %24, align 8
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %25, i64 %28
  store %struct.hnae_desc_cb* %29, %struct.hnae_desc_cb** %8, align 8
  %30 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %8, align 8
  %31 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %36 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %41 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %42 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @hnae_reuse_buffer(%struct.hnae_ring* %40, i64 %43)
  br label %64

45:                                               ; preds = %22
  %46 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %47 = call i32 @hnae_reserve_buffer_map(%struct.hnae_ring* %46, %struct.hnae_desc_cb* %7)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %52 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.net_device*, %struct.net_device** %10, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %71

58:                                               ; preds = %45
  %59 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %60 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %61 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @hnae_replace_buffer(%struct.hnae_ring* %59, i64 %62, %struct.hnae_desc_cb* %7)
  br label %64

64:                                               ; preds = %58, %34
  %65 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %66 = load i32, i32* @next_to_use, align 4
  %67 = call i32 @ring_ptr_move_fw(%struct.hnae_ring* %65, i32 %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %18

71:                                               ; preds = %50, %18
  %72 = call i32 (...) @wmb()
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.hnae_ring*, %struct.hnae_ring** %9, align 8
  %75 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RCB_REG_HEAD, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %73, i64 %78)
  ret void
}

declare dso_local i32 @hnae_reuse_buffer(%struct.hnae_ring*, i64) #1

declare dso_local i32 @hnae_reserve_buffer_map(%struct.hnae_ring*, %struct.hnae_desc_cb*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @hnae_replace_buffer(%struct.hnae_ring*, i64, %struct.hnae_desc_cb*) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hnae_ring*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
