; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.mt76x02_dfs_pattern_detector }
%struct.mt76x02_dfs_pattern_detector = type { %struct.mt76x02_dfs_event_rb* }
%struct.mt76x02_dfs_event_rb = type { i64, i64, %struct.mt76x02_dfs_event* }
%struct.mt76x02_dfs_event = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@MT_DFS_EVENT_BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*)* @mt76x02_dfs_queue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_queue_event(%struct.mt76x02_dev* %0, %struct.mt76x02_dfs_event* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.mt76x02_dfs_event*, align 8
  %5 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  %6 = alloca %struct.mt76x02_dfs_event_rb*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.mt76x02_dfs_event* %1, %struct.mt76x02_dfs_event** %4, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  store %struct.mt76x02_dfs_pattern_detector* %8, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %9 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %4, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %14, i32 0, i32 0
  %16 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %15, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %16, i64 1
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %20 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %19, i32 0, i32 0
  %21 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %20, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %21, i64 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi %struct.mt76x02_dfs_event_rb* [ %17, %13 ], [ %22, %18 ]
  store %struct.mt76x02_dfs_event_rb* %24, %struct.mt76x02_dfs_event_rb** %6, align 8
  %25 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %26 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %25, i32 0, i32 2
  %27 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %26, align 8
  %28 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %27, i64 %30
  %32 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %4, align 8
  %33 = bitcast %struct.mt76x02_dfs_event* %31 to i8*
  %34 = bitcast %struct.mt76x02_dfs_event* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  %35 = load i32, i32* @jiffies, align 4
  %36 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %37 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %36, i32 0, i32 2
  %38 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %37, align 8
  %39 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %38, i64 %41
  %43 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %42, i32 0, i32 1
  store i32 %35, i32* %43, align 4
  %44 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %45 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %48 = call i8* @mt76_incr(i64 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %51 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %53 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %23
  %60 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %61 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %64 = call i8* @mt76_incr(i64 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %6, align 8
  %67 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @mt76_incr(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
