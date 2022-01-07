; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.emac_adapter = type { %struct.emac_stats }
%struct.emac_stats = type { i32, i32, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @emac_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.emac_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.emac_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.emac_adapter* %8, %struct.emac_adapter** %5, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 0
  store %struct.emac_stats* %10, %struct.emac_stats** %6, align 8
  %11 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %12 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %15 = call i32 @emac_update_hw_stats(%struct.emac_adapter* %14)
  %16 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %17 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %19, i32 0, i32 16
  store i32 %18, i32* %20, align 8
  %21 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %22 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %27 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 8
  %31 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %32 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 4
  %36 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %37 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %40 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 8
  %41 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %42 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %41, i32 0, i32 12
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %45 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %43, %48
  %50 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %51 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %55 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 11
  store i64 %57, i64* %59, align 8
  %60 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %61 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %64 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %68 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %72 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %76 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 10
  store i64 %78, i64* %80, align 8
  %81 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %82 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 8
  %86 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %87 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %89, i32 0, i32 8
  store i64 %88, i64* %90, align 8
  %91 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %92 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %95 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %94, i32 0, i32 7
  store i64 %93, i64* %95, align 8
  %96 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %97 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %100 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %99, i32 0, i32 6
  store i64 %98, i64* %100, align 8
  %101 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %102 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %105 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %107 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %110 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %112 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %115 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %119 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %123 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %127 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %129 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %134 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %137 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %139 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %142 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.emac_stats*, %struct.emac_stats** %6, align 8
  %144 = getelementptr inbounds %struct.emac_stats, %struct.emac_stats* %143, i32 0, i32 1
  %145 = call i32 @spin_unlock(i32* %144)
  ret void
}

declare dso_local %struct.emac_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @emac_update_hw_stats(%struct.emac_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
