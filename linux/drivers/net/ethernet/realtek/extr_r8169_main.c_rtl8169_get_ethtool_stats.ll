; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.rtl8169_private = type { %struct.rtl8169_counters* }
%struct.rtl8169_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @rtl8169_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl8169_private*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.rtl8169_counters*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %10)
  store %struct.rtl8169_private* %11, %struct.rtl8169_private** %7, align 8
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %13 = call %struct.device* @tp_to_dev(%struct.rtl8169_private* %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %15 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %14, i32 0, i32 0
  %16 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %15, align 8
  store %struct.rtl8169_counters* %16, %struct.rtl8169_counters** %9, align 8
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = call i32 @pm_runtime_get_noresume(%struct.device* %18)
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = call i64 @pm_runtime_active(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %25 = call i32 @rtl8169_update_counters(%struct.rtl8169_private* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i32 @pm_runtime_put_noidle(%struct.device* %27)
  %29 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %30 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %36 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le64_to_cpu(i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %42 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le64_to_cpu(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %48 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %54 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %60 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %66 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %72 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %78 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le64_to_cpu(i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %84 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le64_to_cpu(i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %90 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 10
  store i32 %92, i32* %94, align 4
  %95 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %96 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 11
  store i32 %98, i32* %100, align 4
  %101 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %9, align 8
  %102 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 12
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i64 @pm_runtime_active(%struct.device*) #1

declare dso_local i32 @rtl8169_update_counters(%struct.rtl8169_private*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
