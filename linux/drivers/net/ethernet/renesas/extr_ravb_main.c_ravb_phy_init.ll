; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ravb_private = type { i32, i64, i64 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@ravb_adjust_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to connect PHY\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@r8a7795es10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to limit PHY to 100Mbit/s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"limited PHY to 100Mbit/s\0A\00", align 1
@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Full_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Asym_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_phy_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ravb_private*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %15)
  store %struct.ravb_private* %16, %struct.ravb_private** %5, align 8
  %17 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %18 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %20 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %22, %struct.device_node** %7, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i64 @of_phy_is_fixed_link(%struct.device_node* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @of_phy_register_fixed_link(%struct.device_node* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %106

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call %struct.device_node* @of_node_get(%struct.device_node* %38)
  store %struct.device_node* %39, %struct.device_node** %7, align 8
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.device_node*, %struct.device_node** %7, align 8
  %43 = load i32, i32* @ravb_adjust_link, align 4
  %44 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %45 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %41, %struct.device_node* %42, i32 %43, i32 0, i32 %46)
  store %struct.phy_device* %47, %struct.phy_device** %6, align 8
  %48 = load %struct.device_node*, %struct.device_node** %7, align 8
  %49 = call i32 @of_node_put(%struct.device_node* %48)
  %50 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %51 = icmp ne %struct.phy_device* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %40
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @netdev_err(%struct.net_device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %97

57:                                               ; preds = %40
  %58 = load i32, i32* @r8a7795es10, align 4
  %59 = call i64 @soc_device_match(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %63 = load i32, i32* @SPEED_100, align 4
  %64 = call i32 @phy_set_max_speed(%struct.phy_device* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @netdev_err(%struct.net_device* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %94

70:                                               ; preds = %61
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @netdev_info(%struct.net_device* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %57
  %74 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %75 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %76 = call i32 @phy_remove_link_mode(%struct.phy_device* %74, i32 %75)
  %77 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %78 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Full_BIT, align 4
  %79 = call i32 @phy_remove_link_mode(%struct.phy_device* %77, i32 %78)
  %80 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %81 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %82 = call i32 @phy_remove_link_mode(%struct.phy_device* %80, i32 %81)
  %83 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %84 = load i32, i32* @ETHTOOL_LINK_MODE_Asym_Pause_BIT, align 4
  %85 = call i32 @phy_remove_link_mode(%struct.phy_device* %83, i32 %84)
  %86 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %87 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %88 = call i32 @phy_remove_link_mode(%struct.phy_device* %86, i32 %87)
  %89 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %90 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %91 = call i32 @phy_remove_link_mode(%struct.phy_device* %89, i32 %90)
  %92 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %93 = call i32 @phy_attached_info(%struct.phy_device* %92)
  store i32 0, i32* %2, align 4
  br label %106

94:                                               ; preds = %67
  %95 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %96 = call i32 @phy_disconnect(%struct.phy_device* %95)
  br label %97

97:                                               ; preds = %94, %52
  %98 = load %struct.device_node*, %struct.device_node** %4, align 8
  %99 = call i64 @of_phy_is_fixed_link(%struct.device_node* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.device_node*, %struct.device_node** %4, align 8
  %103 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %102)
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %73, %34
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @soc_device_match(i32) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_remove_link_mode(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
