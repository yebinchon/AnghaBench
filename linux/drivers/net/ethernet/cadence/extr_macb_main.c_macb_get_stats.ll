; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.macb = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.macb_stats }
%struct.macb_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.net_device_stats }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @macb_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @macb_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macb*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.macb_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.macb* @netdev_priv(%struct.net_device* %7)
  store %struct.macb* %8, %struct.macb** %4, align 8
  %9 = load %struct.macb*, %struct.macb** %4, align 8
  %10 = getelementptr inbounds %struct.macb, %struct.macb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %5, align 8
  %13 = load %struct.macb*, %struct.macb** %4, align 8
  %14 = getelementptr inbounds %struct.macb, %struct.macb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.macb_stats* %15, %struct.macb_stats** %6, align 8
  %16 = load %struct.macb*, %struct.macb** %4, align 8
  %17 = call i64 @macb_is_gem(%struct.macb* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.macb*, %struct.macb** %4, align 8
  %21 = call %struct.net_device_stats* @gem_get_stats(%struct.macb* %20)
  store %struct.net_device_stats* %21, %struct.net_device_stats** %2, align 8
  br label %149

22:                                               ; preds = %1
  %23 = load %struct.macb*, %struct.macb** %4, align 8
  %24 = call i32 @macb_update_stats(%struct.macb* %23)
  %25 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %26 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %29 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %33 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %37 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %41 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %45 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %49 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %53 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 10
  store i64 %55, i64* %57, align 8
  %58 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %59 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %58, i32 0, i32 14
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %62 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %66 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %70 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %74 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %73, i32 0, i32 13
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 9
  store i64 %76, i64* %78, align 8
  %79 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %80 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %79, i32 0, i32 12
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %83 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %82, i32 0, i32 11
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %87 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 8
  store i64 %89, i64* %91, align 8
  %92 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %93 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %96 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %100 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %104 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %108 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %107, i32 0, i32 7
  store i64 %106, i64* %108, align 8
  %109 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %110 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %113 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %117 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %116, i32 0, i32 6
  store i64 %115, i64* %117, align 8
  %118 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %119 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %122 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %124 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %127 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %129 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %132 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %134 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %137 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %139 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %142 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.macb_stats*, %struct.macb_stats** %6, align 8
  %144 = getelementptr inbounds %struct.macb_stats, %struct.macb_stats* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %147 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  store %struct.net_device_stats* %148, %struct.net_device_stats** %2, align 8
  br label %149

149:                                              ; preds = %22, %19
  %150 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  ret %struct.net_device_stats* %150
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @macb_is_gem(%struct.macb*) #1

declare dso_local %struct.net_device_stats* @gem_get_stats(%struct.macb*) #1

declare dso_local i32 @macb_update_stats(%struct.macb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
