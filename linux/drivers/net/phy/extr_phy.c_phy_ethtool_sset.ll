; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_sset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_sset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ethtool_cmd = type { i64, i64, i64, i64, i32 }

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
define dso_local i32 @phy_ethtool_sset(%struct.phy_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca i64, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load i32, i32* @advertising, align 4
  %8 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %7)
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %2
  %23 = load i32, i32* @advertising, align 4
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %23, i64 %26)
  %28 = load i32, i32* @advertising, align 4
  %29 = load i32, i32* @advertising, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @linkmode_and(i32 %28, i32 %29, i32 %32)
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AUTONEG_ENABLE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AUTONEG_DISABLE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %132

48:                                               ; preds = %39, %22
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AUTONEG_ENABLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %132

62:                                               ; preds = %54, %48
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AUTONEG_DISABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %62
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @SPEED_1000, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @SPEED_100, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @SPEED_10, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %76, %72, %68
  %81 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DUPLEX_HALF, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DUPLEX_FULL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %76
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %132

95:                                               ; preds = %86, %80, %62
  %96 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %100 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @advertising, align 4
  %108 = call i32 @linkmode_copy(i32 %106, i32 %107)
  %109 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %110 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %111 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @AUTONEG_ENABLE, align 8
  %114 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @linkmode_mod_bit(i32 %109, i32 %112, i32 %118)
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %124 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %129 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %131 = call i32 @phy_start_aneg(%struct.phy_device* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %95, %92, %59, %45, %19
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i64) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
