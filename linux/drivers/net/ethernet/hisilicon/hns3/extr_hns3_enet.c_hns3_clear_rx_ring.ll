; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clear_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clear_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i64, i64, i64, i32*, %struct.TYPE_10__*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hns3_desc_cb = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"reserve buffer map failed, ret = %d\0A\00", align 1
@next_to_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*)* @hns3_clear_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_clear_rx_ring(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_enet_ring*, align 8
  %4 = alloca %struct.hns3_desc_cb, align 4
  %5 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  br label %6

6:                                                ; preds = %59, %1
  %7 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %8 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %11 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %6
  %15 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %15, i32 0, i32 7
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %19 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %14
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %27 = call i32 @hns3_reserve_buffer_map(%struct.hns3_enet_ring* %26, %struct.hns3_desc_cb* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %32 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %31, i32 0, i32 5
  %33 = call i32 @u64_stats_update_begin(i32* %32)
  %34 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %35 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %40 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %39, i32 0, i32 5
  %41 = call i32 @u64_stats_update_end(i32* %40)
  %42 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %43 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %42, i32 0, i32 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @netdev_warn(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %78

53:                                               ; preds = %25
  %54 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %55 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %56 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @hns3_replace_buffer(%struct.hns3_enet_ring* %54, i64 %57, %struct.hns3_desc_cb* %4)
  br label %59

59:                                               ; preds = %53, %14
  %60 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %61 = load i32, i32* @next_to_use, align 4
  %62 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %60, i32 %61)
  br label %6

63:                                               ; preds = %6
  %64 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %65 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %70 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_kfree_skb_any(i32* %71)
  %73 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %74 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %76 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %68, %63
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %30
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @hns3_reserve_buffer_map(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @hns3_replace_buffer(%struct.hns3_enet_ring*, i64, %struct.hns3_desc_cb*) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
