; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64 }
%struct.macb = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_device_stats }
%struct.TYPE_3__ = type { %struct.gem_stats }
%struct.gem_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.macb*)* @gem_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @gem_get_stats(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.gem_stats*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  store %struct.macb* %0, %struct.macb** %2, align 8
  %5 = load %struct.macb*, %struct.macb** %2, align 8
  %6 = getelementptr inbounds %struct.macb, %struct.macb* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.gem_stats* %7, %struct.gem_stats** %3, align 8
  %8 = load %struct.macb*, %struct.macb** %2, align 8
  %9 = getelementptr inbounds %struct.macb, %struct.macb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %4, align 8
  %12 = load %struct.macb*, %struct.macb** %2, align 8
  %13 = call i32 @gem_update_stats(%struct.macb* %12)
  %14 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %15 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %18 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %22 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %26 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %30 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %34 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %38 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %42 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 11
  store i64 %44, i64* %46, align 8
  %47 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %48 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %47, i32 0, i32 14
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %51 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %55 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %59 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 10
  store i64 %61, i64* %63, align 8
  %64 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %65 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %70 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %69, i32 0, i32 12
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %73 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %77 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 8
  store i64 %79, i64* %81, align 8
  %82 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %83 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %86 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %90 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %94 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  %99 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %100 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %103 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  %104 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %105 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %108 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %110 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %113 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %115 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %118 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %120 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %123 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %125 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %128 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.gem_stats*, %struct.gem_stats** %3, align 8
  %130 = getelementptr inbounds %struct.gem_stats, %struct.gem_stats* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %134
}

declare dso_local i32 @gem_update_stats(%struct.macb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
