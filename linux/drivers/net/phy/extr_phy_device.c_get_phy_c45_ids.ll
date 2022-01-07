; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_get_phy_c45_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_get_phy_c45_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }
%struct.phy_c45_device_ids = type { i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32*, %struct.phy_c45_device_ids*)* @get_phy_c45_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phy_c45_ids(%struct.mii_bus* %0, i32 %1, i32* %2, %struct.phy_c45_device_ids* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.phy_c45_device_ids*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.phy_c45_device_ids* %3, %struct.phy_c45_device_ids** %9, align 8
  %15 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %9, align 8
  %16 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %9, align 8
  %20 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %19, i32 0, i32 1
  store i32* %20, i32** %14, align 8
  store i32 1, i32* %11, align 4
  br label %21

21:                                               ; preds = %66, %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %69

31:                                               ; preds = %29
  %32 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @get_phy_c45_devs_in_pkg(%struct.mii_bus* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %138

42:                                               ; preds = %31
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 536870911
  %46 = icmp eq i32 %45, 536870911
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @get_phy_c45_devs_in_pkg(%struct.mii_bus* %48, i32 %49, i32 0, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %138

57:                                               ; preds = %47
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 536870911
  %61 = icmp eq i32 %60, 536870911
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  store i32 -1, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %138

64:                                               ; preds = %57
  br label %69

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %21

69:                                               ; preds = %64, %29
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %133, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %70
  %75 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %9, align 8
  %76 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %133

83:                                               ; preds = %74
  %84 = load i32, i32* @MII_ADDR_C45, align 4
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %84, %86
  %88 = load i32, i32* @MII_PHYSID1, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @mdiobus_read(%struct.mii_bus* %90, i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %138

99:                                               ; preds = %83
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 16
  %102 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %9, align 8
  %103 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* @MII_ADDR_C45, align 4
  %109 = load i32, i32* %11, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = load i32, i32* @MII_PHYSID2, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %12, align 4
  %114 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @mdiobus_read(%struct.mii_bus* %114, i32 %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %99
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %138

123:                                              ; preds = %99
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %9, align 8
  %126 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %124
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %123, %82
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %70

136:                                              ; preds = %70
  %137 = load i32*, i32** %8, align 8
  store i32 0, i32* %137, align 4
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %120, %96, %62, %54, %39
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @get_phy_c45_devs_in_pkg(%struct.mii_bus*, i32, i32, i32*) #1

declare dso_local i32 @mdiobus_read(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
