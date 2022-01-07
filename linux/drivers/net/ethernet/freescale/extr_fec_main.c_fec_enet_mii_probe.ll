; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.phy_device = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@fec_enet_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to connect to phy\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"no PHY, assuming direct connection to switch\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fixed-0\00", align 1
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@FEC_QUIRK_HAS_GBIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %12)
  store %struct.fec_enet_private* %13, %struct.fec_enet_private** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %14 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %19 = add nsw i32 %18, 3
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %23 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %26 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %35 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %30, i64 %33, i32* @fec_enet_adjust_link, i32 0, i32 %36)
  store %struct.phy_device* %37, %struct.phy_device** %5, align 8
  %38 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %39 = icmp ne %struct.phy_device* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %128

45:                                               ; preds = %29
  br label %94

46:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PHY_MAX_ADDR, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %53 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @mdiobus_is_registered_device(%struct.TYPE_2__* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %72

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %10, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %72

64:                                               ; preds = %59
  %65 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %66 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %71 = call i32 @strlcpy(i8* %17, i8* %69, i32 %70)
  br label %75

72:                                               ; preds = %63, %58
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %47

75:                                               ; preds = %64, %47
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @PHY_MAX_ADDR, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netdev_info(%struct.net_device* %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %83 = call i32 @strlcpy(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = trunc i64 %20 to i32
  %86 = load i8*, i8** @PHY_ID_FMT, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @snprintf(i8* %21, i32 %85, i8* %86, i8* %17, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %91 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.phy_device* @phy_connect(%struct.net_device* %89, i8* %21, i32* @fec_enet_adjust_link, i32 %92)
  store %struct.phy_device* %93, %struct.phy_device** %5, align 8
  br label %94

94:                                               ; preds = %84, %45
  %95 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %96 = call i64 @IS_ERR(%struct.phy_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @netdev_err(%struct.net_device* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %102 = call i32 @PTR_ERR(%struct.phy_device* %101)
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %128

103:                                              ; preds = %94
  %104 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %105 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FEC_QUIRK_HAS_GBIT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %112 = call i32 @phy_set_max_speed(%struct.phy_device* %111, i32 1000)
  %113 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %114 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %115 = call i32 @phy_remove_link_mode(%struct.phy_device* %113, i32 %114)
  %116 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %117 = call i32 @phy_support_sym_pause(%struct.phy_device* %116)
  br label %121

118:                                              ; preds = %103
  %119 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %120 = call i32 @phy_set_max_speed(%struct.phy_device* %119, i32 100)
  br label %121

121:                                              ; preds = %118, %110
  %122 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %123 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %125 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %127 = call i32 @phy_attached_info(%struct.phy_device* %126)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %128

128:                                              ; preds = %121, %98, %40
  %129 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i64, i32*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mdiobus_is_registered_device(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_remove_link_mode(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_sym_pause(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
