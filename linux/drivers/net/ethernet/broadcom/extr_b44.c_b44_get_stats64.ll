; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.b44 = type { %struct.b44_hw_stats }
%struct.b44_hw_stats = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @b44_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.b44*, align 8
  %6 = alloca %struct.b44_hw_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.b44* @netdev_priv(%struct.net_device* %8)
  store %struct.b44* %9, %struct.b44** %5, align 8
  %10 = load %struct.b44*, %struct.b44** %5, align 8
  %11 = getelementptr inbounds %struct.b44, %struct.b44* %10, i32 0, i32 0
  store %struct.b44_hw_stats* %11, %struct.b44_hw_stats** %6, align 8
  br label %12

12:                                               ; preds = %129, %2
  %13 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %14 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %13, i32 0, i32 20
  %15 = call i32 @u64_stats_fetch_begin_irq(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %17 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 4
  %21 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %22 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %27 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 4
  %31 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %32 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 8
  %36 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %37 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %36, i32 0, i32 15
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %40 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %39, i32 0, i32 14
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %44 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %48 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %47, i32 0, i32 13
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %52 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %51, i32 0, i32 12
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %55, i32 0, i32 9
  store i64 %54, i64* %56, align 8
  %57 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %58 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %61 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %63 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %66 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %68 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %71 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %74, i32 0, i32 6
  store i64 %73, i64* %75, align 8
  %76 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %77 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %82 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %87 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %92 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %95 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %99 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %103 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %107 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %111 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %115 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %119 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %123 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %125 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %128 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %12
  %130 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %6, align 8
  %131 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %130, i32 0, i32 20
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @u64_stats_fetch_retry_irq(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %12, label %135

135:                                              ; preds = %129
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
