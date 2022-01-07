; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.gem = type { i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @gem_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.gem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gem* @netdev_priv(%struct.net_device* %9)
  store %struct.gem* %10, %struct.gem** %6, align 8
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %8, i32 %18)
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AUTONEG_ENABLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AUTONEG_DISABLE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %99

36:                                               ; preds = %26, %2
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AUTONEG_ENABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %99

49:                                               ; preds = %43, %36
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AUTONEG_DISABLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @SPEED_1000, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @SPEED_100, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @SPEED_10, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %64, %60, %56
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DUPLEX_HALF, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DUPLEX_FULL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75, %64
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %99

85:                                               ; preds = %75, %68, %49
  %86 = load %struct.gem*, %struct.gem** %6, align 8
  %87 = getelementptr inbounds %struct.gem, %struct.gem* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @netif_device_present(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.gem*, %struct.gem** %6, align 8
  %93 = getelementptr inbounds %struct.gem, %struct.gem* %92, i32 0, i32 0
  %94 = call i32 @del_timer_sync(i32* %93)
  %95 = load %struct.gem*, %struct.gem** %6, align 8
  %96 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %97 = call i32 @gem_begin_auto_negotiation(%struct.gem* %95, %struct.ethtool_link_ksettings* %96)
  br label %98

98:                                               ; preds = %91, %85
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %82, %46, %33
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @gem_begin_auto_negotiation(%struct.gem*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
