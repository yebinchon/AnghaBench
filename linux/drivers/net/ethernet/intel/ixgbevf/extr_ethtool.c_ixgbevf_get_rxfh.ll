; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, %struct.TYPE_5__, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ixgbe_mac_X550_vf = common dso_local global i64 0, align 8
@IXGBEVF_X550_VFRETA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @ixgbevf_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ixgbevf_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbevf_adapter* %14, %struct.ixgbevf_adapter** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ixgbe_mac_X550_vf, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %20
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @ixgbevf_get_rxfh_key_size(%struct.net_device* %36)
  %38 = call i32 @memcpy(i32* %32, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @IXGBEVF_X550_VFRETA_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %39
  br label %100

64:                                               ; preds = %20
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %102

71:                                               ; preds = %67, %64
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_bh(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %78, i32 0, i32 1
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %82 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ixgbevf_get_reta_locked(%struct.TYPE_5__* %79, i32* %80, i32 %83)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %77, %71
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %93 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %92, i32 0, i32 1
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @ixgbevf_get_rss_key_locked(%struct.TYPE_5__* %93, i32* %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %88, %85
  %97 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %63
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %70
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ixgbevf_get_rxfh_key_size(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ixgbevf_get_reta_locked(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ixgbevf_get_rss_key_locked(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
