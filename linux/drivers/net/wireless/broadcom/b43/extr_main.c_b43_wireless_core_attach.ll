; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_core_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32, %struct.TYPE_3__*, %struct.b43_wl* }
%struct.b43_phy = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.b43_wldev*, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.b43_wl = type { %struct.b43_wldev* }

@.str = private unnamed_addr constant [20 x i8] c"Bus powerup failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"5 GHz band is unsupported on this PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"b43 can't support any band on this device\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@b43_chip_reset = common dso_local global i32 0, align 4
@B43_BCMA_IOST_2G_PHY = common dso_local global i32 0, align 4
@B43_BCMA_IOST_5G_PHY = common dso_local global i32 0, align 4
@B43_TMSHIGH_HAVE_2GHZ_PHY = common dso_local global i32 0, align 4
@B43_TMSHIGH_HAVE_5GHZ_PHY = common dso_local global i32 0, align 4
@BCMA_IOST = common dso_local global i32 0, align 4
@SSB_TMSHIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_wireless_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_wireless_core_attach(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_wl*, align 8
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 3
  %12 = load %struct.b43_wl*, %struct.b43_wl** %11, align 8
  store %struct.b43_wl* %12, %struct.b43_wl** %4, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  store %struct.b43_phy* %14, %struct.b43_phy** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = call i32 @b43_bus_powerup(%struct.b43_wldev* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %21 = call i32 @b43err(%struct.b43_wl* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %127

22:                                               ; preds = %1
  %23 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %24 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %30 [
  ]

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @b43_wireless_core_reset(%struct.b43_wldev* %35, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = call i32 @b43_phy_versioning(%struct.b43_wldev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %132

46:                                               ; preds = %30
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = call i32 @b43_supported_bands(%struct.b43_wldev* %47, i32* %8, i32* %9)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %59 [
    i32 130, label %56
    i32 128, label %56
    i32 129, label %56
  ]

56:                                               ; preds = %51, %51, %51
  %57 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %58 = call i32 @b43warn(%struct.b43_wl* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %68 = call i32 @b43err(%struct.b43_wl* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %132

71:                                               ; preds = %63, %60
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = call i32 @b43_phy_allocate(%struct.b43_wldev* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %132

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %80 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @b43_wireless_core_reset(%struct.b43_wldev* %82, i32 %86)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = call i32 @b43_validate_chipaccess(%struct.b43_wldev* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %129

93:                                               ; preds = %77
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @b43_setup_bands(%struct.b43_wldev* %94, i32 %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %129

101:                                              ; preds = %93
  %102 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %103 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %102, i32 0, i32 0
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %103, align 8
  %105 = icmp ne %struct.b43_wldev* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %109 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %108, i32 0, i32 0
  store %struct.b43_wldev* %107, %struct.b43_wldev** %109, align 8
  br label %110

110:                                              ; preds = %106, %101
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %111, i32 0, i32 1
  %113 = load i32, i32* @b43_chip_reset, align 4
  %114 = call i32 @INIT_WORK(i32* %112, i32 %113)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %116 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %116, i32 0, i32 3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %119, align 8
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %122 = call i32 %120(%struct.b43_wldev* %121, i32 0)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = call i32 @b43_device_disable(%struct.b43_wldev* %123, i32 0)
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %125)
  br label %127

127:                                              ; preds = %110, %19
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %136

129:                                              ; preds = %100, %92
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %131 = call i32 @b43_phy_free(%struct.b43_wldev* %130)
  br label %132

132:                                              ; preds = %129, %76, %66, %45
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %134 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @b43_bus_powerup(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(%struct.b43_wl*, i8*) #1

declare dso_local i32 @b43_wireless_core_reset(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_versioning(%struct.b43_wldev*) #1

declare dso_local i32 @b43_supported_bands(%struct.b43_wldev*, i32*, i32*) #1

declare dso_local i32 @b43warn(%struct.b43_wl*, i8*) #1

declare dso_local i32 @b43_phy_allocate(%struct.b43_wldev*) #1

declare dso_local i32 @b43_validate_chipaccess(%struct.b43_wldev*) #1

declare dso_local i32 @b43_setup_bands(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @b43_device_disable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_bus_may_powerdown(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_free(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
