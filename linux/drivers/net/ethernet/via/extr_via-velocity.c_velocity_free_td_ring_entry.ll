; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_free_td_ring_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_free_td_ring_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.velocity_td_info** }
%struct.velocity_td_info = type { i32, %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_info*, i32, i32)* @velocity_free_td_ring_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @velocity_free_td_ring_entry(%struct.velocity_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.velocity_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.velocity_td_info*, align 8
  %8 = alloca i32, align 4
  store %struct.velocity_info* %0, %struct.velocity_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %10 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.velocity_td_info**, %struct.velocity_td_info*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.velocity_td_info*, %struct.velocity_td_info** %12, i64 %14
  %16 = load %struct.velocity_td_info*, %struct.velocity_td_info** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %16, i64 %18
  store %struct.velocity_td_info* %19, %struct.velocity_td_info** %7, align 8
  %20 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %21 = icmp eq %struct.velocity_td_info* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %25 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %79

28:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %32 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %37 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %35
  %45 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %46 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %49 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %56 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @dma_unmap_single(i32 %47, i64 %54, i32 %59, i32 %60)
  %62 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %63 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %44, %35
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %29

72:                                               ; preds = %29
  %73 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %74 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %75)
  %77 = load %struct.velocity_td_info*, %struct.velocity_td_info** %7, align 8
  %78 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %77, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %78, align 8
  br label %79

79:                                               ; preds = %22, %72, %23
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
