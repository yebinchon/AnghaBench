; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_tc_flower_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_cxgb4_tc_flower_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32, i32 }
%struct.adapter = type { i32 }
%struct.ch_tc_flower_stats = type { i64, i64, i64, i32 }
%struct.ch_tc_flower_entry = type { i32, %struct.ch_tc_flower_stats, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_tc_flower_stats(%struct.net_device* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.ch_tc_flower_stats*, align 8
  %8 = alloca %struct.ch_tc_flower_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.adapter* @netdev2adap(%struct.net_device* %12)
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %16 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ch_tc_flower_entry* @ch_flower_lookup(%struct.adapter* %14, i32 %17)
  store %struct.ch_tc_flower_entry* %18, %struct.ch_tc_flower_entry** %8, align 8
  %19 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %8, align 8
  %20 = icmp ne %struct.ch_tc_flower_entry* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %8, align 8
  %30 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cxgb4_get_filter_counters(%struct.net_device* %25, i32 %28, i64* %9, i64* %10, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %88

37:                                               ; preds = %24
  %38 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %8, align 8
  %39 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %41, i32 0, i32 1
  store %struct.ch_tc_flower_stats* %42, %struct.ch_tc_flower_stats** %7, align 8
  %43 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %44 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %37
  %49 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %50 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @jiffies, align 4
  %56 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %57 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %60 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %59, i32 0, i32 0
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %63 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %68 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %72 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @flow_stats_update(i32* %60, i64 %65, i64 %70, i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %77 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %80 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.ch_tc_flower_stats*, %struct.ch_tc_flower_stats** %7, align 8
  %83 = getelementptr inbounds %struct.ch_tc_flower_stats, %struct.ch_tc_flower_stats* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %58, %37
  %85 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %8, align 8
  %86 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  store i32 0, i32* %3, align 4
  br label %90

88:                                               ; preds = %36, %21
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local %struct.ch_tc_flower_entry* @ch_flower_lookup(%struct.adapter*, i32) #1

declare dso_local i32 @cxgb4_get_filter_counters(%struct.net_device*, i32, i64*, i64*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @flow_stats_update(i32*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
