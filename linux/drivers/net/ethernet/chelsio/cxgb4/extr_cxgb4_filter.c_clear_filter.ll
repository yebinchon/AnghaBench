; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_clear_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_clear_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.filter_entry = type { %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.port_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_filter(%struct.adapter* %0, %struct.filter_entry* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.filter_entry*, align 8
  %5 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.filter_entry* %1, %struct.filter_entry** %4, align 8
  %6 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %7 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.port_info* @netdev_priv(i32 %8)
  store %struct.port_info* %9, %struct.port_info** %5, align 8
  %10 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %11 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %16 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @cxgb4_l2t_release(i64 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %21 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %26 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cxgb4_smt_release(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %31 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %38 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = load %struct.port_info*, %struct.port_info** %5, align 8
  %46 = getelementptr inbounds %struct.port_info, %struct.port_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %49 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 511
  %54 = call i32 @t4_free_encap_mac_filt(%struct.adapter* %44, i32 %47, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %43, %36, %29
  %56 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %57 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @is_t6(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61, %55
  %69 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %70 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %76 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %79 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = call i32 @cxgb4_clip_release(i32 %77, i32* %81, i32 1)
  br label %83

83:                                               ; preds = %74, %68, %61
  %84 = load %struct.filter_entry*, %struct.filter_entry** %4, align 8
  %85 = call i32 @memset(%struct.filter_entry* %84, i32 0, i32 64)
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @cxgb4_l2t_release(i64) #1

declare dso_local i32 @cxgb4_smt_release(i64) #1

declare dso_local i32 @t4_free_encap_mac_filt(%struct.adapter*, i32, i32, i32) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local i32 @cxgb4_clip_release(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.filter_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
