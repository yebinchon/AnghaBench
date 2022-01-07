; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_ksettings_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_ksettings_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, i32, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@advertising = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_ethtool_ksettings_set(%struct.phy_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load i32, i32* @advertising, align 4
  %10 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %9)
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %128

35:                                               ; preds = %2
  %36 = load i32, i32* @advertising, align 4
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @linkmode_copy(i32 %36, i32 %40)
  %42 = load i32, i32* @advertising, align 4
  %43 = load i32, i32* @advertising, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @linkmode_and(i32 %42, i32 %43, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @AUTONEG_ENABLE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %35
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @AUTONEG_DISABLE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %128

58:                                               ; preds = %51, %35
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @AUTONEG_ENABLE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* @advertising, align 4
  %64 = call i64 @linkmode_empty(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %128

69:                                               ; preds = %62, %58
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @AUTONEG_DISABLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @SPEED_1000, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @SPEED_100, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @SPEED_10, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81, %77, %73
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @DUPLEX_HALF, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @DUPLEX_FULL, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %81
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %128

96:                                               ; preds = %89, %85, %69
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %102 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %104 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @advertising, align 4
  %107 = call i32 @linkmode_copy(i32 %105, i32 %106)
  %108 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %109 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %110 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @AUTONEG_ENABLE, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @linkmode_mod_bit(i32 %108, i32 %111, i32 %115)
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %119 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %127 = call i32 @phy_start_aneg(%struct.phy_device* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %96, %93, %66, %55, %32
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i64 @linkmode_empty(i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
