; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.t4vf_port_stats = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @cxgb4vf_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @cxgb4vf_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.t4vf_port_stats, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %5, align 8
  %11 = load %struct.port_info*, %struct.port_info** %5, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = load %struct.port_info*, %struct.port_info** %5, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @t4vf_get_port_stats(%struct.adapter* %19, i32 %22, %struct.t4vf_port_stats* %4)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %28 = call i32 @memset(%struct.net_device_stats* %27, i32 0, i32 48)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  store %struct.net_device_stats* %32, %struct.net_device_stats** %2, align 8
  br label %93

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 15
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %35, %37
  %39 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 13
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 12
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %41, %43
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %48, %50
  %52 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %51, %53
  %55 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %54, %56
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %61, %63
  %65 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %64, %66
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %71, %73
  %75 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %74, %76
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.t4vf_port_stats, %struct.t4vf_port_stats* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  store %struct.net_device_stats* %92, %struct.net_device_stats** %2, align 8
  br label %93

93:                                               ; preds = %33, %31
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  ret %struct.net_device_stats* %94
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4vf_get_port_stats(%struct.adapter*, i32, %struct.t4vf_port_stats*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
