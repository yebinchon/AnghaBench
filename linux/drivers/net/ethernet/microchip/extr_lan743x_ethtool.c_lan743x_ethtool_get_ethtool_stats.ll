; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.lan743x_adapter = type { %struct.TYPE_5__* }

@lan743x_set0_hw_cnt_addr = common dso_local global %struct.TYPE_5__* null, align 8
@lan743x_set2_hw_cnt_addr = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @lan743x_ethtool_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ethtool_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.lan743x_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.lan743x_adapter* %12, %struct.lan743x_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lan743x_set0_hw_cnt_addr, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lan743x_set0_hw_cnt_addr, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @lan743x_csr_read(%struct.lan743x_adapter* %19, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  store i64 %27, i64* %32, align 8
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %13

36:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %41)
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %46 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %52, i64* %57, align 8
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %37

61:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lan743x_set2_hw_cnt_addr, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %7, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lan743x_set2_hw_cnt_addr, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @lan743x_csr_read(%struct.lan743x_adapter* %68, i64 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  store i64 %76, i64* %81, align 8
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %62

85:                                               ; preds = %62
  ret void
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @lan743x_csr_read(%struct.lan743x_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
