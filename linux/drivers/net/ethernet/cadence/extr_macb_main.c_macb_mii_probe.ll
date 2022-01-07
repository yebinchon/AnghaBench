; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macb = type { i32, i32, i64, i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@macb_handle_link_change = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@MACB_CAPS_GIGABIT_MODE_AVAILABLE = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@MACB_CAPS_NO_GIGABIT_HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macb_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macb*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.macb* @netdev_priv(%struct.net_device* %9)
  store %struct.macb* %10, %struct.macb** %4, align 8
  %11 = load %struct.macb*, %struct.macb** %4, align 8
  %12 = getelementptr inbounds %struct.macb, %struct.macb* %11, i32 0, i32 7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i64 @of_phy_is_fixed_link(%struct.device_node* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i64 @of_node_get(%struct.device_node* %24)
  %26 = load %struct.macb*, %struct.macb** %4, align 8
  %27 = getelementptr inbounds %struct.macb, %struct.macb* %26, i32 0, i32 6
  store i64 %25, i64* %27, align 8
  br label %78

28:                                               ; preds = %19
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i64 @of_parse_phandle(%struct.device_node* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = load %struct.macb*, %struct.macb** %4, align 8
  %32 = getelementptr inbounds %struct.macb, %struct.macb* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load %struct.macb*, %struct.macb** %4, align 8
  %34 = getelementptr inbounds %struct.macb, %struct.macb* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %77, label %37

37:                                               ; preds = %28
  %38 = load %struct.macb*, %struct.macb** %4, align 8
  %39 = getelementptr inbounds %struct.macb, %struct.macb* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.phy_device* @phy_find_first(i32 %40)
  %42 = icmp ne %struct.phy_device* %41, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PHY_MAX_ADDR, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load %struct.macb*, %struct.macb** %4, align 8
  %50 = getelementptr inbounds %struct.macb, %struct.macb* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.phy_device* @mdiobus_scan(i32 %51, i32 %52)
  store %struct.phy_device* %53, %struct.phy_device** %5, align 8
  %54 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %55 = call i64 @IS_ERR(%struct.phy_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %59 = call i32 @PTR_ERR(%struct.phy_device* %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %65 = call i32 @PTR_ERR(%struct.phy_device* %64)
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %44

70:                                               ; preds = %63, %44
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %162

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %37, %28
  br label %78

78:                                               ; preds = %77, %23
  br label %79

79:                                               ; preds = %78, %1
  %80 = load %struct.macb*, %struct.macb** %4, align 8
  %81 = getelementptr inbounds %struct.macb, %struct.macb* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = load %struct.macb*, %struct.macb** %4, align 8
  %87 = getelementptr inbounds %struct.macb, %struct.macb* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.macb*, %struct.macb** %4, align 8
  %90 = getelementptr inbounds %struct.macb, %struct.macb* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %85, i64 %88, i32* @macb_handle_link_change, i32 0, i32 %91)
  store %struct.phy_device* %92, %struct.phy_device** %5, align 8
  %93 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %94 = icmp ne %struct.phy_device* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %162

98:                                               ; preds = %84
  br label %125

99:                                               ; preds = %79
  %100 = load %struct.macb*, %struct.macb** %4, align 8
  %101 = getelementptr inbounds %struct.macb, %struct.macb* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.phy_device* @phy_find_first(i32 %102)
  store %struct.phy_device* %103, %struct.phy_device** %5, align 8
  %104 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %105 = icmp ne %struct.phy_device* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = call i32 @netdev_err(%struct.net_device* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ENXIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %162

111:                                              ; preds = %99
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %114 = load %struct.macb*, %struct.macb** %4, align 8
  %115 = getelementptr inbounds %struct.macb, %struct.macb* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @phy_connect_direct(%struct.net_device* %112, %struct.phy_device* %113, i32* @macb_handle_link_change, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = call i32 @netdev_err(%struct.net_device* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %162

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %98
  %126 = load %struct.macb*, %struct.macb** %4, align 8
  %127 = call i64 @macb_is_gem(%struct.macb* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.macb*, %struct.macb** %4, align 8
  %131 = getelementptr inbounds %struct.macb, %struct.macb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MACB_CAPS_GIGABIT_MODE_AVAILABLE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %138 = load i32, i32* @SPEED_1000, align 4
  %139 = call i32 @phy_set_max_speed(%struct.phy_device* %137, i32 %138)
  br label %144

140:                                              ; preds = %129, %125
  %141 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %142 = load i32, i32* @SPEED_100, align 4
  %143 = call i32 @phy_set_max_speed(%struct.phy_device* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %136
  %145 = load %struct.macb*, %struct.macb** %4, align 8
  %146 = getelementptr inbounds %struct.macb, %struct.macb* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @MACB_CAPS_NO_GIGABIT_HALF, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %153 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %154 = call i32 @phy_remove_link_mode(%struct.phy_device* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.macb*, %struct.macb** %4, align 8
  %157 = getelementptr inbounds %struct.macb, %struct.macb* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = load %struct.macb*, %struct.macb** %4, align 8
  %159 = getelementptr inbounds %struct.macb, %struct.macb* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load %struct.macb*, %struct.macb** %4, align 8
  %161 = getelementptr inbounds %struct.macb, %struct.macb* %160, i32 0, i32 1
  store i32 -1, i32* %161, align 4
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %155, %120, %106, %95, %73
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local %struct.phy_device* @mdiobus_scan(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i64, i32*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32*, i32) #1

declare dso_local i64 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_remove_link_mode(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
