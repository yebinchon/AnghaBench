; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.dnet = type { %struct.dnet_stats }
%struct.dnet_stats = type { i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @dnet_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @dnet_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dnet*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.dnet_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.dnet* @netdev_priv(%struct.net_device* %6)
  store %struct.dnet* %7, %struct.dnet** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  store %struct.net_device_stats* %9, %struct.net_device_stats** %4, align 8
  %10 = load %struct.dnet*, %struct.dnet** %3, align 8
  %11 = getelementptr inbounds %struct.dnet, %struct.dnet* %10, i32 0, i32 0
  store %struct.dnet_stats* %11, %struct.dnet_stats** %5, align 8
  %12 = load %struct.dnet*, %struct.dnet** %3, align 8
  %13 = call i32 @dnet_update_stats(%struct.dnet* %12)
  %14 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %15 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %18 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %22 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %21, i32 0, i32 11
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %26 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %30 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %34 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %38 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %37, i32 0, i32 15
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 10
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %44 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %49 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %48, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %52 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %51, i32 0, i32 12
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %56 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %60 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 8
  store i64 %62, i64* %64, align 8
  %65 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %66 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 7
  store i64 %67, i64* %69, align 8
  %70 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %71 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %74 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 6
  store i64 %76, i64* %78, align 8
  %79 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %80 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %85 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %88 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %92 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %96 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %98 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %101 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %103 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %106 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %108 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %113 = getelementptr inbounds %struct.dnet_stats, %struct.dnet_stats* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %116 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.dnet_stats*, %struct.dnet_stats** %5, align 8
  %118 = call i32 @dnet_print_pretty_hwstats(%struct.dnet_stats* %117)
  %119 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %119
}

declare dso_local %struct.dnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dnet_update_stats(%struct.dnet*) #1

declare dso_local i32 @dnet_print_pretty_hwstats(%struct.dnet_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
