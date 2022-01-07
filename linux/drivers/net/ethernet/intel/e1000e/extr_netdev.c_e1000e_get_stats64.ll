; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.e1000_adapter* %7, %struct.e1000_adapter** %5, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %12 = call i32 @e1000e_update_stats(%struct.e1000_adapter* %11)
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 14
  store i32 %16, i32* %18, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %23, i32 0, i32 13
  store i32 %22, i32* %24, align 8
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  %43 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %48 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %62, %66
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %72, %76
  %78 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %79 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %78, i32 0, i32 8
  store i64 %77, i64* %79, align 8
  %80 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %83, %87
  %89 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %89, i32 0, i32 7
  store i64 %88, i64* %90, align 8
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %96 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %95, i32 0, i32 6
  store i64 %94, i64* %96, align 8
  %97 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %98 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %102 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  %103 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %108 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %112, %116
  %118 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %119 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %121 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %125 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %127 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %131 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %133 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %137 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %139 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @e1000e_update_stats(%struct.e1000_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
