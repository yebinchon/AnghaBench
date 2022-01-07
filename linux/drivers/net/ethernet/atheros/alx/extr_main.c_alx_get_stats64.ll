; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.alx_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.alx_hw_stats }
%struct.alx_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @alx_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.alx_priv*, align 8
  %6 = alloca %struct.alx_hw_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.alx_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.alx_priv* %8, %struct.alx_priv** %5, align 8
  %9 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %10 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.alx_hw_stats* %11, %struct.alx_hw_stats** %6, align 8
  %12 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %13 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %16 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %15, i32 0, i32 1
  %17 = call i32 @alx_update_hw_stats(%struct.TYPE_2__* %16)
  %18 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %19 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 8
  %23 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %24 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 4
  %28 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %29 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 8
  %33 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %34 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %33, i32 0, i32 14
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %37 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %36, i32 0, i32 13
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %41 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %45 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 12
  store i64 %47, i64* %49, align 8
  %50 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %51 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %54 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %58 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %57, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %62 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %66 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %70 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %74 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %73, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %78 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %80 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %79, i32 0, i32 10
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 11
  store i64 %81, i64* %83, align 8
  %84 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %85 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %88 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %87, i32 0, i32 10
  store i64 %86, i64* %88, align 8
  %89 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %90 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %93 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %92, i32 0, i32 9
  store i64 %91, i64* %93, align 8
  %94 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %95 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 8
  store i64 %96, i64* %98, align 8
  %99 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %100 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 7
  store i64 %101, i64* %103, align 8
  %104 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %105 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %108 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %112 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %116 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %120 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %122 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %125 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %127 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %130 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  %131 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %132 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %135 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %137 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %140 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %144 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = load %struct.alx_hw_stats*, %struct.alx_hw_stats** %6, align 8
  %146 = getelementptr inbounds %struct.alx_hw_stats, %struct.alx_hw_stats* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %149 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %153 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %155 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock(i32* %155)
  ret void
}

declare dso_local %struct.alx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alx_update_hw_stats(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
