; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.atl1e_adapter = type { %struct.atl1e_hw_stats }
%struct.atl1e_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @atl1e_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @atl1e_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.atl1e_hw_stats*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl1e_adapter* %7, %struct.atl1e_adapter** %3, align 8
  %8 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %8, i32 0, i32 0
  store %struct.atl1e_hw_stats* %9, %struct.atl1e_hw_stats** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %5, align 8
  %12 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %13 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %12, i32 0, i32 17
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %16 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %15, i32 0, i32 15
  store i32 %14, i32* %16, align 8
  %17 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %18 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 4
  %22 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %23 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %26 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 8
  %27 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %28 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %31 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %30, i32 0, i32 13
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %35 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %39 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 12
  store i64 %41, i64* %43, align 8
  %44 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %45 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %44, i32 0, i32 12
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %48 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %52 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %56 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %60 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %64 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %68 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %72 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %74 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %73, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %77 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %76, i32 0, i32 11
  store i64 %75, i64* %77, align 8
  %78 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %79 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %82 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %81, i32 0, i32 10
  store i64 %80, i64* %82, align 8
  %83 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %84 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 9
  store i64 %85, i64* %87, align 8
  %88 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %89 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %92 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %91, i32 0, i32 8
  store i64 %90, i64* %92, align 8
  %93 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %94 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %96, i32 0, i32 7
  store i64 %95, i64* %97, align 8
  %98 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %99 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %102 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %106 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %110 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %114 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %116 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 6
  store i64 %117, i64* %119, align 8
  %120 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %121 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %124 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %123, i32 0, i32 5
  store i64 %122, i64* %124, align 8
  %125 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %126 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %129 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  %130 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %131 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %134 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %138 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  %139 = load %struct.atl1e_hw_stats*, %struct.atl1e_hw_stats** %4, align 8
  %140 = getelementptr inbounds %struct.atl1e_hw_stats, %struct.atl1e_hw_stats* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %143 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %147 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  ret %struct.net_device_stats* %148
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
