; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.qede_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.qede_stats_common }
%struct.TYPE_3__ = type { i32 }
%struct.qede_stats_common = type { i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @qede_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_stats_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %5, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %10 = call i32 @qede_fill_by_demand_stats(%struct.qede_dev* %9)
  %11 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.qede_stats_common* %13, %struct.qede_stats_common** %6, align 8
  %14 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %15 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %14, i32 0, i32 15
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %18 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %22 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %26 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %25, i32 0, i32 9
  store i64 %24, i64* %26, align 8
  %27 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %28 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %31 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %30, i32 0, i32 13
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %35 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %38, i32 0, i32 8
  store i64 %37, i64* %39, align 8
  %40 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %41 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %44 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %48 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %51, i32 0, i32 7
  store i64 %50, i64* %52, align 8
  %53 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %54 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %57 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %61 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %65 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %64, i32 0, i32 6
  store i64 %63, i64* %65, align 8
  %66 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %67 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %70 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %72 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %75 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %79 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %81 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %84 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %86 = call i64 @QEDE_IS_BB(%struct.qede_dev* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %2
  %89 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %90 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %95 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %88, %2
  %97 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %98 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %101 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.qede_stats_common*, %struct.qede_stats_common** %6, align 8
  %103 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %106 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  ret void
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qede_fill_by_demand_stats(%struct.qede_dev*) #1

declare dso_local i64 @QEDE_IS_BB(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
