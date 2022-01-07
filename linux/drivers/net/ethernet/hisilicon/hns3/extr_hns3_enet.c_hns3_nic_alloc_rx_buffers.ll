; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.hns3_desc_cb* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hns3_desc_cb = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"alloc rx buffer failed: %d\0A\00", align 1
@next_to_use = common dso_local global i32 0, align 4
@HNS3_RING_RX_RING_HEAD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, i32)* @hns3_nic_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_alloc_rx_buffers(%struct.hns3_enet_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.hns3_enet_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns3_desc_cb*, align 8
  %6 = alloca %struct.hns3_desc_cb, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %88, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %91

13:                                               ; preds = %9
  %14 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %15 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %14, i32 0, i32 5
  %16 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %15, align 8
  %17 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %16, i64 %19
  store %struct.hns3_desc_cb* %20, %struct.hns3_desc_cb** %5, align 8
  %21 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %5, align 8
  %22 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %13
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %27 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %26, i32 0, i32 2
  %28 = call i32 @u64_stats_update_begin(i32* %27)
  %29 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %35 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %34, i32 0, i32 2
  %36 = call i32 @u64_stats_update_end(i32* %35)
  %37 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %38 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %39 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hns3_reuse_buffer(%struct.hns3_enet_ring* %37, i64 %40)
  br label %84

42:                                               ; preds = %13
  %43 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %44 = call i32 @hns3_reserve_buffer_map(%struct.hns3_enet_ring* %43, %struct.hns3_desc_cb* %6)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %49 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %48, i32 0, i32 2
  %50 = call i32 @u64_stats_update_begin(i32* %49)
  %51 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %52 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %57 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %56, i32 0, i32 2
  %58 = call i32 @u64_stats_update_end(i32* %57)
  %59 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %60 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @hns3_rl_err(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %91

67:                                               ; preds = %42
  %68 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %69 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %70 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @hns3_replace_buffer(%struct.hns3_enet_ring* %68, i64 %71, %struct.hns3_desc_cb* %6)
  %73 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %74 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %73, i32 0, i32 2
  %75 = call i32 @u64_stats_update_begin(i32* %74)
  %76 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %77 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %82 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %81, i32 0, i32 2
  %83 = call i32 @u64_stats_update_end(i32* %82)
  br label %84

84:                                               ; preds = %67, %25
  %85 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %86 = load i32, i32* @next_to_use, align 4
  %87 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %85, i32 %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %9

91:                                               ; preds = %47, %9
  %92 = call i32 (...) @wmb()
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %95 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HNS3_RING_RX_RING_HEAD_REG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel_relaxed(i32 %93, i64 %100)
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @hns3_reuse_buffer(%struct.hns3_enet_ring*, i64) #1

declare dso_local i32 @hns3_reserve_buffer_map(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

declare dso_local i32 @hns3_rl_err(i32, i8*, i32) #1

declare dso_local i32 @hns3_replace_buffer(%struct.hns3_enet_ring*, i64, %struct.hns3_desc_cb*) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
