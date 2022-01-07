; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ethtool_wolinfo = type { i64, i32, i32 }
%struct.ave_private = type { i32, i32, i32*, i32*, i32, %struct.phy_device*, i32, i32, i32 }
%struct.phy_device = type { i32 }

@ETHTOOL_GWOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't enable clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"can't deassert reset\0A\00", align 1
@SG_ETPINMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mdio node not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to register mdiobus\0A\00", align 1
@ave_phy_adjust_link = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo, align 8
  %5 = alloca %struct.ave_private*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %4, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %4, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %4, i32 0, i32 2
  %16 = load i32, i32* @ETHTOOL_GWOL, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.ave_private* @netdev_priv(%struct.net_device* %17)
  store %struct.ave_private* %18, %struct.ave_private** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %7, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %47, %1
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %29 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %34 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_prepare_enable(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %178

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %26

50:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %54 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %59 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @reset_control_deassert(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %163

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %77 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SG_ETPINMODE, align 4
  %80 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %81 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %84 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %82, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %2, align 4
  br label %194

91:                                               ; preds = %75
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @ave_global_reset(%struct.net_device* %92)
  %94 = load %struct.device_node*, %struct.device_node** %7, align 8
  %95 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %95, %struct.device_node** %8, align 8
  %96 = load %struct.device_node*, %struct.device_node** %8, align 8
  %97 = icmp ne %struct.device_node* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %163

103:                                              ; preds = %91
  %104 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %105 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.device_node*, %struct.device_node** %8, align 8
  %108 = call i32 @of_mdiobus_register(i32 %106, %struct.device_node* %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.device_node*, %struct.device_node** %8, align 8
  %110 = call i32 @of_node_put(%struct.device_node* %109)
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %163

116:                                              ; preds = %103
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = load %struct.device_node*, %struct.device_node** %7, align 8
  %119 = load i32, i32* @ave_phy_adjust_link, align 4
  %120 = call %struct.phy_device* @of_phy_get_and_connect(%struct.net_device* %117, %struct.device_node* %118, i32 %119)
  store %struct.phy_device* %120, %struct.phy_device** %9, align 8
  %121 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %122 = icmp ne %struct.phy_device* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %158

128:                                              ; preds = %116
  %129 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %130 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %131 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %130, i32 0, i32 5
  store %struct.phy_device* %129, %struct.phy_device** %131, align 8
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 @ave_ethtool_get_wol(%struct.net_device* %132, %struct.ethtool_wolinfo* %4)
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %4, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @device_set_wakeup_capable(%struct.TYPE_2__* %135, i32 %141)
  %143 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %4, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = call i32 @ave_ethtool_set_wol(%struct.net_device* %144, %struct.ethtool_wolinfo* %4)
  %146 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %147 = call i32 @phy_interface_is_rgmii(%struct.phy_device* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %128
  %150 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %151 = load i32, i32* @SPEED_100, align 4
  %152 = call i32 @phy_set_max_speed(%struct.phy_device* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %128
  %154 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %155 = call i32 @phy_support_asym_pause(%struct.phy_device* %154)
  %156 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %157 = call i32 @phy_attached_info(%struct.phy_device* %156)
  store i32 0, i32* %2, align 4
  br label %194

158:                                              ; preds = %123
  %159 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %160 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @mdiobus_unregister(i32 %161)
  br label %163

163:                                              ; preds = %158, %113, %98, %68
  br label %164

164:                                              ; preds = %168, %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %11, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %170 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @reset_control_assert(i32 %175)
  br label %164

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177, %43
  br label %179

179:                                              ; preds = %183, %178
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %10, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %179
  %184 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %185 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @clk_disable_unprepare(i32 %190)
  br label %179

192:                                              ; preds = %179
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %153, %89
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ave_global_reset(%struct.net_device*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_mdiobus_register(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.phy_device* @of_phy_get_and_connect(%struct.net_device*, %struct.device_node*, i32) #1

declare dso_local i32 @ave_ethtool_get_wol(%struct.net_device*, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ave_ethtool_set_wol(%struct.net_device*, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
