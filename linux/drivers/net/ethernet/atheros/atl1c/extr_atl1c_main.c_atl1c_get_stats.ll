; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.atl1c_adapter = type { %struct.atl1c_hw_stats }
%struct.atl1c_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @atl1c_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @atl1c_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.atl1c_hw_stats*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl1c_adapter* %7, %struct.atl1c_adapter** %3, align 8
  %8 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %8, i32 0, i32 0
  store %struct.atl1c_hw_stats* %9, %struct.atl1c_hw_stats** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %5, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %13 = call i32 @atl1c_update_hw_stats(%struct.atl1c_adapter* %12)
  %14 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %15 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %18 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 15
  store i32 %16, i32* %18, align 8
  %19 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %20 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 14
  store i32 %21, i32* %23, align 4
  %24 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %28 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 8
  %29 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %30 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %29, i32 0, i32 14
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %33 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %37 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %41 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 12
  store i64 %43, i64* %45, align 8
  %46 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %47 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %46, i32 0, i32 12
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %50 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %54 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %58 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %62 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %66 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %70 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %69, i32 0, i32 10
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %74 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %76 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 11
  store i64 %77, i64* %79, align 8
  %80 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %81 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %84 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %83, i32 0, i32 10
  store i64 %82, i64* %84, align 8
  %85 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %86 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %89 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %88, i32 0, i32 9
  store i64 %87, i64* %89, align 8
  %90 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %91 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %94 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %93, i32 0, i32 8
  store i64 %92, i64* %94, align 8
  %95 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %96 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %101 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %104 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %108 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %112 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %116 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %118 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %121 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %120, i32 0, i32 6
  store i64 %119, i64* %121, align 8
  %122 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %123 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  %127 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %128 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %131 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %133 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %136 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %140 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load %struct.atl1c_hw_stats*, %struct.atl1c_hw_stats** %4, align 8
  %142 = getelementptr inbounds %struct.atl1c_hw_stats, %struct.atl1c_hw_stats* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %145 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %149 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  ret %struct.net_device_stats* %150
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atl1c_update_hw_stats(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
