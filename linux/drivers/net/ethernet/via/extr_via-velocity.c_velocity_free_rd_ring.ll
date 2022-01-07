; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_free_rd_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_free_rd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.velocity_rd_info*, i32, %struct.rx_desc* }
%struct.velocity_rd_info = type { i32*, i64 }
%struct.rx_desc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_info*)* @velocity_free_rd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @velocity_free_rd_ring(%struct.velocity_info* %0) #0 {
  %2 = alloca %struct.velocity_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.velocity_rd_info*, align 8
  %5 = alloca %struct.rx_desc*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %2, align 8
  %6 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %8, align 8
  %10 = icmp eq %struct.velocity_rd_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %75

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %16 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %13
  %21 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %22 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %24, i64 %26
  store %struct.velocity_rd_info* %27, %struct.velocity_rd_info** %4, align 8
  %28 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %29 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.rx_desc*, %struct.rx_desc** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %31, i64 %33
  store %struct.rx_desc* %34, %struct.rx_desc** %5, align 8
  %35 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %36 = call i32 @memset(%struct.rx_desc* %35, i32 0, i32 4)
  %37 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %4, align 8
  %38 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %20
  br label %63

42:                                               ; preds = %20
  %43 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %44 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %4, align 8
  %47 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %50 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @dma_unmap_single(i32 %45, i64 %48, i32 %52, i32 %53)
  %55 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %4, align 8
  %56 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %4, align 8
  %58 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @dev_kfree_skb(i32* %59)
  %61 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %4, align 8
  %62 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %42, %41
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %68 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %69, align 8
  %71 = call i32 @kfree(%struct.velocity_rd_info* %70)
  %72 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %73 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.velocity_rd_info* null, %struct.velocity_rd_info** %74, align 8
  br label %75

75:                                               ; preds = %66, %11
  ret void
}

declare dso_local i32 @memset(%struct.rx_desc*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @kfree(%struct.velocity_rd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
