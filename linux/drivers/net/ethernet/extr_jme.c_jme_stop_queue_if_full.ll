; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_stop_queue_if_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_stop_queue_if_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.jme_ring* }
%struct.jme_ring = type { i32, i32, %struct.jme_buffer_info* }
%struct.jme_buffer_info = type { i64, i64 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TX Queue Paused\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"TX Queue Fast Waked\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"TX Queue Stopped %d@%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_stop_queue_if_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_stop_queue_if_full(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca %struct.jme_ring*, align 8
  %4 = alloca %struct.jme_buffer_info*, align 8
  %5 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %6, i32 0, i32 2
  %8 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %9 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %8, i64 0
  store %struct.jme_ring* %9, %struct.jme_ring** %3, align 8
  %10 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %11 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %10, i32 0, i32 2
  %12 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  store %struct.jme_buffer_info* %12, %struct.jme_buffer_info** %4, align 8
  %13 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %14 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %17, i64 %18
  store %struct.jme_buffer_info* %19, %struct.jme_buffer_info** %4, align 8
  %20 = call i32 (...) @smp_wmb()
  %21 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %22 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %25 = add nsw i32 %24, 2
  %26 = icmp slt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %1
  %31 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_stop_queue(i32 %33)
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %36 = load i32, i32* @tx_queued, align 4
  %37 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.jme_adapter*, i32, i32, i8*, ...) @netif_info(%struct.jme_adapter* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 (...) @smp_wmb()
  %42 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %43 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %42, i32 0, i32 0
  %44 = call i32 @atomic_read(i32* %43)
  %45 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %30
  %50 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netif_wake_queue(i32 %52)
  %54 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %55 = load i32, i32* @tx_queued, align 4
  %56 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.jme_adapter*, i32, i32, i8*, ...) @netif_info(%struct.jme_adapter* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %49, %30
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %63 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i64, i64* @jiffies, align 8
  %68 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %69 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load i64, i64* @TX_TIMEOUT, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %76 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %74, %66, %61
  %80 = phi i1 [ false, %66 ], [ false, %61 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @netif_stop_queue(i32 %87)
  %89 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %90 = load i32, i32* @tx_queued, align 4
  %91 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i64, i64* @jiffies, align 8
  %96 = call i32 (%struct.jme_adapter*, i32, i32, i8*, ...) @netif_info(%struct.jme_adapter* %89, i32 %90, i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %84, %79
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_info(%struct.jme_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
