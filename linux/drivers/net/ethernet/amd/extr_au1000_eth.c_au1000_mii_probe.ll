; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { i32, i32, i32, i64, i64, i32, i64, i32, i64 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"using PHY-less setup\0A\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c": no PHY found on MAC1, let's see if it's attached to MAC0...\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@au1000_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1000_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.au1000_private*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %8)
  store %struct.au1000_private* %9, %struct.au1000_private** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %10 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %11 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %16 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %21 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %29 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %34 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %37 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @mdiobus_get_phy(i32 %35, i32 %38)
  %40 = bitcast i8* %39 to %struct.phy_device*
  store %struct.phy_device* %40, %struct.phy_device** %5, align 8
  br label %44

41:                                               ; preds = %24
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netdev_info(%struct.net_device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %32
  store i32 0, i32* %2, align 4
  br label %160

45:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PHY_MAX_ADDR, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %52 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i8* @mdiobus_get_phy(i32 %53, i32 %54)
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %59 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @mdiobus_get_phy(i32 %60, i32 %61)
  %63 = bitcast i8* %62 to %struct.phy_device*
  store %struct.phy_device* %63, %struct.phy_device** %5, align 8
  %64 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %65 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  br label %74

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %46

74:                                               ; preds = %68, %46
  %75 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %76 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %74
  %80 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %81 = icmp ne %struct.phy_device* %80, null
  br i1 %81, label %123, label %82

82:                                               ; preds = %79
  %83 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %84 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %123

87:                                               ; preds = %82
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %119, %87
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @PHY_MAX_ADDR, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %97 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i8* @mdiobus_get_phy(i32 %98, i32 %99)
  %101 = bitcast i8* %100 to %struct.phy_device*
  store %struct.phy_device* %101, %struct.phy_device** %7, align 8
  %102 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %103 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %122

107:                                              ; preds = %95
  %108 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %109 = icmp ne %struct.phy_device* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %119

111:                                              ; preds = %107
  %112 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %113 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %119

117:                                              ; preds = %111
  %118 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  store %struct.phy_device* %118, %struct.phy_device** %5, align 8
  br label %122

119:                                              ; preds = %116, %110
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %91

122:                                              ; preds = %117, %106, %91
  br label %123

123:                                              ; preds = %122, %82, %79
  br label %124

124:                                              ; preds = %123, %74
  %125 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %126 = icmp ne %struct.phy_device* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = call i32 @netdev_err(%struct.net_device* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

130:                                              ; preds = %124
  %131 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %132 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @BUG_ON(i32 %133)
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %137 = call i32 @phydev_name(%struct.phy_device* %136)
  %138 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %139 = call %struct.phy_device* @phy_connect(%struct.net_device* %135, i32 %137, i32* @au1000_adjust_link, i32 %138)
  store %struct.phy_device* %139, %struct.phy_device** %5, align 8
  %140 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %141 = call i64 @IS_ERR(%struct.phy_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %130
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = call i32 @netdev_err(%struct.net_device* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %147 = call i32 @PTR_ERR(%struct.phy_device* %146)
  store i32 %147, i32* %2, align 4
  br label %160

148:                                              ; preds = %130
  %149 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %150 = load i32, i32* @SPEED_100, align 4
  %151 = call i32 @phy_set_max_speed(%struct.phy_device* %149, i32 %150)
  %152 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %153 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %155 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %157 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %156, i32 0, i32 2
  store i32 -1, i32* %157, align 8
  %158 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %159 = call i32 @phy_attached_info(%struct.phy_device* %158)
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %148, %143, %127, %44
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
